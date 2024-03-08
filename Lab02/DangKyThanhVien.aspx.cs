using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class DangKyThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlNgay.Items.Add(new ListItem("--Chọn Ngày--", ""));
                for (int i = 1; i <= 31; i++)
                {
                    ddlNgay.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

                ddlThang.Items.Add(new ListItem("--Chọn Tháng--", ""));
                for (int i = 1; i <= 12; i++)
                {
                    ddlThang.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }

                ddlNam.Items.Add(new ListItem("--Chọn Năm--", ""));
                for (int i = 1950; i <= 2010; i++)
                {
                    ddlNam.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }    
        }

        protected void btDangKy_Click(object sender, EventArgs e)
        {
            //B1:Thu nhập Thông tin
            string kq = "<ul>";
            kq += $"<li>Họ tên Khách hàng: {txtHoTen.Text}</li>";
            kq += $"<li>Tên đăng nhập: {txtTenDN.Text}</li>";
            kq += $"<li>Mật khẩu: {txtMK.Text}</li>";
            kq += $"<li>Ngày sinh: {ddlNgay.SelectedValue}/{ddlThang.SelectedValue}/{ddlNam.SelectedValue}</li>";
            kq += $"<li>Email: {txtEmail.Text}</li>";
            kq += $"<li>Thu Nhập: {txtThuNhap.Text}</li>";

            kq += "</ul>";

            //B2:Trả kết quả về client
            lbKetQua.Text = kq;
        }
    }
}