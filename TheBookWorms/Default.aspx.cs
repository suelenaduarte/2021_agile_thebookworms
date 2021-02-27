using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TheBookWorms.Models;

namespace TheBookWorms
{
    public partial class _Default : Page
    {
        private VideoContext context = new VideoContext();

        // Parameter to get video file name
        private string fileName;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadVideo(object sender, EventArgs e)
        {

            VideoModel message = new VideoModel();


            message.Title = title.Text;
            message.AuthorFirstName = firstName.Text;
            message.AuthorLastName = lastName.Text;
            message.DateTimeBook = dateCreated.Text;
            message.Genre = genre.Text;

            // Get random and unique video name 
            fileName = Path.GetRandomFileName();

            // Place the video inside the Video Folder
            videoUpload.SaveAs(Server.MapPath("~/Video/") + Path.GetFileName(videoUpload.FileName.Replace(videoUpload.FileName, fileName)) + ".mp4");

            // Get the link to place inside src video 
            string link = "video/" + Path.GetFileName(videoUpload.FileName.Replace(videoUpload.FileName, fileName)) + ".mp4";

            // Get the video link
            link = "<video width=400 controls><source src=" + link + " type=video/mp4></video>";

            // Apply video link to VideoUrl data 
            message.VideoUrl = link;


            context.VideoData.Add(message);


            context.SaveChanges();

            // Success upload message for user
            lblSuccess.Text = "Video has been uploaded and saved successfully";

        }
    }
}