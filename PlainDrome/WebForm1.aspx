<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PlainDrome.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-size: 22px;
            font-weight: bold;
        }
        .sidebar_left
        {
            width: 210px;
            text-align: center;
            line-height: 400px;
            float: left;
        }
        
        .hstyle
        {
            background-color: #e6e6fa;
        }
        .btnset
        {
            font-family: Arial;
            color: #333333;
            height: 30px;
            width: 60px;
        }
        .btnset:hover
        {
            background-color: #D84735;
            color: #FFFFFF;
            border: solid 1px #D84735;
        }
        .orderFont
        {
            color: #ff0000;
        }
        
        .note
        {
            color: red;
        }
        .style2
        {
            color: #FF5050;
        }
        .ftback
        {
            background-color: #e3e3e3;
        }
        
        .example
        {
            font-style: italic;
        }
        
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div id="Sidebar" class="sidebar_left">
        </div>
    </div>
    <div style="float: right; position: absolute">
        <table width="100%" border="0">
            <tr>
                <td class="style1">
                    判斷PlainDrome
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="Inputtxt" runat="server" Width="450px" autocomplete="false"></asp:TextBox>
                    &nbsp;
                    <asp:Label ID="lblNew" runat="server" Text="" CssClass="example">Ex：A man ,a plan, a canal: Panama</asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    去除非字母或數字的字串：
                    <asp:Label ID="lblString" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    結果：
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnCheck" runat="server" Text="判斷回文" OnClick="BtnCheck_OnClick"  CssClass=""/>&nbsp;<asp:Label ID="lblMsg" runat="server" CssClass="note" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <%--<table width="100%"></table>--%>
    </div>
    </form>
</body>
</html>
