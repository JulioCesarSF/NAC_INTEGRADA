package br.com.fiap.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fiap.conexao.Conexao;

/**
 * Servlet para testes
 * 
 * @author Guardiões do Código
 *
 */
@WebServlet("/testes")
@SuppressWarnings("serial")
public class Testes extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String acao = new String(req.getParameter("acao"));

		switch (acao) {
		case "testeConexao":
			String usuario = req.getParameter("usuario");
			String senha = req.getParameter("senha");
			testeConexao(usuario, senha, req, resp);
			break;

		default:
			break;
		}
	}

	/**
	 * Método para teste conexão com banco de dados. Teste acessado pela página
	 * testes.jsp
	 * 
	 * @param usuario Usuário no banco de dados
	 * @param senha Senha no banco de dados
	 * @param req
	 * @param resp
	 * @throws ServletException
	 * @throws IOException
	 */
	private void testeConexao(String usuario, String senha, HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Connection c = null;
		try {
			c = new Conexao().getInst().getConnection("OPS$RM" + usuario, senha, req);
			req.setAttribute("retornoTesteConexao", "btn-success");
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("retornoTesteConexao", "btn-danger");
			req.setAttribute("excecao", e.getMessage());
		} finally {
			try {
				if (c != null) {
					c.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
				req.setAttribute("retornoTesteConexao", "btn-danger");
				req.setAttribute("excecao", e.getMessage());
			}
			req.getRequestDispatcher("testes.jsp").forward(req, resp);
		}
	}

}
