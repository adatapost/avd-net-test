<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PathInfo.aspx.cs" Inherits="PathInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HttpRuntime Properties</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
    <script src="script/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $(function () {
            $("p:even").next().toggle(0);
            $("p:even").click(function () {
                $(this).next().toggle(500);
            });
            $("#expand").click(function () {
                $("p:even").next().toggle(210);
            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <a id="expand" href="#">Collapse/Expand All</a>
    </div>
    <div>
        <p>
            Bin Folder (HttpRuntime.BinDirectory)</p>
        <p>
            <%=HttpRuntime.BinDirectory %>
        </p>
        <p>
            Code Gen Directory(HttpRuntime.CodegenDir)</p>
        <p>
            <%=HttpRuntime.CodegenDir %>
        </p>
        <p>
            CLR Install Directory (HttpRuntime.ClrInstallDirectory)
        </p>
        <p>
            <%=HttpRuntime.ClrInstallDirectory %>
        </p>
        <p>
            ASP Install Directory (HttpRuntime.AspInstallDirectory)
        </p>
        <p>
            <%=HttpRuntime.AspInstallDirectory %>
        </p>
        <p>
            Application Domain Path(HttpRuntime.AppDomainAppPath)
        </p>
        <p>
            <%=HttpRuntime.AppDomainAppPath %>
        </p>
        <p>
            Application Domain Virtual Path(HttpRuntime.AppDomainAppVirtualPath)
        </p>
        <p>
            <%=HttpRuntime.AppDomainAppVirtualPath %>
        </p>
        <p>
            ASP ClientScript Physical Path (HttpRuntime.AspClientScriptPhysicalPath)
        </p>
        <p>
            <%=HttpRuntime.AspClientScriptPhysicalPath %>
        </p>
        <p>
            ASP ClientScript Virtual Path (HttpRuntime.AspClientScriptVirtualPath)
        </p>
        <p>
            <%=HttpRuntime.AspClientScriptVirtualPath%>
        </p>
        <p>
            Machine Configuration Directory (HttpRuntime.MachineConfigurationDirectory)
        </p>
        <p>
            <%=HttpRuntime.MachineConfigurationDirectory %>
        </p>
    </div>
    </form>
</body>
</html>
