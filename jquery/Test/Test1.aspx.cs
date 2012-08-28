using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test_Test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ObjectDataSource ds = new ObjectDataSource();
        ds.TypeName = "Test";
        ds.SelectMethod = "GetDataTable";
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}