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
    
    public partial class kullanici_soru_cevap
    {
        public int kullanici_id { get; set; }
        public Nullable<int> soru_id { get; set; }
        public Nullable<int> secim_id { get; set; }
        public string secim { get; set; }
        public Nullable<int> skor { get; set; }
    
        public virtual kullanici kullanici { get; set; }
        public virtual soru soru { get; set; }
        public virtual soru_secenek soru_secenek { get; set; }
    }
}