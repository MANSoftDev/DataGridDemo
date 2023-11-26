<%@ Page language="c#" Codebehind="bound.aspx.cs" AutoEventWireup="false" Inherits="DataGridDemo.WebForm2" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm2</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio 7.0">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<p>This example uses bound columns</p>
		<form id="WebForm2" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 11px; POSITION: absolute; TOP: 45px" runat="server" AutoGenerateColumns="False">
				<Columns>
					<asp:BoundColumn DataField="au_fname" HeaderText="First Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="au_lname" HeaderText="Last Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="city" HeaderText="City"></asp:BoundColumn>
				</Columns>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
