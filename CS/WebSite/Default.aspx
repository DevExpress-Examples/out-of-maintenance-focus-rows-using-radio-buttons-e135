<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Use_Radio_Button_To_Mark_FocusedRow" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.2" Namespace="DevExpress.Web.ASPxEditors"  TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.2" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v8.2" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dxwp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Focus rows using radio buttons</title>
</head>
<body>
    <form id="form1" runat="server">
    
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
            DataSourceID="AccessDataSource1" KeyFieldName="CustomerID" Width="582px">
            <Columns>
                <dxwgv:GridViewDataCheckColumn Caption="IsSelected" FieldName="IsSelected" VisibleIndex="0">
                    <DataItemTemplate>
                        <input id="Radio1" type="radio" value='<%# GetFieldValue(Container.DataItem) %>' <%#GetFieldChecked(Container.DataItem)%> name="myradio"/> &nbsp;&nbsp;&nbsp;
                    </DataItemTemplate>
                </dxwgv:GridViewDataCheckColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CustomerID" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" />
            <ClientSideEvents FocusedRowChanged="function(s, e) {
               var row = s.GetRow(s.GetFocusedRowIndex());
                if(__aspxIE)
                    row.cells[0].childNodes[0].checked = true;
                else
                    row.cells[0].childNodes[1].checked = true;                
}" />
        </dxwgv:ASPxGridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle] FROM [Customers]">
        </asp:AccessDataSource>
    </form>
</body>
</html>
