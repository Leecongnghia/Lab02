<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab02.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />
    <style type="text/css">
        .form-inline {
            width: 916px;
        }
    </style>
</head>
<body>
       <br />
    <form id="form" runat="server">
        <div class="row w-50 m-auto border border-primary">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12 text-center bg-primary">
                        <h3 class="text-center">ĐƠN ĐẶT HÀNG</h3>
                    </div>
                </div>
                <br />
                <div class="row mb-2">
                    <div class="col-2">
                       Khách hàng: 
                        </div>
                        <div class="col-6" >
                            <asp:TextBox ID="txtkhachhang" runat="server" Width="620px" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvhoten" runat="server" 
                        ErrorMessage="Chưa nhập tên khách hàng !" Text="Chưa nhập tên khách hàng(*)" ControlToValidate="txtkhachhang" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-2">
                        Địa chỉ: 
                    </div>
                    <div class="col-6">
                        <asp:TextBox ID="txtdiachi" runat="server" Width="620px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvhoten0" runat="server" 
                        ErrorMessage="Chưa nhập địa chỉ !" Text="Chưa nhập địa chỉ(*)" ControlToValidate="txtdiachi" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                </div>
                <div class="row mb-2">
                    <div class="col-2">
                        Mã số thuế:
                        </div>
                    <div class="col-6">
                        <asp:TextBox ID="txtmsthue" runat="server" Width="620px" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvhoten1" runat="server" 
                        ErrorMessage="Chưa nhập mã số thuế !" Text="Chưa nhập mã số thuế(*)" ControlToValidate="txtmsthue" 
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-6 border-top border-right border-bottom border-primary font-monospace">
                        Chọn các loại bánh sau:
                        
                        <asp:DropDownList ID="ddlbanh" CssClass="form-control" runat="server" Width="199px">
                        </asp:DropDownList>
                        <div class="form-inline">
                            Số lượng
                            </div>
                        <div class="form-inline">
                        <asp:TextBox ID="txtsoluong" runat="server" CssClass="form-control" Width="82px"></asp:TextBox>Cái
                            &nbsp;
                            
                         </div>
                        <asp:RequiredFieldValidator ID="rfvsoluong" runat="server" 
                                ErrorMessage=" !" ControlToValidate="txtsoluong" 
                                Text="Chưa nhập số lượng(*)"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvsoluong" runat="server" 
                                ErrorMessage=" !" ControlToValidate="txtsoluong"
                                Text="Số lượng không hợp lệ(*)"
                                ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
                        <asp:Button ID="btnthem" runat="server" Text=">" OnClick="btnThem_Click" Width="20%" />
                    </div>
                     <div class="col-md-6 border-top border-bottom border-primary font-monospace">
                    <div class="col-md-10">
                        Danh Sách bánh được đặt
                        <br />
                        <asp:ListBox ID="lbxbanh" runat="server" Width="98%" SelectionMode="Multiple">
                            
                        </asp:ListBox>
                        <asp:Button ID="btxoa" runat="server" CssClass="btn-danger icon-link-hover" Text="Xóa" OnClick="btxoa_Click" />
                        <asp:LinkButton ID="LinkButton1" runat="server"><i class="bi bi-trash"></i></asp:LinkButton>
                        
                    </div>
                </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-12 text-center">
                        <asp:Button CssClass=" btn btn-primary" ID="btin" runat="server" Text="In Đơn Đặt Hàng" OnClick="btin_Click" />
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-md-12 text-center">
                        <asp:ValidationSummary ID="vstbloi" runat="server" ShowSummary="False" />
                    </div>
                </div> 
            </div>
        </div>      
    </form>
    <form1  id="form1" runat="server" >
    <div class="row w-50 m-auto ">
        <asp:Label ID="lbketqua" runat="server"></asp:Label>
            </div>
        <br />
        </form1>




</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
