<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab02.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
</head>
<body>
       <br />
    <form id="form" runat="server">
        <div class="row w-50 m-auto border border-primary">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12 text-center bg-success">
                        <h3 class="text-center">ĐƠN ĐẶT HÀNG</h3>
                    </div>
                </div>
                <br />
                <div class="row mb-2">
                    <div class="col-md-3">
                        Khách hàng: 
                    </div>
                    <div class="col-9" >
                        <asp:TextBox ID="txtkhachhang" runat="server" Width="770px" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-3">
                        Địa chỉ: 
                    </div>
                    <div class="col-9">
                        <asp:TextBox ID="txtdiachi" runat="server" Width="770px" CssClass="form-control"></asp:TextBox>
                    </div>
                    <br />
                </div>
                <div class="row mb-2">
                    <div class="col-md-3">
                        Mã số thuế:
                        <asp:TextBox ID="txtmsthue" runat="server" Width="769px" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-9">
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-6 border-top border-left border-bottom border-primary">
                        Chọn các loại bánh sau:
                        
                        <asp:DropDownList ID="ddlbanh" CssClass="form-control" runat="server" Width="123px">
                        </asp:DropDownList>
                        <div class="form-inline">
                        Số lượng
                        <asp:TextBox ID="txtsoluong" runat="server" CssClass="form-control" Width="82px"></asp:TextBox>Cái
                            &nbsp;<asp:RequiredFieldValidator ID="rfvsoluong" runat="server" 
                                ErrorMessage="Chưa nhập số lượng !" ControlToValidate="txtsoluong" 
                                ForeColor="Red">(*)</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvsoluong" runat="server" 
                                ErrorMessage="Số lượng không hợp lệ !" ControlToValidate="txtsoluong" 
                                ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0">(*)</asp:CompareValidator>
                        </div>    
                        <asp:Button ID="btnthem" runat="server" Text=">" OnClick="btnThem_Click" Width="20%" />
                    </div>
                     <div class="col-md-6 border-top border-bottom border-primary">
                    <div class="col-md-6">
                        Danh Sách bánh được đặt
                        <br />
                        <asp:ListBox ID="lbxbanh" runat="server" Width="98%" SelectionMode="Multiple">
                            
                        </asp:ListBox>
                        <asp:Button ID="btxoa" runat="server" CssClass="btn-danger icon-link-hover" Text="Xóa" OnClick="btxoa_Click" />
                        <i class="bi bi-trash"></i>
                    </div>
                </div>
                </div>
               
                <div class="row mb-2">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btin" runat="server" Text="In Đơn Đặt Hàng" />
                    </div>

                    <asp:ValidationSummary ID="vstbloi" runat="server" ShowMessageBox="True" ShowSummary="False" />
                    
                </div>
            </div>
        </div>
        
    </form>




</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
