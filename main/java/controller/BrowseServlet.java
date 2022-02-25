package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessLogic.CategoryBL;
import businessLogic.ProductBL;
import javaBean.Category;
import javaBean.Product;

/**
 * Servlet implementation class BrowserServlet
 */
@WebServlet({"/BrowseServlet","/browse.html"})
public class BrowseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BrowseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		Category ct = CategoryBL.docTheoCategoryId(categoryId);
		
		List<Product> dssp = ProductBL.docTatCa();
		List<Product> dsspBrowse = new ArrayList<>();
		for (Product p : dssp) {
			if (p.getTitle().contains(ct.getCategoryName())) {
				dsspBrowse.add(p);
			}
		}
		
		List<Category> dspl = CategoryBL.docTatCa();
		
		request.setAttribute("dspl", dspl);
		request.setAttribute("dsspBrowse", dsspBrowse);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
