using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using odev.Database;




namespace odev
{
    public partial class Form1 : Form
    {
        test2Entities2 db = new test2Entities2();
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Database.kullanici sorgu = (from c in db.kullanici
                        where c.kullanici_adi == textBox1.Text && c.kullanici_sifre == textBox2.Text
                        select c).FirstOrDefault();


            if (sorgu!=null && sorgu.aktif.ToString()=="True")
            {
                MessageBox.Show("Giriş Başarılı ");
                
                AnaForm anaForm = new AnaForm();
                session.kullaniciad = sorgu.kullanici_adi;
                session.Yetki = sorgu.yetki;
                session.aktif = sorgu.aktif.ToString();
                session.kullaniciid = sorgu.kullanici_id;
                
                if (sorgu.yetki== "admin")
                {
                    anaForm.Show(); 
                }
                else if (sorgu.yetki== "kullanıcı")
                {
                    kullanici k = new kullanici();
                    k.Show();
                }

              
                this.Hide();


            }
            
            else
            {
                MessageBox.Show("Giriş Başarısız Kulanıcı Adınızı veya şifrenizi kontrol ediniz Yada Hesabınız Admin tarafından devre dışı bırakıldı");
            }
        }

        private void label3_Click(object sender, EventArgs e)
        {
            sifreni_unutum sfr = new sifreni_unutum();
            sfr.Show();
           
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
