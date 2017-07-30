using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CkEditorExample
{
    public partial class IndexCkEditor : System.Web.UI.Page
    {
        CkEditorDbEntities db = new CkEditorDbEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblCkEditor model = new tblCkEditor();
            model.PostTitle = txtPostTitle.Text;
            model.PostComment = txtPostComment.Text;//Get the valu of Ckeditor
            db.tblCkEditors.Add(model);
            db.SaveChanges();
            txtPostTitle.Text = "";
            txtPostComment.Text = "";
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            var posts = db.tblCkEditors.ToList();
            foreach (var post in posts)
            {
                var div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "alert-danger");
                var heading = new HtmlGenericControl("h2");
                var paragraph = new HtmlGenericControl("p");
                heading.InnerHtml = post.PostTitle;
                paragraph.InnerHtml = post.PostComment;
                div1.Controls.Add(heading);
                div1.Controls.Add(paragraph);
                DivshowComments.Controls.Add(div1);

            }
        }
    }
}