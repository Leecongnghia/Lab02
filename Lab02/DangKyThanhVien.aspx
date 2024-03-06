<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab02.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">HỒ SƠ ĐĂNG KÝ</h2>
            <div class="row border border-primary bg-danger">
                <div class="col-md-8 pt-2 text-center">
                    Thông tin đăng ký
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                    Hồ sơ đăng nhập
                </div>
            </div>
            <div class="row border border-primary ">
                <div class="col-md-8 ">
                    <div class="row mt-2 mb-2">
                        <div class="col-md-3">
                            Tên đăng nhập
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2 mb-2">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mt-2 mb-2">
                        <div class="col-md-3">
                            Nhập lại mật khẩu
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox3" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-12 text-center p-2 bg-danger">
                            Thông tin cá nhân
                        </div>
                        <div class="col-md-3">
                            Họ tên khách hàng
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Ngày sinh
                        </div>
                        <div class="col-md-9">
                            <asp:DropDownList ID="ddNgay" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="ddThang" runat="server"></asp:DropDownList>
                            <asp:DropDownList ID="ddNam" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Email
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Thu nhập
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Giới tính
                        </div>
                        <div class="col-md-9">
                            <asp:CheckBox ID="checkGioiTinh" runat="server" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Giới tính
                        </div>
                        <div class="col-md-9">
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Điện thoại
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            <asp:Button ID="btDangky" runat="server" Text="Đăng Ký" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <asp:Label ID="lbketqua" runat="server" Text=""></asp:Label>
                </div>
        </div>
    </form>
</body>
</html>
