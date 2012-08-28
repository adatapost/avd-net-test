using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReceiveForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request["SmsId"] + " " + Request["SmsStatus"];

        Response.Clear();
        Response.ContentType = "application/json";
        Response.Write("{ \"d\": \"" + id +"\" }");
        Response.Flush();
        Response.End();
    }
}