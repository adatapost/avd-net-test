using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;

 
[ScriptService]
[WebService(Namespace = "http://localhost/webmem/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class Service : System.Web.Services.WebService{
   [WebMethod]
    public int Square(int no)
    {
        return no * no;
    }

}
