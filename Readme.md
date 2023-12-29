<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# Focus rows using radio buttons


<p>This demo shows how to display radio buttons within a column and how to use these buttons to move row focus.</p><p>Starting with version v2010 vol 2, the ASPxGridView control provides this functionality out-of-the-box:<br />
- Enable the <strong>GridViewCommandColumn</strong> and make the <strong>SelectCheckbox</strong> visible;<br />
- Set the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewASPxGridViewBehaviorSettings_AllowSelectSingleRowOnlytopic"><u>ASPxGridView.SettingsBehavior.AllowSelectSingleRowOnly</u></a> property to "true" to restrict the grid to one selected row at a time. In this mode, check boxes are displayed within the command column's cells are automatically replaced with radio buttons, indicating a single-option selection.</p>

<br/>


