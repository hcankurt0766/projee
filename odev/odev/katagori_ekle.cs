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
    public partial class katagori_ekle : Form
    {
        public katagori_ekle()
        {
            InitializeComponent();
        }
        test2Entities2 db = new test2Entities2();
        private void katagori_ekle_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'test2DataSet7.kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kategoriTableAdapter.Fill(this.test2DataSet7.kategori);
            // TODO: Bu kod satırı 'test2DataSet6.alt_kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.alt_kategoriTableAdapter1.Fill(this.test2DataSet6.alt_kategori);
            // TODO: Bu kod satırı 'test2DataSet3.alt_kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            // TODO: Bu kod satırı 'test2DataSet2.kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            var veri = (from x in db.alt_kategori
                        select new
                        {
                            x.alt_kategori_ad,
                            x.kategori.kategori_ad
                        }

                        ).ToList();




            dataGridView1.DataSource = veri;

            
            
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            kategori k = new kategori();

            k.kategori_ad = textBox1.Text;

            if (radioButton1.Checked)
            {
                k.aktif = true;
            }
            else
            {
                k.aktif = false;
            }

            db.kategori.Add(k);
            db.SaveChanges();

            // TODO: Bu kod satırı 'test2DataSet7.kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kategoriTableAdapter.Fill(this.test2DataSet7.kategori);
            // TODO: Bu kod satırı 'test2DataSet6.alt_kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.alt_kategoriTableAdapter1.Fill(this.test2DataSet6.alt_kategori);
            MessageBox.Show("Katagori Eklenmiştir");


        }

        private void button2_Click(object sender, EventArgs e)
        {
            alt_kategori alt = new alt_kategori();
            alt.kategori_id = int.Parse(comboBox1.SelectedValue.ToString());
            alt.alt_kategori_ad = textBox2.Text;
            db.alt_kategori.Add(alt);
            db.SaveChanges();
            MessageBox.Show("Alt Katagori Başarıylan eklenmiştir ");
            var veri = (from x in db.alt_kategori
                        select new
                        {
                            x.alt_kategori_ad,
                            x.kategori.kategori_ad
                        }

                        ).ToList();




            dataGridView1.DataSource = veri;
        }

        

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
