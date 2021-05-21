
namespace odev
{
    partial class katagori_ekle
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.radioButton2 = new System.Windows.Forms.RadioButton();
            this.radioButton1 = new System.Windows.Forms.RadioButton();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label3 = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.kategoriBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.test2DataSet3 = new odev.test2DataSet3();
            this.altkategoriBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.alt_kategoriTableAdapter = new odev.test2DataSet3TableAdapters.alt_kategoriTableAdapter();
            this.altkategoriidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.altkategoriadDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.kategoriidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.aktifDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.test2DataSet6 = new odev.test2DataSet6();
            this.altkategoriBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.alt_kategoriTableAdapter1 = new odev.test2DataSet6TableAdapters.alt_kategoriTableAdapter();
            this.test2DataSet7 = new odev.test2DataSet7();
            this.kategoriBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.kategoriTableAdapter = new odev.test2DataSet7TableAdapters.kategoriTableAdapter();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.kategoriBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.test2DataSet3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.altkategoriBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.test2DataSet6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.altkategoriBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.test2DataSet7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.kategoriBindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.groupBox3);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Location = new System.Drawing.Point(21, 21);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(307, 381);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Katagori ekle";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.radioButton2);
            this.groupBox3.Controls.Add(this.radioButton1);
            this.groupBox3.Location = new System.Drawing.Point(94, 191);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(185, 42);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Aktif Pasif";
            // 
            // radioButton2
            // 
            this.radioButton2.AutoSize = true;
            this.radioButton2.Location = new System.Drawing.Point(99, 15);
            this.radioButton2.Name = "radioButton2";
            this.radioButton2.Size = new System.Drawing.Size(48, 17);
            this.radioButton2.TabIndex = 1;
            this.radioButton2.TabStop = true;
            this.radioButton2.Text = "Pasif";
            this.radioButton2.UseVisualStyleBackColor = true;
            // 
            // radioButton1
            // 
            this.radioButton1.AutoSize = true;
            this.radioButton1.Location = new System.Drawing.Point(7, 15);
            this.radioButton1.Name = "radioButton1";
            this.radioButton1.Size = new System.Drawing.Size(46, 17);
            this.radioButton1.TabIndex = 0;
            this.radioButton1.TabStop = true;
            this.radioButton1.Text = "Aktif";
            this.radioButton1.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.GreenYellow;
            this.button1.Location = new System.Drawing.Point(94, 265);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(192, 23);
            this.button1.TabIndex = 2;
            this.button1.Text = "Ekle";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(18, 150);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(61, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "Katagori ad";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(94, 147);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(192, 20);
            this.textBox1.TabIndex = 0;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.button2);
            this.groupBox2.Controls.Add(this.textBox2);
            this.groupBox2.Controls.Add(this.comboBox1);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Location = new System.Drawing.Point(21, 437);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(307, 370);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Alt Katagori";
            this.groupBox2.Enter += new System.EventHandler(this.groupBox2_Enter);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(7, 187);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 13);
            this.label3.TabIndex = 6;
            this.label3.Text = "Alt katagori ad";
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.GreenYellow;
            this.button2.Location = new System.Drawing.Point(88, 254);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(192, 23);
            this.button2.TabIndex = 4;
            this.button2.Text = "Ekle";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(88, 180);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(189, 20);
            this.textBox2.TabIndex = 5;
            // 
            // comboBox1
            // 
            this.comboBox1.DataSource = this.kategoriBindingSource1;
            this.comboBox1.DisplayMember = "kategori_ad";
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(88, 128);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(189, 21);
            this.comboBox1.TabIndex = 4;
            this.comboBox1.ValueMember = "kategori_id";
            // 
            // kategoriBindingSource
            // 
            this.kategoriBindingSource.DataMember = "kategori";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(7, 132);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Katagori ad";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.altkategoriidDataGridViewTextBoxColumn,
            this.altkategoriadDataGridViewTextBoxColumn,
            this.kategoriidDataGridViewTextBoxColumn,
            this.aktifDataGridViewCheckBoxColumn});
            this.dataGridView1.DataSource = this.altkategoriBindingSource1;
            this.dataGridView1.Location = new System.Drawing.Point(372, 21);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(696, 381);
            this.dataGridView1.TabIndex = 2;
            // 
            // test2DataSet3
            // 
            this.test2DataSet3.DataSetName = "test2DataSet3";
            this.test2DataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // altkategoriBindingSource
            // 
            this.altkategoriBindingSource.DataMember = "alt_kategori";
            this.altkategoriBindingSource.DataSource = this.test2DataSet3;
            // 
            // alt_kategoriTableAdapter
            // 
            this.alt_kategoriTableAdapter.ClearBeforeFill = true;
            // 
            // altkategoriidDataGridViewTextBoxColumn
            // 
            this.altkategoriidDataGridViewTextBoxColumn.DataPropertyName = "alt_kategori_id";
            this.altkategoriidDataGridViewTextBoxColumn.HeaderText = "alt_kategori_id";
            this.altkategoriidDataGridViewTextBoxColumn.Name = "altkategoriidDataGridViewTextBoxColumn";
            this.altkategoriidDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // altkategoriadDataGridViewTextBoxColumn
            // 
            this.altkategoriadDataGridViewTextBoxColumn.DataPropertyName = "alt_kategori_ad";
            this.altkategoriadDataGridViewTextBoxColumn.HeaderText = "alt_kategori_ad";
            this.altkategoriadDataGridViewTextBoxColumn.Name = "altkategoriadDataGridViewTextBoxColumn";
            // 
            // kategoriidDataGridViewTextBoxColumn
            // 
            this.kategoriidDataGridViewTextBoxColumn.DataPropertyName = "kategori_id";
            this.kategoriidDataGridViewTextBoxColumn.HeaderText = "kategori_id";
            this.kategoriidDataGridViewTextBoxColumn.Name = "kategoriidDataGridViewTextBoxColumn";
            // 
            // aktifDataGridViewCheckBoxColumn
            // 
            this.aktifDataGridViewCheckBoxColumn.DataPropertyName = "aktif";
            this.aktifDataGridViewCheckBoxColumn.HeaderText = "aktif";
            this.aktifDataGridViewCheckBoxColumn.Name = "aktifDataGridViewCheckBoxColumn";
            // 
            // test2DataSet6
            // 
            this.test2DataSet6.DataSetName = "test2DataSet6";
            this.test2DataSet6.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // altkategoriBindingSource1
            // 
            this.altkategoriBindingSource1.DataMember = "alt_kategori";
            this.altkategoriBindingSource1.DataSource = this.test2DataSet6;
            // 
            // alt_kategoriTableAdapter1
            // 
            this.alt_kategoriTableAdapter1.ClearBeforeFill = true;
            // 
            // test2DataSet7
            // 
            this.test2DataSet7.DataSetName = "test2DataSet7";
            this.test2DataSet7.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // kategoriBindingSource1
            // 
            this.kategoriBindingSource1.DataMember = "kategori";
            this.kategoriBindingSource1.DataSource = this.test2DataSet7;
            // 
            // kategoriTableAdapter
            // 
            this.kategoriTableAdapter.ClearBeforeFill = true;
            // 
            // katagori_ekle
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1118, 921);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "katagori_ekle";
            this.Text = "katagori_ekle";
            this.Load += new System.EventHandler(this.katagori_ekle_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.kategoriBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.test2DataSet3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.altkategoriBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.test2DataSet6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.altkategoriBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.test2DataSet7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.kategoriBindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.BindingSource kategoriBindingSource;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton radioButton2;
        private System.Windows.Forms.RadioButton radioButton1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private test2DataSet3 test2DataSet3;
        private System.Windows.Forms.BindingSource altkategoriBindingSource;
        private test2DataSet3TableAdapters.alt_kategoriTableAdapter alt_kategoriTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn altkategoriidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn altkategoriadDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn kategoriidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn aktifDataGridViewCheckBoxColumn;
        private test2DataSet6 test2DataSet6;
        private System.Windows.Forms.BindingSource altkategoriBindingSource1;
        private test2DataSet6TableAdapters.alt_kategoriTableAdapter alt_kategoriTableAdapter1;
        private test2DataSet7 test2DataSet7;
        private System.Windows.Forms.BindingSource kategoriBindingSource1;
        private test2DataSet7TableAdapters.kategoriTableAdapter kategoriTableAdapter;
    }
}