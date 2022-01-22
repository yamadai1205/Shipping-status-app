Imports System.Web.UI
Imports System.Web.UI.HtmlControls
Public Class WebForm1
    Inherits System.Web.UI.Page

    '--------------------------------------------------
    '時計の処理
    '--------------------------------------------------
    Protected Sub Timer1_Tick(ByVal sender As Object, ByVal e As System.EventArgs)

        Me.LblDate.Text = Date.Now.ToString("yyyy/MM/dd(ddd)")
        Me.LblWatch.Text = Date.Now.ToString("HH:mm:ss")

        '1分毎に集計を行う
        Dim strMinutes As String = "00"
        Dim strMinutesComparison As String = Date.Now.ToString("ss")
        If strMinutes = strMinutesComparison Then
            fncIchiranSet()
        End If

    End Sub

    '--------------------------------------------------
    '計算・集計実行
    '--------------------------------------------------
    Public Sub fncIchiranSet()

        '現在の時間で絞り込む
        Dim HOURT As String = Date.Now.ToString("HHmmss")

        'テスト用テーブル作成
        Dim dtTestTable As New DataTable("TestTable")
        With dtTestTable.Columns
            .Add("OrderCount")
            .Add("ListCount")
            .Add("InspectCount")
        End With
        Dim drTestRow As DataRow
        drTestRow = dtTestTable.NewRow
        drTestRow("OrderCount") = "9300"
        drTestRow("ListCount") = "9300"
        drTestRow("InspectCount") = "4500"
        dtTestTable.Rows.Add(drTestRow)

        '受注総個数
        If dtTestTable(0)("OrderCount") IsNot Nothing Then

            Dim strOrderCount As String = String.Format("{0:#,0}", dtTestTable(0)("OrderCount"))
            Me.LblOrderCount.Text = strOrderCount

        Else

            Me.LblOrderCount.Text = "0"

        End If

        'リスト総個数
        If dtTestTable(0)("ListCount") IsNot Nothing Then

            Dim strListCount As String = String.Format("{0:#,0}", dtTestTable(0)("ListCount"))
            Me.LblListCount.Text = strListCount

        Else

            Me.LblListCount.Text = "0"

        End If

        '検品総個数
        If dtTestTable(0)("InspectCount") IsNot Nothing Then

            Dim strInspectCount As String = String.Format("{0:#,0}", dtTestTable(0)("InspectCount"))
            Me.LblInspectCount.Text = strInspectCount

        Else

            Me.LblInspectCount.Text = "0"

        End If

    End Sub

End Class