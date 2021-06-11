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
    public partial class Soru_ekle : Form
    {
        test2Entities2 db = new test2Entities2();
        public Soru_ekle()
        {
            InitializeComponent();
        }

        private void Soru_ekle_Load(object sender, EventArgs e)
        {
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            // TODO: Bu kod satırı 'test2DataSet13.soru' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.soruTableAdapter1.Fill(this.test2DataSet13.soru);
            // TODO: Bu kod satırı 'test2DataSet10.soru' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.soruTableAdapter.Fill(this.test2DataSet10.soru);
            // TODO: Bu kod satırı 'test2DataSet9.alt_kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.alt_kategoriTableAdapter1.Fill(this.test2DataSet9.alt_kategori);
            // TODO: Bu kod satırı 'test2DataSet8.alt_kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.alt_kategoriTableAdapter.Fill(this.test2DataSet8.alt_kategori);
            // TODO: Bu kod satırı 'test2DataSet7.kategori' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kategoriTableAdapter.Fill(this.test2DataSet7.kategori);
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void comboBox1_TextChanged(object sender, EventArgs e)
        {
        }
        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                

                    soru s = new soru();
                    s.soru_ad = textBox1.Text;
                    s.alt_kategori_id = Convert.ToInt32(comboBox2.SelectedValue);

                    if (radioButton1.Checked == true)
                    {
                        s.aktif = true;
                    }
                    else
                    {
                        s.aktif = false;
                    }

                    db.soru.Add(s);
                    db.SaveChanges();



                    var veri = (from x in db.soru
                                where x.soru_ad == textBox1.Text
                                select new
                                {
                                    x.soru_id
                                }

                                ).FirstOrDefault();
                    label6.Text = veri.soru_id.ToString();
                    int soruid = veri.soru_id;

                    secenekler sc = new secenekler();

                    sc.soru_id = soruid;


                    foreach (var item in seceneklerx)
                    {
                        sc.secenekler1 = item;
                        db.secenekler.Add(sc);
                        db.SaveChanges();
                    }
                    soru_secenek sorusec = new soru_secenek();
                    sorusec.soru_id = soruid;
                    bool z = true;



                    foreach (var item in seceneklerx)
                    {
                        if (item == textBox3.Text)
                        {
                            sorusec.dogru_cevap = textBox3.Text;
                            db.soru_secenek.Add(sorusec);
                            db.SaveChanges();
                            z = false;
                        }
                    }

                    if (z == false)
                    {
                        MessageBox.Show("Soru Başarıylan Eklendi ");

                    }
                    else
                    {
                        MessageBox.Show("Seçenekler Arasında Doğru cevap yok");
                    }    
            }
            catch (Exception ex)
            {

                MessageBox.Show("Bir Hata oluştu hata kodu"+ex+" Hata Kodu Raporlandı admin ile iletişime geçin");
                eposta asd = new eposta();
                asd.mailservice("iek.emrere@gmail.com", ex.ToString(),session.kullaniciad);
                
            }
            

        }
        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
        List<String> seceneklerx = new List<string>();
        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Add(textBox2.Text);


            seceneklerx.Add(textBox2.Text);
        }
        private void textBox3_TextChanged(object sender, EventArgs e)
        {
        }
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        private void listBox1_SelectedValueChanged(object sender, EventArgs e)
        {
            textBox3.Text = listBox1.SelectedItem.ToString();

        }
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                //gets a collection that contains all the rows
                DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                //populate the textbox from specific value of the coordinates of column and row.
                label8.Text = row.Cells[0].Value.ToString();
            }
        }
        private void label8_Click(object sender, EventArgs e)
        {
        }
        private void button3_Click(object sender, EventArgs e)
        {

            try
            {
                if (label8.Text != null)
                {
                    var xt = db.soru.Find(int.Parse(label8.Text));
                    db.soru.Remove(xt);
                    db.SaveChanges();
                    this.soruTableAdapter1.Fill(this.test2DataSet13.soru);

                    MessageBox.Show("Soru Başarı ile silindi");

                }
                else
                {
                    MessageBox.Show("Lütfen Bir id seçiniz");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Hata Oluştu");
            }

            
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            listBox1.Items.Clear();
            MessageBox.Show("Başarılı bir şekilde temizlendi");
        }
    }
}
