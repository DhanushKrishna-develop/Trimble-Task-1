<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Shopping_page_web_form._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container">
        <h1>Browse your products here</h1>
        <br>
        
            <asp:Label for="product" text="Product" runat="server"></asp:Label>
            <asp:TextBox CssClass="form-control" runat="server" ID="product"></asp:TextBox><br />
            <asp:Label for="dropdown" id="productname" text="Product Name" runat="server"></asp:Label>
            <asp:DropDownList CssClass="form-control" ID="dropdown" runat="server">
                <asp:ListItem>Computer</asp:ListItem>
                <asp:ListItem>Mouse</asp:ListItem>
                <asp:ListItem>Keyboard</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button CssClass="btn btn-primary" ID="btn" runat="server" Text="Search" OnClick="Search"/>
            <br><br>
            <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
