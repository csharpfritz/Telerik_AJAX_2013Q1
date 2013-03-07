<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donut.aspx.cs" Inherits="Demo.Charts.Donut" %>

<%@ Register Assembly="Telerik.OpenAccess.Web" Namespace="Telerik.OpenAccess" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

      <telerik:RadAjaxManager runat="server" ID="ajaxMgr"></telerik:RadAjaxManager>
      <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>
    <div>
      <telerik:RadHtmlChart ID="iLikeDonuts" runat="server" Width="600px" Height="300px" DataSourceID="donuts">
        <ChartTitle Text="I Like Donuts!">
          <Appearance Position="Top" Align="Center"></Appearance>
        </ChartTitle>

        <Legend>
          <Appearance BackgroundColor="204, 255, 255" Position="Right" Visible="true">
            <TextStyle Bold="true" FontFamily="Verdana" Color="Navy" />
          </Appearance>
        </Legend>

        <PlotArea>
          <Series>
            <telerik:DonutSeries HoleSize="30" ColorField="Color" DataFieldY="Num" NameField="Name" />
          </Series>
        </PlotArea>

      </telerik:RadHtmlChart>

      <asp:SqlDataSource runat="server" ID="donuts" ConnectionString='<%$ ConnectionStrings:GamesConnection %>' SelectCommand="SELECT * FROM [Donuts]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
