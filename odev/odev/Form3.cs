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
    public partial class Form3 : Form
    {
        test2Entities2 db = new test2Entities2();

        public Form3()
        {
            InitializeComponent();
        }

        private void Form3_Load(object sender, EventArgs e)
        {
            
            var veri = (from x in db.kullanici_skor

                        select new
                        {
                            x.kullanici.kullanici_adi,
                            x.eniyi_skor,
                            x.sinav_adi
                        }

                                 ).ToList();

            dataGridView1.DataSource = veri;



        }
    }
}
