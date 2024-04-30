using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;


namespace Database
{
    public partial class UserForm : Form
    {   //рядок для підключення БД
        public static readonly string connectionString = "server=localhost;database=sofiia_20variant;uid=user_role;pwd=qwerty1234567;";
        //клас виконує з'єднання з БД та запит до неї
        public static readonly MySqlConnection database = new MySqlConnection(connectionString);
        //для зв'язку БД та додатку. Дата Адаптер дозволяє нам передати дані з бази даних до додатку
        private MySqlDataAdapter dataAdapter = new MySqlDataAdapter();

        public UserForm()
        {
            InitializeComponent();
            //повертаємо розміри для форми
            if (Properties.Settings.Default.FormSize != null)
            { Size = Properties.Settings.Default.FormSize; }
            //зв'язує dataGridView з bindingSource і завантажує список таблиц из БД в ComboBox
            GetData("show tables;", bindingSourceMySQL, dataGridview);
            FillTablesComboBox();
        }
        
        // Метод для загрузки списка таблиц из БД в ComboBox
        private void FillTablesComboBox()
        {
            try
            {
                // Открываем соединение с БД, если оно еще не открыто
                if (database.State != ConnectionState.Open)
                    database.Open();
                // Получаем схему таблиц из БД
                DataTable dt = database.GetSchema("Tables");
                // Заполняем ComboBox именами таблиц
                foreach (DataRow row in dt.Rows)
                {
                    string tableName = row["TABLE_NAME"].ToString();
                    comboBoxTables.Items.Add(tableName);
                }
            }
            catch (Exception ex)
            {
                // Обработка ошибки при получении списка таблиц
                MessageBox.Show("Error fetching tables: " + ex.Message);
            }
            finally
            {
                // Закрываем соединение с БД
                if (database.State == ConnectionState.Open)
                    database.Close();
            }
        }

        // Обработчик события изменения выбранной таблицы в ComboBox
        private void comboBoxTables_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBoxTables.SelectedItem != null)
            {
                // Получаем имя выбранной таблицы
                string selectedTable = comboBoxTables.SelectedItem.ToString();
                // Загружаем данные выбранной таблицы в DataGridView
                GetData("SELECT * FROM " + selectedTable, bindingSourceMySQL, dataGridview);
            }
            else
            {
                // Предупреждение о необходимости выбора таблицы
                MessageBox.Show("Please select a table.");
            }
        }

        // Метод для получения данных из БД и отображения их в DataGridView
        private void GetData(string selectCommand, BindingSource bindingSource, DataGridView dataGridView)
        {
            try
            {
                //Обработка открытия
                if (database.State != ConnectionState.Open)
                    database.Open();
                // Устанавливаем команду выборки данных и подключение к БД
                dataAdapter.SelectCommand = new MySqlCommand(selectCommand, database);
                // Создаем таблицу для хранения данных
                DataTable table = new DataTable();
                // Заполняем таблицу данными из БД
                dataAdapter.Fill(table);
                // Привязываем таблицу к BindingSource
                bindingSource.DataSource = table;
                // Отображаем данные в DataGridView и автоматически подстраиваем ширину столбцов
                dataGridView.DataSource = bindingSource;
                dataGridView.AutoResizeColumns(DataGridViewAutoSizeColumnsMode.AllCellsExceptHeader);
            }
            catch (Exception ex)
            {
                // Обработка ошибки при выполнении SQL-запроса
                MessageBox.Show("Error fetching data: " + ex.Message);
            }
            finally
            {
                //Обработка закрытия
                if (database.State == ConnectionState.Open)
                    database.Close();
            }
        }
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Закрытие
            Close();
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Повідомлення за кліком на кнопку Про програму
            MessageBox.Show("Це клієнт для БД. \n Програма створена студенткою Гончарова С.А, групи 535-В","Про програму", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void button_sql_Click(object sender, EventArgs e)
        {
            //Обработчик события по клику на SQL кнопку, где берет текст SQL запроса поля текст и отображает в dataGridview
            GetData(textBox_sql.Text, bindingSourceMySQL, dataGridview);
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            //Зберігає розміщення на екрані та розмір після закриття програми
            Properties.Settings.Default.FormSize = Size;
            Properties.Settings.Default.Save();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            //Зберігає розміщення на екрані та розмір після закриття програми
            Properties.Settings.Default.FormSize = Size;
            Properties.Settings.Default.Save();
        }

        private void textBox_sql_KeyDown(object sender, KeyEventArgs e)
        {
            //Для того аби спрацював Enter у самому тексту, без кнопки SQL
            if (e.KeyCode == Keys.Enter) { button_sql_Click(sender, e); }
        }

        private void toolStripButtonSave_Click(object sender, EventArgs e)
        {
            //ДатаАдаптер вносить зміни до БД
            dataAdapter.Update((DataTable)bindingSourceMySQL.DataSource);
        }

        private void dataGridview_ColumnHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (bindingSourceMySQL.DataSource != null)
            {
                DataGridViewColumn clickedColumn = dataGridview.Columns[e.ColumnIndex];
                string columnName = clickedColumn.DataPropertyName;
                string sortOrder = "ASC"; // за замовчуванням сортувати за зростанням

                if (clickedColumn.HeaderCell.SortGlyphDirection == SortOrder.Ascending)
                {
                    clickedColumn.HeaderCell.SortGlyphDirection = SortOrder.Descending;
                    sortOrder = "DESC";
                }
                else
                {
                    clickedColumn.HeaderCell.SortGlyphDirection = SortOrder.Ascending;
                }

                string selectedTable = comboBoxTables.SelectedItem.ToString();
                string selectCommand = $"SELECT * FROM {selectedTable} ORDER BY {columnName} {sortOrder}";

                GetData(selectCommand, bindingSourceMySQL, dataGridview);
            }
        }
    }
}
