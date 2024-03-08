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
                    Hồ sơ đăng ký
                </div>
            </div>
            <div class="row border border-primary ">
                <div class="col-md-8 ">
                    <div class="row mt-2 mb-2">
                        <div class="col-md-3">
                            Tên đăng nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtTenDN" runat="server" MaxLength="16" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenDN" Text="(*)" ForeColor="Red"
                                runat="server" ErrorMessage="Tên đăng nhập không được rỗng" 
                                ControlToValidate="txtTenDN" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revTenDN" ControlToValidate="txtTenDN"
                                Text="*" Display="Dynamic" CssClass="text-danger" ValidationExpression="[\w|\d|&|_|!]{8}[\w|\d|_|!]+"
                                runat="server" ErrorMessage="Tên đăng nhập không hợp lệ"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMK" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMK" Text="(*)" ForeColor="Red" 
                                runat="server" ErrorMessage="Mật khẩu không được rỗng" 
                                ControlToValidate="txtMK" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Nhập lại mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMkNhapLai" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMKNhapLai" Text="(*)" ForeColor="Red"
                                runat="server" ErrorMessage="Mật khẩu nhập lại không được rỗng" 
                                ControlToValidate="txtMkNhapLai" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvMkNhapLai" runat="server" 
                                ErrorMessage="Mật khẩu nhập lại không đúng" Text="(*)" 
                                CssClass="red" Display="Dynamic" ControlToCompare="txtMK" 
                                ControlToValidate="txtMkNhapLai"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-12 text-center p-2 bg-danger">
                            Thông tin cá nhân
                        </div>
                        <div class="col-md-3">
                            Họ tên khách hàng
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvHoTen" Text="(*)" ForeColor="Red"
                                runat="server" ErrorMessage="Họ tên không được rỗng" 
                                ControlToValidate="txtHoTen" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Ngày sinh
                        </div>
                        <div class="col-md-9">
                            <div class="form-inline">
                            <asp:DropDownList ID="ddlNgay" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvNgay" Text="(*)" runat="server" 
                                ErrorMessage="Chưa chọn ngày" ControlToValidate="ddlNgay" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlThang" runat="server" CssClass="form-control" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvThang" Text="(*)" runat="server" 
                                ErrorMessage="Chưa chọn tháng" ControlToValidate="ddlThang" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:DropDownList ID="ddlNam" runat="server" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvNam" Text="(*)" runat="server" 
                                ErrorMessage="Chưa chọn năm" ControlToValidate="ddlNam" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                       </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Email
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" runat="server" Text="(*)" ForeColor="Red"
                                CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ErrorMessage="Email không hợp lệ" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Thu nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RangeValidator ID="rvThuNhap" runat="server" Display="Dynamic" Text="(*)"
                                ControlToValidate="txtThuNhap" ErrorMessage="Thu nhập hợp lệ [1-50] triệu" 
                                MaximumValue="50000000" MinimumValue="1000000"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Giới tính
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:CheckBox ID="checkPhai" Text="Nam" Checked="true" runat="server" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Địa chỉ
                        </div>
                        <div class="col-md-9 form-inline">
                           <asp:TextBox ID="txtDiaChi" runat="server" TextMode="MultiLine" 
                               Rows="4" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Điện thoại
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            <asp:Button ID="btDangKy" CssClass="btn btn-danger" runat="server" Text="Đăng Ký" OnClick="btDangKy_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4 border ">
                    <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
                    <asp:ValidationSummary ID="vsTHLoi" HeaderText="Danh Sách Lỗi:" runat="server" CssClass="text-danger"
                        />
                </div>
            </div>
       </div>
    </form>
</body>
</html>
