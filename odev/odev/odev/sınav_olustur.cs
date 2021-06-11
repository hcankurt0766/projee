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
    public partial class sınav_olustur : Form
    {
        test2Entities2 db = new test2Entities2();
        public sınav_olustur()
        {
            InitializeComponent();
        }

        private void sınav_olustur_Load(object sender, EventArgs e)
        {
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            // TODO: Bu kod satırı 'test2DataSet15.alt_kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            // TODO: Bu kod satırı 'test2DataSet14.kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.alt_kategoriTableAdapter.Fill(this.test2DataSet15.alt_kategori);
        }

        private void comboBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedValueChanged(object sender, EventArgs e)
        {

        }

        private void timer1_Tick(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

            string s = comboBox1.Text;

            var veri = (from x in db.soru
                        where x.alt_kategori.alt_kategori_ad == s
                        select new
                        {
                            x.soru_ad,
                            x.soru_id,
                            x.alt_kategori.alt_kategori_id

                        }

                    ).ToList();
            dataGridView1.DataSource = veri;
        }
        int soruid,altkatagoriid;
        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                //gets a collection that contains all the rows
                DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                //populate the textbox from specific value of the coordinates of column and row.
                textBox1.Text = row.Cells[0].Value.ToString();
                soruid= int.Parse(row.Cells[1].Value.ToString());
                altkatagoriid= int.Parse(row.Cells[2].Value.ToString());


            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            
        }
        List<int> listsoruid = new List<int>();
        List<int> listaltkatagoriid = new List<int>();

        private void button3_Click_1(object sender, EventArgs e)
        {
            sinav_tablo stablo = new sinav_tablo();


            stablo.Sınav_ad = textBox2.Text;


            foreach (var x in listaltkatagoriid)
            {
                stablo.alt_kategori_id = x;
                db.sinav_tablo.Add(stablo);
                db.SaveChanges();
            }
            foreach (var y in listsoruid)
            {
                stablo.soru_id = y;
                db.sinav_tablo.Add(stablo);
                db.SaveChanges();
            }
            MessageBox.Show("Sorular Başarılı bir şekilde eklendi ");
        }

        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Add(textBox1.Text);
            listsoruid.Add(soruid);
            listaltkatagoriid.Add(altkatagoriid);
            MessageBox.Show("Soru Başarı ile eklendi");
        }
    }
}
