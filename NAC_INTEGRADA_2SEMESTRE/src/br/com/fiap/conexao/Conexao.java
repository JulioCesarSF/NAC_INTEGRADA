package br.com.fiap.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import br.com.fiap.util.Arquivo;

/**
 * Classe responsável por configurar o driver do banco de dados 
 * e pela <i>conexão</i>.
 * 
 * Classe com implementação Singleton.
 * 
 * Chamados os métodos dessa classe pelo método getInst(),
 * ex: Conexao.getInst().getConnection()
 * 
 * @author Guardões do Código
 *@see Arquivo
 */
public final class Conexao {

	/**
	 * Atributo estatico para compartilhar a conexão
	 */
	private static Conexao con = null;

	/**
	 * Construtor vazio para ser usado pelo método getInst()
	 */
	public Conexao() {
	}

	/**
	 * Método reponsavel pelo singleton
	 * @return Objeto Conexao
	 */
	public Conexao getInst() {
		if (con == null)
			con = new Conexao();
		return con;
	}

	/**
	 * Método responsável pela conexão com o banco de dados.
	 * Método para testes em classe fora de servlet.
	 * 
	 * @param usuario Usuário no Banco de Dados
	 * @param senha Senha no Banco de Dados
	 * @return Connection, conexão
	 * @throws Exception
	 * @see Arquivo
	 */
	public Connection getConnection(String usuario, String senha) throws Exception {

		Map<String, String> cfg = Arquivo.pegarServidor();		

		Class.forName(cfg.get("driver"));

		return DriverManager.getConnection(cfg.get("url"), usuario, senha);
	}

	/**
	 * Método responsável pela conexão com o banco de dados.
	 * Método para testes em classe fora de servlet.	 * 
	 * @return Connection, conexão
	 * @throws Exception
	 * @see Arquivo
	 */
	public Connection getConnection() throws Exception {

		Map<String, String> cfg = Arquivo.pegarServidor();

		Class.forName(cfg.get("driver"));

		return DriverManager.getConnection(cfg.get("url"));
	}

	/**
	 * Método responsável pela conexão com o banco de dados
	 * Este método deve ser usado no servlet
	 * 
	 * @param usuario Usuário no Banco de Dados
	 * @param senha Senha no Banco de Dados
	 * @param req HttpServetRequest usado para pegar o diretório no servidor
	 * @return Connection, conexão
	 * @throws Exception
	 * @see Arquivo
	 */
	public Connection getConnection(String usuario, String senha, HttpServletRequest req) throws Exception {

		Map<String, String> cfg = Arquivo.pegarServidor(req);		

		Class.forName(cfg.get("driver"));

		return DriverManager.getConnection(cfg.get("url"), usuario, senha);
	}

	/**
	 * Método responsável pela conexão com o banco de dados
	 * Este método deve ser usado no servlet
	 * @param req HttpServetRequest usado para pegar o diretório no servidor
	 * @return Connection, conexão
	 * @throws Exception
	 * @see Arquivo
	 */
	public Connection getConnection(HttpServletRequest req) throws Exception {

		Map<String, String> cfg = Arquivo.pegarServidor(req);

		Class.forName(cfg.get("driver"));

		return DriverManager.getConnection(cfg.get("url"));
	}

}
