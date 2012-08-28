using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

 
public class Test
{
    public DataTable GetDataTable()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("No");
        dt.Rows.Add(10);
        dt.Rows.Add(20);
        return dt;
    }
}