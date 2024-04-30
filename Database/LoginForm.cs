using MySql.Data.MySqlClient;
using System;
using System.Data;
using System.Windows.Forms;

namespace Database
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            // Строка подключения к базе данных
            string connectionString = "server=localhost;port=3306;database=sofiia_20variant;uid=root;pwd=qwerty1234567";

            // Создание подключения к базе данных
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                // Создание команды SQL для выборки данных
                string query = "SELECT COUNT(*) FROM users WHERE username=@username AND password=@password";
                MySqlCommand cmd = new MySqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

                // Открытие подключения и выполнение команды SQL
                try
                {
                    connection.Open();
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        // Если пользователь найден, открываем главную форму
                        MainForm mainForm = new MainForm();
                        mainForm.Show();
                        this.Hide(); // Скрываем форму входа
                    }
                    else
                    {
                        MessageBox.Show("Неправильное имя пользователя или пароль.");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка базы данных: " + ex.Message);
                }
                finally
                {
                    connection.Close(); // Закрытие подключения
                }
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}