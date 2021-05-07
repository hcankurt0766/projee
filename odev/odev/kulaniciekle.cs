using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using odev.Database;
using System.Windows.Forms;

namespace odev
{
    public partial class kulaniciekle : Form
    {
        public kulaniciekle()
        {
            InitializeComponent();
        }
        test2Entities1 db = new test2Entities1();
        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
 
        private void kulaniciekle_Load(object sender, EventArgs e)
        {
            groupBox3.Visible = false;
        }

        int onay;

        private void button1_Click(object sender, EventArgs e)
        {
            sifre_onay(textBox4.Text);
            timer1.Start();
        }
        public void sifre_onay(string x)
        {
            Random rnd = new Random();
            MailMessage mesajım = new MailMessage();
            SmtpClient istemci = new SmtpClient();
            istemci.Credentials = new System.Net.NetworkCredential("hcandeneme@gmail.com", "123123123deneme");
            istemci.Port = 587;
            istemci.Host = "smtp.gmail.com";
            istemci.EnableSsl = true;
            try
            {
                mesajım.To.Add(x);
                mesajım.From = new MailAddress("hcandeneme@gmail.com");
                mesajım.Subject = "Onay kodu ";
                onay = rnd.Next(1000, 9999);
                mesajım.Body = onay.ToString();
                istemci.Send(mesajım);
                MessageBox.Show(" Onay Kodu Gönderilmiştir  ");
                groupBox3.Visible = true;
                MessageBox.Show("Hesabınıza gönderilen Onay kodunu giriniz");
            }
            catch (Exception)
            {
                MessageBox.Show("E posta bulunamıyor veya geçersiz");
                saniye = 0;
            }
            
           
        }
    private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (onay == int.Parse(textBox3.Text))
                {

                    kullanici k = new kullanici();
                    k.kullanici_adi = textBox1.Text;

                    if (textBox2.Text == textBox5.Text)
                    {
                        k.kullanici_sifre = textBox5.Text;
                    }
                    else
                    {
                        MessageBox.Show("Şifreler Aynı Değil");
                    }

                    k.kullanici_mail = textBox4.Text;

                    if (radioButton1.Checked == true)
                    {
                        k.aktif = true;
                    }
                    else if (radioButton2.Checked == true)
                    {
                        k.aktif = false;
                    }
                    k.yetki = comboBox1.Text;

                    db.kullanici.Add(k);
                    db.SaveChanges();
                    MessageBox.Show("Kayıt Yapılmıştır ");

                    groupBox3.Visible = false;

                    saniye = 0;
                    süre = false;
                }
                else
                {
                    MessageBox.Show("e posta onay Kodu aynı değil lütfen tekrar deneyiniz ");
                }
            }
            catch (Exception)
            {

                MessageBox.Show(" Onay Kodunu Kontrol ediniz ");
            }
  
        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }
        int saniye;
        bool süre = false;
        private void timer1_Tick(object sender, EventArgs e)
        {
            saniye++;
            label9.Text = saniye.ToString()+" sn";
            
            if (saniye==120)
            {
                süre = true;
                timer1.Stop();
            }
            if (süre == true)
            {
                MessageBox.Show("Süre Dolmuştur lütfen yeniden deneyiniz");
                groupBox3.Visible = false;
                saniye = 0;
            }

        }
    }
}
