
Partial Class admin_AddGolfer
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        fvAddGolfer.Focus()
    End Sub


    Protected Sub fvAddGolfer_ItemInserted(sender As Object, e As FormViewInsertedEventArgs) Handles fvAddGolfer.ItemInserted
        Response.Redirect("./adminControl.aspx")
    End Sub
End Class
