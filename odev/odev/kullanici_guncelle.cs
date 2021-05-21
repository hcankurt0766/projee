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
    public partial class kullanici_guncelle : Form
    {
        public kullanici_guncelle()
        {
            InitializeComponent();
        }
        test2Entities2 db = new test2Entities2();
        private void kullanici_guncelle_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'test2DataSet4.kullanici' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kullaniciTableAdapter.Fill(this.test2DataSet4.kullanici);
            // TODO: Bu kod satırı 'test2DataSet1.kullanici' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var deger = db.kullanici.Find(int.Parse( id.Text));
            deger.kullanici_adi = kad.Text;
            deger.kullanici_sifre = sifre.Text;
            deger.kullanici_mail = e_posta.Text;

                
            if (radioButton1.Checked==true)
            {
                deger.aktif = true;
            }
            else
            {
                deger.aktif = false;
            }

            deger.yetki = comboBox1.Text;

            db.SaveChanges();
            this.kullaniciTableAdapter.Fill(this.test2DataSet4.kullanici);

            MessageBox.Show("Başarıylan güncelemiştir ");
        }
        

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            String aktif;

            if (e.RowIndex >= 0)
            {
                //gets a collection that contains all the rows
                DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                //populate the textbox from specific value of the coordinates of column and row.
                id.Text = row.Cells[0].Value.ToString();
                kad.Text = row.Cells[1].Value.ToString();
                sifre.Text = row.Cells[3].Value.ToString();
                e_posta.Text = row.Cells[2].Value.ToString();
                aktif = row.Cells[4].Value.ToString();
                if (aktif=="True")
                {
                    radioButton1.Checked = true;
                    radioButton2.Checked = false;
                }
                else
                {
                    radioButton2.Checked = true;
                    radioButton1.Checked = false;
                }
              
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
