
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tbSearch_TextChanged(sender As Object, e As EventArgs) Handles tbSearch.TextChanged
        Dim searchWord As String
        searchWord = "Select * From arimyers_hw07 where (firstName Like '%" + tbSearch.Text.ToString() + "%' or lastName Like '%" + tbSearch.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
        GridView1.Visible = True
    End Sub
End Class
