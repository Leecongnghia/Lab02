using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab02
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //Khởi tạo dữ liệu cho ddBanh
                ddlbanh.Items.Add(new ListItem("Hamburger", "01"));
                ddlbanh.Items.Add(new ListItem("Bánh Croissant bơ", "02"));
                ddlbanh.Items.Add(new ListItem("Bánh bò nướng", "03")); 
                ddlbanh.Items.Add(new ListItem("Bánh mỳ Pate", "04")); 
            }    
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            bool checkExist = false;
            char[] delim = { '(', ')' };
            int soluong;
            //Kiểm tra nếu tồn tại
            for (int i = 0; i < lbxbanh.Items.Count; i++)
            {
                string itemText = lbxbanh.Items[i].Text;
                if (itemText.Contains(ddlbanh.SelectedItem.Text))
                {
                    //Xử lý cộng dồn số lượng
                    string[] arr = itemText.Split(delim);
                    soluong = int.Parse(txtsoluong.Text) + int.Parse(arr[1]);
                    lbxbanh.Items[i].Text = $"{ddlbanh.SelectedItem.Text} ({soluong})";
                    checkExist = true;
                    break;
                }
            }    


            //Kiểm tra nếu không tồn tại
            if (!checkExist)
            {
                string data = $"{ddlbanh.SelectedItem.Text} ({txtsoluong.Text})";
                lbxbanh.Items.Add(data);
            }
        }

        protected void btxoa_Click(object sender, EventArgs e)
        {
            /*int index = lbxbanh.SelectedIndex;
            lbxbanh.Items.RemoveAt(index);*/
            for (int i = lbxbanh.Items.Count -1; i >= 0; i--)
            {
                if (lbxbanh.Items[i].Selected)
                {
                    lbxbanh.Items.RemoveAt(i);
                }    
            }    
        }

        protected void btin_Click(object sender, EventArgs e)
        {
            string kq = "";
            //b1:Thu thập thông tin
            kq += "<h3 class='text-center'> HÓA ĐƠN ĐẶT HÀNG </h3>";
            kq += "<div class= 'border border-primary'>";
            kq += "Khách hàng: <i>" + txtkhachhang.Text + "</i><br>";
            kq += "Địa chỉ: <i>" + txtdiachi.Text + "</i><br>";
            kq += "Mã số thuế: <i>" + txtmsthue.Text + "</i><br>";

            kq += "<b>Đặt các loại bánh sau: </b>";
            kq += "<table class='table table-bordered'>";
            char[] delim = { '(', ')' };
            foreach(ListItem item in lbxbanh.Items)
            {
                string[] arr = item.Text.Split(delim);
                kq += "<tr>";
                kq += $"<td> {arr[0]} </td><td> {arr[1]} </td>";
                kq += "</tr>";
            }

            kq += "</table>";
            kq += "</div>";

            //b2:Gửi Thông tin về clien
            lbketqua.Text = kq;

        }
    }
}