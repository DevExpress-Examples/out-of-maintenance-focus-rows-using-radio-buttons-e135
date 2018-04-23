Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.Data


Partial Public Class Use_Radio_Button_To_Mark_FocusedRow
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ASPxGridView1.DataBind()
		Session("FocusedRow") = ASPxGridView1.GetRowValues(ASPxGridView1.FocusedRowIndex, New String() { ASPxGridView1.KeyFieldName })
	End Sub
	Public Overridable Function GetFieldValue(ByVal item As Object) As String
		Dim row As WebDescriptorRowBase = TryCast(item, WebDescriptorRowBase)
		Return ASPxGridView1.GetRowValues(row.VisibleIndex, ASPxGridView1.KeyFieldName).ToString()
	End Function
	Public Overridable Function GetFieldChecked(ByVal item As Object) As String
		Dim row As WebDescriptorRowBase = TryCast(item, WebDescriptorRowBase)
		Dim o As Object = ASPxGridView1.GetRowValues(row.VisibleIndex, ASPxGridView1.KeyFieldName)
		If Session("FocusedRow") Is o Then
			Return "CHECKED"
		Else
			Return ""
		End If
	End Function
End Class
