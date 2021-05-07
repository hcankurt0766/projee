using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using odev.Database;
using System.Windows.Forms;

namespace odev
{
    public partial class sifreni_unutum : Form
    {
        public sifreni_unutum()
        {
            InitializeComponent();
        }
        test2Entities1 db = new test2Entities1();

        private void button1_Click(object sender, EventArgs e)
        {
            kullanici sorgu = (from c in db.kullanici
                        where c.kullanici_mail == textBox1.Text
                        select c).FirstOrDefault();


            if (sorgu != null)
            {
                MailMessage mesajım = new MailMessage();
                SmtpClient istemci = new SmtpClient();
                istemci.Credentials = new System.Net.NetworkCredential("hcandeneme@gmail.com", "123123123deneme");
                istemci.Port = 587;
                istemci.Host = "smtp.gmail.com";
                istemci.EnableSsl = true;

                mesajım.To.Add(textBox1.Text);
                mesajım.From = new MailAddress("hcandeneme@gmail.com");
                mesajım.Subject = "Şifre Öğrenme";
                mesajım.Body = sorgu.kullanici_sifre;
                istemci.Send(mesajım);
                MessageBox.Show(" E-postanıza Şifreniz Gönderildi ");

            }
            else
            {
                MessageBox.Show("E-posta Hatalı ");
            }
        }

        private void sifreni_unutum_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
        }
    }
}
