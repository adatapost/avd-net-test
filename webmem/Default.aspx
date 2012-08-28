<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="Script/jquery-1.7.2-vsdoc.js"></script>
    <script type="text/javascript" src="Script/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
$(function () {
    $("#button1").click(function () {
        $.ajax({
            type: "post",
            url: "service.asmx/Square",
            data: "{no: 10}",
            dataType: "json",
            contentType: "application/json",
            success: function (data) {
                alert("Succed :" + data.d);
            },
            error: function (src,type,msg) {
                alert(msg);
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
