using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using IdRef = System.Int32;

namespace Final_working_SoundDog
{
    public partial class Reserveren : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<IdRef> testTakenRooms = new List<IdRef>{};
            SetRoomsAvaiability(testTakenRooms);
        }
        protected void SetRoomsAvaiability(List<IdRef> takenRooms)
        {

            foreach (var roomItem in Enum.GetValues(typeof(Rooms)))
            {
                var divId = roomItem.ToString();
                var roomControl = GetHtmlControlByIdInControl(divId);
                var taken = false;
                var item = roomItem;
                foreach (var takenRoom in takenRooms.Where(takenRoom => (int)item == takenRoom))
                {
                    taken = true;
                }
                if (taken)
                {
                    roomControl.Attributes["class"] = "taken";
                }
                else
                {
                    roomControl.Attributes["class"] = "Room";
                    roomControl.Attributes["OnClick"] = "javascript:DivClicked(MainContent_" + roomItem + "); return true;";
                }
            }
        }
        protected enum Rooms
        {
            Room_1 = 1,
            Room_2,
            Room_3,
            Room_4,
            Room_5,
            Room_6,
            Room_7,
            Room_8,
            Room_9,
            Studio,
            RelaxRoomLarge,
            RelaxRoomSmall
        }
        private HtmlGenericControl GetHtmlControlByIdInControl(string id)
        {
            switch (id)
            {
                case "Room_1":
                    return Room_1;
                case "Room_2":
                    return Room_2;
                case "Room_3":
                    return Room_3;
                case "Room_4":
                    return Room_4;
                case "Room_5":
                    return Room_5;
                case "Room_6":
                    return Room_6;
                case "Room_7":
                    return Room_7;
                case "Room_8":
                    return Room_8;
                case "Room_9":
                    return Room_9;
                case "Studio":
                    return Studio;
                case "RelaxRoomLarge":
                    return RelaxRoom;
                case "RelaxRoomSmall":
                    return RelaxRoom;
                default:
                    return Room_1;
            }
        }
        protected bool RoomClicked(Object sender, EventArgs e)
        {
            return false;
        }
        protected void RoomButtonClick_Click(object sender, EventArgs e)
        {
            string roomId = RoomIndex.Value.Substring(RoomIndex.Value.IndexOf("_", StringComparison.Ordinal) + 1);
            var roomControl = GetHtmlControlByIdInControl(roomId.ToString());
            roomControl.Attributes["class"] = "selected";
        }
        public void SendMail()
        {
            System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage();
            message.To.Add("luckyperson@online.microsoft.com");
            message.Subject = "Reservering SoundDog";
            message.From = new System.Net.Mail.MailAddress("info@sounddog.nl");
            message.Body = "This is the message body";
            System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient("yoursmtphost");
            smtp.Send(message);
        }
    }
     

   
}
