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
            string data = $"{ddlbanh.SelectedItem.Text} ({txtsoluong.Text})";
            lbxbanh.Items.Add(data);
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
    }
}