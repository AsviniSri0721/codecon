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
 * Servlet implementation class addTempAfternoon
 */
@WebServlet("/addTempAfternoon")
public class addTempAfternoon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addTempAfternoon() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String tid = request.getParameter("tid");
		 String sid = request.getParameter("sid");
		 String atemp = request.getParameter("atemp");
		
		
		
		 
		 Temprature temprature2 = new Temprature();
		 //Using Java Beans - An easiest way to play with group of related data
		 temprature2.setTid(tid);
		temprature2.setSid(sid);
		temprature2.setMtemp(atemp);
		
	
		
		 
		addTempMorningSER Sercice_Akshi1 = new addTempMorningSER();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String morningtemp = Sercice_Akshi1.addTemp(temprature2);
		 
		 if(morningtemp.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 //request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
		System.out.println("added");
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", morningtemp);
		 //request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
		 }
		 }

	private String addTemp(Temprature temprature2) {
		// TODO Auto-generated method stub
		return null;
	}
	}