using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using odev.Database;
using System.Windows.Forms;

namespace odev
{
    public partial class AnaForm : Form
    {
        public AnaForm()
        {
            InitializeComponent();
        }
        test2Entities2 db = new test2Entities2();
        private void AnaForm_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'test2DataSet.kullanici' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kullaniciTableAdapter.Fill(this.test2DataSet.kullanici);
            // TODO: Bu kod satırı 'test2DataSet.kullanici' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.

            label1.Text = session.kullaniciad + "-" + session.Yetki;
            this.FormBorderStyle = FormBorderStyle.FixedSingle;
            timer1.Start();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
        Form1 fmr1 = new Form1();
        private void button1_Click(object sender, EventArgs e)
        {


            session.kullaniciad = null;
            session.Yetki = null;
            this.Hide();
            fmr1.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            kullanici_guncelle klncg = new kullanici_guncelle();
            klncg.Show();

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                //gets a collection that contains all the rows
                DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                //populate the textbox from specific value of the coordinates of column and row.
                label3.Text = row.Cells[0].Value.ToString();



            }
        }
        
        private void button4_Click(object sender, EventArgs e)
        {
            var blog = db.kullanici.Find(int.Parse(label3.Text));
            db.kullanici.Remove(blog);
            db.SaveChanges();
            MessageBox.Show("Kulanıc Başarıylan Silindi ");

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (session.kullaniciad == null)
            {
                this.Hide();
                fmr1.Show();
                timer1.Stop();
            }
            if (session.aktif == "False")
            {
                this.Hide();
                fmr1.Show();
                MessageBox.Show("Hesanınız Aktif Değildir admin ile iletişime geçiniz");
                timer1.Stop();
            }


        }

        private void button2_Click(object sender, EventArgs e)
        {
            kulaniciekle k = new kulaniciekle();
            k.Show();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            string searchValue = textBox1.Text;

            dataGridView1.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            try
            {
                foreach (DataGridViewRow row in dataGridView1.Rows)
                {
                    try
                    {
                        if (row.Cells[1].Value.ToString().Equals(searchValue))
                        {
                            row.Selected = true;
                            break;
                        }
                    }
                    catch (Exception)
                    {

                        MessageBox.Show("Aradığınız İsim Bulunamadı");
                    }

                }
            }
            catch (Exception exc)
            {
                MessageBox.Show(exc.Message);
            }
        }



        private void button5_Click(object sender, EventArgs e)
        {
            this.kullaniciTableAdapter.Fill(this.test2DataSet.kullanici);

        }

        private void button7_Click(object sender, EventArgs e)
        {
            katagori_ekle ktgr = new katagori_ekle();
            ktgr.Show();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            Soru_ekle sorekle = new Soru_ekle();
            sorekle.Show();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            sınav_olustur snvolustur = new sınav_olustur();
            snvolustur.Show();
        }
    }
}
