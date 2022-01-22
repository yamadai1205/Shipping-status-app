<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="出荷状況.aspx.vb" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />

</head>

<body>
    <form id="form" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <div class="watch-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <div class="watch inline-area header-second-area">
                                <div class="watch-year-to-date">
                                    <asp:Label ID="LblDate" runat="server"></asp:Label>
                                </div>
                                <div class="watch-hour-to-sec ">
                                    <asp:Label ID="LblWatch" runat="server"></asp:Label>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

        <div class="result-wrapper">
            <div class="container">
                <div class="row">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <div class="result-area inline-area header-second-area col-lg-4 ">
                                <div class="result-title-outer">
                                    <asp:Label ID="LblOrderTitle" runat="server" Text="受注総個数"></asp:Label>
                                </div>                           
                                <div class="result-count-outer">
                                    <asp:Label ID="LblOrderCount" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="result-area inline-area header-second-area col-lg-4 ">
                                <div class="result-title-outer">
                                    <asp:Label ID="LblListTitle" runat="server" Text="リスト総個数"></asp:Label>
                                </div>
                                <div class="result-count-outer">
                                    <asp:Label ID="LblListCount" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="result-area inline-area header-second-area col-lg-4 ">
                                <div class="result-title-outer">
                                    <asp:Label ID="LblInspectTitle" runat="server" Text="検品総個数"></asp:Label>
                                </div>
                                <div class="result-count-outer">
                                    <asp:Label ID="LblInspectCount" runat="server"></asp:Label>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
