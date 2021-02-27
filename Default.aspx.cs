using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shopping_page_web_form
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
        }

        protected override void OnPreRender(EventArgs e)
        {
            ViewState["update"] = Session["update"];
        }

        protected void Search(object sender, EventArgs e)
        {
            if (Session["update"].ToString() == ViewState["update"].ToString())
                DisplayInfo();
        }

        private void DisplayInfo()
        {
            
            Session["update"] = Server.UrlEncode(System.DateTime.Now.ToString());
            msg.Text = "Input Success";
        }
    }
}