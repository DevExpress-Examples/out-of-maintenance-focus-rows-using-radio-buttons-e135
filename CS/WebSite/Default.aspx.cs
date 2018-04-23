using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.Data;


public partial class Use_Radio_Button_To_Mark_FocusedRow : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e) {
        ASPxGridView1.DataBind();
        Session["FocusedRow"] = ASPxGridView1.GetRowValues(ASPxGridView1.FocusedRowIndex, new string[] { ASPxGridView1.KeyFieldName });
    }
    public virtual string GetFieldValue(object item) {
        WebDescriptorRowBase row = item as WebDescriptorRowBase;
        return ASPxGridView1.GetRowValues(row.VisibleIndex, ASPxGridView1.KeyFieldName).ToString();
    }
    public virtual string GetFieldChecked(object item) {
        WebDescriptorRowBase row = item as WebDescriptorRowBase;
        object o = ASPxGridView1.GetRowValues(row.VisibleIndex, ASPxGridView1.KeyFieldName);
        return Session["FocusedRow"] == o ? "CHECKED" : "";
    }
}
