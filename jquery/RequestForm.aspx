<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestForm.aspx.cs" Inherits="RequestForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AJAX Json sent/receive</title>
    <script src="script/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#button1").click(function () {
               
                $.ajax({
                    type: "POST",
                    url: "ReceiveForm.aspx",
                    data: { "SmsId": "A001", "SmsStatus": "OK" },
                    dataType: "json",
                    success: function (msg) {
                        alert(msg.d);
                    },
                    error: function (a, b, c) {
                        alert(a[0] + " " + b  + " " + c);
                    }
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <input type="button" id="button1" value="Send" />
    </div>
    </form>
</body>
</html>
