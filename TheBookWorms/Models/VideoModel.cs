using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TheBookWorms.Models
{
    [Table("VideoData")]
    public class VideoModel
    {
        [Key]
        public int UserId { get; set; }

        public string Title { get; set; }

        public string AuthorFirstName { get; set; }
        
        public string AuthorLastName { get; set; }

        public string VideoUrl { get; set; }
    }
}