<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebMethodWithAspx.aspx.cs"
    Inherits="WebMethodWithAspx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="script/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#button1").click(function () {
                var param = "{'custName': ['aa','bb','cc']}";
                console.log(param);

                $.ajax({
                    type: "POST",
                    url: "SampleWs.asmx/GetList",
                    data: param,
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        console.log(data);
                        alert(data.d);
                    },
                    error: function (a, b, c) {
                        console.log(c);
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
