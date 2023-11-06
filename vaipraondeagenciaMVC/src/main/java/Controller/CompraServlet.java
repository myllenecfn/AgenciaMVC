package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompraDAO;
import dao.PacoteDAO;
import dao.UsuarioDAO;
import modelos.Compras;
import modelos.Pacotes;
import modelos.Usuarios;
import vaipraondeagencia.dominio.Pacote;
import vaipraondeagencia.dominio.Usuario;

@WebServlet(urlPatterns = { "/compra", "/compra-getCreate", "/compra-create", "/compra-edit", "/compra-update", "/compra-delete" })
public class CompraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CompraDAO cdao = new CompraDAO();
	PacoteDAO ldao = new PacoteDAO();
	UsuarioDAO udao = new UsuarioDAO();
	Compras compra = new Compras();

    public CompraServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		case "/compra":
			read(request, response);
			break;
		case "/compra-getCreate":
			getCreate(request, response);
			break;
		case "/compra-create":
			create(request, response);
			break;
		case "/compra-edit":
			edit(request, response);
			break;
		case "/compra-update":
			update(request, response);
			break;
		case "/compra-delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("index.html");
			break;
		}

	}

	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Compras> lista = cdao.read();

		request.setAttribute("listaCompras", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./views/compras/index.jsp");
		rd.forward(request, response);

	}
	
	protected void getCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Pacote> listaPacote = pdao.read();
		request.setAttribute("listaPacote", listaPacote);
		
		List<Usuarios> listaUsuarios = udao.read();
		request.setAttribute("listaUsuarios", listaUsuarios);
		
		RequestDispatcher rd = request.getRequestDispatcher("./views/compras/create.jsp");
		rd.forward(request, response);
	}

	protected void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Usuarios usuario = udao.readById(Integer.parseInt(request.getParameter("usuario")));
		Pacotes pacote = ldao.readById(Integer.parseInt(request.getParameter("pacote")));
		
		String data = request.getParameter("data");
		
		compra = new Compras(data, usuario, pacote);
		
		cdao.create(compra);
		response.sendRedirect("compra");
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		
		compra = cdao.readById(id);
		
		request.setAttribute("compra", compra);
		
		List<Pacote> listaPacote = ldao.read();
		request.setAttribute("listaPacote", listaPacote);
		
		List<Usuario> listaUsuarios = udao.read();
		request.setAttribute("listaUsuarios", listaUsuarios);

		RequestDispatcher rd = request.getRequestDispatcher("./views/compras/update.jsp");
		rd.forward(request, response);
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		compra.setId(Integer.parseInt(request.getParameter("id")));
		compra.setUsuario(udao.readById(Integer.parseInt(request.getParameter("usuario"))));
		compra.setPacote(ldao.readById(Integer.parseInt(request.getParameter("pacote"))));
		compra.setData_compra(request.getParameter("data"));

		cdao.update(compra);
		response.sendRedirect("compra");
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		cdao.delete(id);
		response.sendRedirect("compra");
	}

}