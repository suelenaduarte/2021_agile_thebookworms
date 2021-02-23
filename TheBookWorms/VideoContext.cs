using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using TheBookWorms.Models;

namespace TheBookWorms
{
    public class VideoContext : DbContext
    {
        public DbSet<VideoModel> VideoData { get; set; }
    }
}