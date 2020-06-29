package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Temprature;
import servise.addTempMorningSER;

/**
 * Servlet implementation class addTempMorning
 */
@WebServlet("/addTempMorning")
public class addTempMorning extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addTempMorning() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String tid = request.getParameter("tid");
		 String sid = request.getParameter("sid");
		 String mtemp = request.getParameter("mtemp");
		
		
		
		 
		 Temprature temprature1 = new Temprature();
		 //Using Java Beans - An easiest way to play with group of related data
		 temprature1.setTid(tid);
		temprature1.setSid(sid);
		temprature1.setMtemp(mtemp);
		
	
		
		 
		addTempMorningSER Sercice_Akshi1 = new addTempMorningSER();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String morningtemp = Sercice_Akshi1.addTemp(temprature1);
		 
		 if(morningtemp.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/home.jsp").forward(request, response);
		  System.out.println("added");
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", morningtemp);
		 //request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
		 }
		 }

	private String addTemp(Temprature temprature1) {
		// TODO Auto-generated method stub
		return null;
	}
	}