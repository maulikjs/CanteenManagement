using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class SalesBasedOnDate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=dell\sqlexpress;Initial Catalog=canteen;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dt = Convert.ToDateTime(TextBox1.Text);
        string date = dt.ToString("dd/MM/yyyy");
       
        DateTime tt = Convert.ToDateTime(TextBox2.Text);
        string date2 = tt.ToString("dd/MM/yyyy");

        if (dt > tt)
        {
            Page.ClientScript.RegisterStartupScript(GetType(),"msgtype","alert('Select Date Properly !!!')",true);
        }
        else
        {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string ol = "select foodname,quantity,amount,date from transact where date >= '" + date + "' and date<='" + date2+ "'";
        da = new SqlDataAdapter(ol, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('No Data Available !!!')", true);
        }


        }
    }
}