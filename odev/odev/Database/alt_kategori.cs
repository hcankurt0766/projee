//------------------------------------------------------------------------------
// <auto-generated>
//    Bu kod bir şablondan oluşturuldu.
//
//    Bu dosyada el ile yapılan değişiklikler uygulamanızda beklenmedik davranışa neden olabilir.
//    Kod yeniden oluşturulursa, bu dosyada el ile yapılan değişikliklerin üzerine yazılacak.
// </auto-generated>
//------------------------------------------------------------------------------

namespace odev.Database
{
    using System;
    using System.Collections.Generic;
    
    public partial class alt_kategori
    {
        public alt_kategori()
        {
            this.sinav_tablo = new HashSet<sinav_tablo>();
            this.soru = new HashSet<soru>();
        }
    
        public int alt_kategori_id { get; set; }
        public string alt_kategori_ad { get; set; }
        public Nullable<int> kategori_id { get; set; }
        public Nullable<bool> aktif { get; set; }
    
        public virtual kategori kategori { get; set; }
        public virtual ICollection<sinav_tablo> sinav_tablo { get; set; }
        public virtual ICollection<soru> soru { get; set; }
    }
}
