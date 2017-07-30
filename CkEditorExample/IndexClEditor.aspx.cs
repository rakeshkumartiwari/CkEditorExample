using System;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CkEditorExample
{
    public partial class IndexClEditor : System.Web.UI.Page
    {
        CkEditorDbEntities db = new CkEditorDbEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblCkEditor model = new tblCkEditor();
            model.PostTitle = txtPostTitle.Text;
            model.PostComment = TextArea1.InnerText;//Get the valu of Cleditor.
            db.tblCkEditors.Add(model);
            db.SaveChanges();
            txtPostTitle.Text = "";
            TextArea1.InnerText = "";
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