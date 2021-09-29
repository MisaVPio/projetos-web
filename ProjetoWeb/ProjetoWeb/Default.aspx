<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">
	<div class="flexslider">
		<ul class="slides">
			<li>
				<img src="Images/banner3.png" />
			</li>
			<li>
				<img src="Images/banner2.png">
			</li>
			<li>
				<img src="Images/banner0.png" />
			</li>
		</ul>
	</div>
	<script>
		// Can also be used with $(document).ready()
		$(window).load(function () {
			$('.flexslider').flexslider({
				animation: "slide"
			});
		});
	</script>
	<div style="margin-top: 60px; margin-bottom: 60px;">
		<div class="row">
			<div class="col-6">
				<div class="box border">
					<img src="Images/si1.png" width="100%" />
					<h3>REGRAS DE SEGURANÇA</h3>
					<p style="text-align: justify;">
						Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
						nisi ut aliquip ex ea commodo consequat.
					</p>
				</div>
			</div>
			<div class="col-3">
				<div class="box">
					<img src="Images/si2.jpg" width="100%" />
					<br />
					<p>
						aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate ve
					</p>
				</div>
			</div>
			<div class="col-3">
				<div class="box">
					<img src="Images/si4.jpg" width="100%" />
					<br />
					<p>
						aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate ve
					</p>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-4">
			<div class="box">
				eritatis et quasi architecto beatae vitae dicta sunt expl
			</div>
		</div>
		<div class="col-3">
			<div class="box">
				eritatis et quasi architecto beatae vitae dicta sunt expl
			</div>
		</div>
		<div class="col-3">
			<div class="box">
				eritatis et quasi architecto beatae vitae dicta sunt expl
			</div>
		</div>
		<div class="col-2">
			<div class="box">
				eritatis et quasi architecto beatae vitae dicta sunt expl
			</div>
		</div>

	</div>
</asp:Content>
