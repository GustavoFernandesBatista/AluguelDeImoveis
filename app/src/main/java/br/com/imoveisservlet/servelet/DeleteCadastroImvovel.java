package br.com.imoveisservlet.servelet;

import br.com.imoveisservlet.dao.CadastroImovelDao;
import br.com.imoveisservlet.model.CadastroImovel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete-cadastroImovel")
public class DeleteCadastroImvovel extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String CadastroImovelId = req.getParameter("id");

        new CadastroImovelDao().deleteCadastroImovelById(CadastroImovelId);

        resp.sendRedirect("/painel-imovel");
    }
}
