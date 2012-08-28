using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class WebMethodWithAspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string [] GetList(string []custName)
    {
        string []ar=new string[custName.Length];
        Array.Copy(custName,0,ar,0,custName.Length);
        for (int i = 0; i < ar.Length; i++)
            ar[i] = ar[i].ToUpper();
        return ar;
    }
}