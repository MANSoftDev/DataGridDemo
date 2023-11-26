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
	public class Edit : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.DataGrid DataGrid1;
		protected System.Data.SqlClient.SqlConnection sqlConnection1;
	
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
			this.DataGrid1.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.OnCancel);
			this.DataGrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.OnEdit);
			this.DataGrid1.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.OnUpdate);
			// 
			// sqlConnection1
			// 
			this.sqlConnection1.ConnectionString = "data source=MOBILEMAN;initial catalog=pubs;integrated security=SSPI;persist secur" +
				"ity info=False;workstation id=MOBILEMAN;packet size=4096";
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void OnEdit(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex = e.Item.DataSetIndex;
			BindData();
		}

		private void OnUpdate(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			// Process updated data here

			DataGrid1.EditItemIndex = -1;
			BindData();
		}

		private void OnCancel(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex = -1;
			BindData();
		}
	}
}
