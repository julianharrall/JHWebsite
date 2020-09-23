using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPWebsite.Menu.Miscelaneous
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("ContactNewForm.aspx");
            Response.AddHeader("REFRESH", "5;URL=ContactNewForm.aspx");
        }
    }
}