using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProjetoWeb.App_Code
{
	public class RecuperarExecao
	{
		public void SalvarExcecao(Exception exc) {
			//REGISTRA OS DADOS DA EXCEÇÃO NO ARQUIVO TEXTO: excecoes.txt

			string conteudo = "";
			conteudo = "Data: "+DateTime.Now.ToString()+"\n";
			conteudo += "Mensagem: " + exc.Message + "\n";
			conteudo += "-------------\n";

			//SALVA O ARQUIVO NO DISCO

			string caminhoFisico = System.Web.HttpContext.Current.Server.MapPath("~/excecoes.txt");
			System.IO.File.AppendAllText(caminhoFisico, conteudo);
		}
	}
}