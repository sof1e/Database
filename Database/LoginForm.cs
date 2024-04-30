using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Common;
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
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        if (txtUsername.Text == "user_role" && txtPassword.Text == "qwerty1234567")
                        {
                            UserForm userForm = new UserForm();
                            userForm.Show();
                            this.Hide(); // Скрываем форму входа
                        }
                        else if (txtUsername.Text == "admin_role" && txtPassword.Text == "qwerty1234567")
                        {
                            MainForm mainForm = new MainForm();
                            mainForm.Show();
                            this.Hide(); // Скрываем форму входа
                        }
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