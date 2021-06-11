using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;

namespace odev
{
    class eposta
    {
        public  void  mailservice (string eposta, string mesajx,string konu){


            MailMessage mesajım = new MailMessage();
            SmtpClient istemci = new SmtpClient();
            
            
            
            istemci.Credentials = new System.Net.NetworkCredential("hcandeneme@gmail.com", "123123123deneme");
            istemci.Port = 587;
            istemci.Host = "smtp.gmail.com";
            istemci.EnableSsl = true;


            mesajım.To.Add(eposta);
            mesajım.From = new MailAddress("hcandeneme@gmail.com");
            mesajım.Subject = konu;
            mesajım.Body = mesajx;
            istemci.Send(mesajım);
         }


        










































    }
}
