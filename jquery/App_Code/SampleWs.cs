using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;


[WebService(Namespace = "http://localhost/jquery/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class SampleWs : System.Web.Services.WebService {
    [WebMethod]
    [ScriptMethod(ResponseFormat=ResponseFormat.Json)]
    public   string[] GetList(string []custName)
    {
        for (int i = 0; i < custName.Length; i++)
            custName[i] = custName[i].ToUpper();
        return custName;  
    }
}
