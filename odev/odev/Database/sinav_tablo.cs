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
    
    public partial class sinav_tablo
    {
        public int sinav_id { get; set; }
        public Nullable<int> alt_kategori_id { get; set; }
        public Nullable<int> soru_id { get; set; }
        public string Sınav_ad { get; set; }
        public Nullable<int> dk { get; set; }
    
        public virtual alt_kategori alt_kategori { get; set; }
        public virtual soru soru { get; set; }
    }
}
