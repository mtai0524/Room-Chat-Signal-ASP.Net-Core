using System;
using System.ComponentModel.DataAnnotations;

namespace ChatApp.Models
{
    public class Message
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Text { get; set; }
        [DisplayFormat(DataFormatString = "{0:dd/MM/yyyy HH:mm:ss}", ApplyFormatInEditMode = true)]
        public DateTime? Timestamp { get; set; }

        public int? ChatId { get; set; }
        public Chat? Chat { get; set; }
    }
}