<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Demo.Persistence._default" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>

  <form id="form1" runat="server">
    <telerik:RadAjaxManager runat="server">
      <AjaxSettings>
        <telerik:AjaxSetting AjaxControlID="saveBtn">
          <UpdatedControls>
            <telerik:AjaxUpdatedControl ControlID="cal" />
          </UpdatedControls>
        </telerik:AjaxSetting>
        <telerik:AjaxSetting AjaxControlID="loadBtn">
          <UpdatedControls>
            <telerik:AjaxUpdatedControl ControlID="cal" />
          </UpdatedControls>
        </telerik:AjaxSetting>
      </AjaxSettings>
    </telerik:RadAjaxManager>


    <telerik:RadScriptManager runat="server" ID="scriptMgr"></telerik:RadScriptManager>


    <telerik:RadPersistenceManager runat="server" ID="persistMgr" EnablePersistence="true" OnLoadCustomSettings="persistMgr_LoadCustomSettings" OnSaveCustomSettings="persistMgr_SaveCustomSettings">
    </telerik:RadPersistenceManager>
    
      
      <telerik:RadAjaxPanel runat="server" ID="panel">
      <div>

      <telerik:RadCalendar ID="cal" runat="server" EnableMultiSelect="true" RangeMinDate="2013-03-01" RangeMaxDate="2014-01-01" FocusedDate="2013-03-01">

        <SpecialDays>
          <telerik:RadCalendarDay Date="" Repeatable="Today">
            <ItemStyle CssClass="rcToday"></ItemStyle>
          </telerik:RadCalendarDay>
        </SpecialDays>

      </telerik:RadCalendar>

    </div>

      <asp:button runat="server" ID="saveBtn" OnClick="saveBtn_Click" Text="Save State" />
      <asp:button runat="server" ID="loadBtn" OnClick="loadBtn_Click" Text="Load State" />

        </telerik:RadAjaxPanel> 

  </form>
</body>
</html>
