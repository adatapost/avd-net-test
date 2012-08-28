<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PostReq.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Script/jquery-1.7.2-vsdoc.js"></script>
    <script type="text/javascript" src="Script/jquery-1.7.2.min.js"></script>
    
    <script type="text/javascript">
        $(function () {
            var xml = '<?xml version="1.0" encoding="utf-8"?>'
                    + '<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">'
                    + '<soap12:Body>'
                    + '<Square xmlns="http://localhost/webmem/">'
                    + '<no>12</no>'
                    + '</Square>'
                    + '</soap12:Body>'
                    + '</soap12:Envelope>';

            $("#button1").click(function () {
                $.ajax({
                    type: "post",
                    url: "Service.asmx/Square",
                    data: "{no: 10}",
                    dataType: "json",
                    success: function (data) {
                        alert("Success " + data);
                    },
                    error: function (data) {
                        alert("Error " + data);
                    }
                });
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <input type="button" id="button1" value="Show" />
    </div>
    </form>
</body>
</html>
