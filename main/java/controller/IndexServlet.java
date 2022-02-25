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
 * Servlet implementation class IndexServlet
 */
@WebServlet({"/IndexServlet","/index.html"})
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static int soDongTrang=6;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Thi sinh viet them cac lenh vao day de thuc hien yeu cau
		//???
		
		List<Product> dssp = ProductBL.docTatCa();
		request.setAttribute("dssp", dssp);
		
		List<Category> dspl = CategoryBL.docTatCa();
		request.setAttribute("dspl", dspl);
		
		System.out.println("dssp " + dssp);
		System.out.println("dspl " + dspl);
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
