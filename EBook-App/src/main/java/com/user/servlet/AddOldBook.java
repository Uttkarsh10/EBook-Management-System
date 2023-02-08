package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.BookDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/add_old_book")
@MultipartConfig
public class AddOldBook extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String categories = "Old";
			String status = "Active";
			Part part = req.getPart("bimg");
			String filename = part.getSubmittedFileName();
			String userEmail = req.getParameter("user");
			
			BookDtls b = new BookDtls(bookName, author, price, categories, status, filename, userEmail);
			
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getconn());
			
			boolean f = dao.addBooks(b);
			HttpSession session = req.getSession();
			
			if(f) {
				
				String path = getServletContext().getRealPath("")+"Book";
				//System.out.println(path);
				java.io.File file =new java.io.File(path);
				part.write(path + java.io.File.separator + filename);
				session.setAttribute("succMsg", "Books Added Successfully");
				resp.sendRedirect("sell_book.jsp");
			}
			
			else {
				session.setAttribute("failedMsg", "Something wrong on the server");
				resp.sendRedirect("sell_book.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
