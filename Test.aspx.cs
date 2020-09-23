using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KPWebsite
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AddHeader("REFRESH", "5;URL=/Menu/Miscelaneous/Confirmation.aspx");
        }
    }
}