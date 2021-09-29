<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="ProjetoWeb.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
	<div class="row">
		<!-- FORMULÁRIO DE ENTRADA DE DADOS -->
		<div class="col-6">
			<div class="box border">
				<h2>Entre em contato</h2>
				<br />
				<asp:Label ID="Erro" runat="server" Font-Bold="true" Font-Size="16px" ForeColor="red"></asp:Label>
				<label>Seu nome</label>
				<asp:TextBox ID="SeuNome" MaxLength="100" runat="server"></asp:TextBox>
				<label>Seu E-mail</label>
				<asp:TextBox ID="SeuEmail" MaxLength="255" TextMode="Email" runat="server"></asp:TextBox>
				<label>Mensagem</label>
				<asp:TextBox ID="Mensagem" TextMode="Multiline" Rows="8" MaxLenght="1000" runat="server"></asp:TextBox>
				<br />
				<asp:Button ID="Enviar" OnClick="Enviar_Click" Text="Enviar" runat="server"/>
			</div>
		</div>
		<!-- MAPA -->
		<div class="col-6">
			<div class="box border">
				<iframe 
					src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14718.767977128833!2d-47.
					3501613!3d-22.7396868!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xffb368bd91ea12ae!2s
					Fatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana!5e0!3m2!1sen!2sbr!
					4v1632871273928!5m2!1sen!2sbr" width="530" height="450" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
			</div>

		</div>
	</div>
</asp:Content>
