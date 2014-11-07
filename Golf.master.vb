
Partial Class Golf
    Inherits System.Web.UI.MasterPage


    Protected Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Label1.Text = System.DateTime.Now.ToString("MM/dd/yyyy")
    End Sub
End Class

