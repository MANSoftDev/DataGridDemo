using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace DataGridDemo
{
	/// <summary>
	/// Summary description for WebForm4.
	/// </summary>
	public class Cart : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DataGrid DataGrid1;
		protected System.Web.UI.WebControls.Button Button1;
		protected System.Data.SqlClient.SqlConnection sqlConnection1;
		private Hashtable hashQty = new Hashtable();
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			BindData();
		}

		private void BindData()
		{
			// Select from the authors table of the pubs database
			SqlCommand sqlCmd = new SqlCommand("SELECT * FROM authors", sqlConnection1);
			sqlCmd.CommandType = CommandType.Text;

			sqlConnection1.Open();
			// Set the data source for this datagrid to the datareader
			// returned from the ExecuteReader method
			DataGrid1.DataSource = sqlCmd.ExecuteReader();

			// Bind the datagrid to the datasource
			DataGrid1.DataBind();
			sqlConnection1.Close();
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.sqlConnection1 = new System.Data.SqlClient.SqlConnection();
			this.Button1.Click += new System.EventHandler(this.Button1_Click);
			// 
			// sqlConnection1
			// 
			this.sqlConnection1.ConnectionString = "data source=MOBILEMAN;initial catalog=pubs;integrated security=SSPI;persist secur" +
				"ity info=False;workstation id=MOBILEMAN;packet size=4096";
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		protected void OnQtyChanged( object sender, System.EventArgs e)
		{
			// Get the DataGrid row from the sender
			DataGridItem Item = (DataGridItem)(((System.Web.UI.Control)sender).NamingContainer);
			
			// Get the TextBox control in the first cell
			TextBox txtQty = (TextBox)Item.Cells[0].Controls[1];
			
			// The au_id field is not an int but if it were...
			//int nID = (int)DataGrid1.DataKeys[Item.ItemIndex];
			// For this demo just use the ItemIndex
			int nID = Item.ItemIndex;

			// Now add to the HashTable
			hashQty.Add(nID, int.Parse(txtQty.Text));
		}

		private void Button1_Click(object sender, System.EventArgs e)
		{
			string s = sender.ToString();
		}
	}
}
