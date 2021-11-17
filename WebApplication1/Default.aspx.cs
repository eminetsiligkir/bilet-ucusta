using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bilet_ucusta
{
    public partial class _Default : Page
    {
        protected void BiletAlYonlen(object sender, EventArgs e)
        {
            Response.Redirect("BiletAl.aspx");
        }
    }
}