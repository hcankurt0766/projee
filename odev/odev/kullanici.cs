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
    public partial class kullanici : Form
    {
        public kullanici()
        {
            InitializeComponent();
        }
        test2Entities2 db = new test2Entities2();
        private void Form2_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'test2DataSet16.sinav_tablo' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            label2.Text = session.kullaniciad;



            var sınav_ad = (from c in db.sinav_tablo
                         
                         select
                         c.Sınav_ad
                            ).ToList();




            var noDupes = sınav_ad.Distinct().ToList();

            comboBox1.DataSource = noDupes;
          



        }
        Boolean kontrol = false;
        string comboveri;
        public List<string> sorular(string x )
        {

          var  sorgu = (from c in db.sinav_tablo
                     where c.Sınav_ad == x
                     select
                     c.soru.soru_ad
                            ).ToList();

            List<String> B = new List<string>();
            
            B = sorgu;
            var noDupes = B.Distinct().ToList();
            noDupes.RemoveAll(item => item == null);
            return noDupes;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            kontrol = true;
            comboveri = comboBox1.Text;
            h = sorular(comboveri);
            timer1.Start();
            MessageBox.Show("Sınav Başlamıştır ");




        }
        int sure;
        int surex;
        int saniye;
        private void timer1_Tick(object sender, EventArgs e)
        {
            label13.Text = saniye.ToString();
            saniye++;
            if (saniye== 60)
            {
                surex++;
                saniye = 0;
                label12.Text = surex.ToString();
                
                label13.Text = "";
            }
            if (surex==60)
            {
                timer1.Stop();
                MessageBox.Show("Sınav Bitmiştir ");
                sayac = 0;
                Database.kullanici_skor k = new Database.kullanici_skor();
                k.kullanici_id = session.kullaniciid;
                k.eniyi_skor = puan;
                db.kullanici_skor.Add(k);
                db.SaveChanges();
                
                surex = 0;
                saniye = 0;
                timer1.Stop();
            }
        }
        int sayac = 0;
        int sorusayisi;
        List<String> h = new List<string>();
        List<String> z = new List<string>();
        private void button2_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            if (sayac >= h.Count())
            {
                MessageBox.Show("Sınav Biti");
                sayac = 0;
                Database.kullanici_skor k = new Database.kullanici_skor();
                k.kullanici_id = session.kullaniciid;

                k.eniyi_skor = puan;

                db.kullanici_skor.Add(k);
                db.SaveChanges();
            }
            else
            {
                textBox1.Text = h[sayac];
                var secenekler = (from c in db.secenekler
                                  where c.soru.soru_ad == textBox1.Text
                                  select
                                  c.secenekler1
                      ).ToList();
                List<String> B = new List<string>();
                B = secenekler;
                var noDupes = B.Distinct().ToList();
                noDupes.RemoveAll(item => item == null);

                if (noDupes!=null)
                {
                    foreach (var item in noDupes)
                    {
                        listBox1.Items.Add(item.ToString());


                    }
                    var dogrucevap = (from c in db.soru_secenek
                                      where c.soru.soru_ad == textBox1.Text
                                      select
                                      c.dogru_cevap
                       ).FirstOrDefault();

                    if (textBox1.Text != null && dogrucevap != null)
                    {
                        label11.Text = dogrucevap.ToString();

                    }
                    else
                    {
                        sayac++;
                    }
                }
                else
                {
                    sayac++;
                }
            }
            
        }
        int puan;
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
            listBox1.Items.Clear();
        }

        private void listBox1_SelectedValueChanged(object sender, EventArgs e)
        {
            if (textBox2.Text!=null)
            {
                textBox2.Text = listBox1.SelectedItem.ToString();
            }
            else
            {

            }
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (sayac >= h.Count())
            {
                sayac = 0;
                MessageBox.Show("Sınav Biti");
              

            }
            else if (label11.Text==textBox2.Text)
            {
                MessageBox.Show("Tebrikler Doğru Cevap");
                listBox1.Items.Clear();
                puan += 5;
                label6.Text = puan.ToString();
                sayac++;
                

            }
            
            if(label11.Text!=textBox2.Text)
            {
                MessageBox.Show("Yanlış Cevap");
                listBox1.Items.Clear();
                sayac++;
            }
            
            listBox1.Items.Clear();
        }
    }
}
