package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Student;
import servise.AddStudentService;

/**
 * Servlet implementation class AddStudent_Servlet
 */
@WebServlet("/AddStudent_Servlet")
public class AddStudent_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddStudent_Servlet() {
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
		//doGet(request, response);
		String sid = request.getParameter("sid");
		 String fname = request.getParameter("fname");
		 String classid = request.getParameter("classid");
		 String pname= request.getParameter("pname");
		 String phone = request.getParameter("phone");
		 String address = request.getParameter("address");
		
		
		 
		 Student student1 = new Student();
		 //Using Java Beans - An easiest way to play with group of related data
		 student1.setSid(sid);
		 student1.setFname(fname);
		 student1.setClassid(classid);
		 student1.setPname(pname);
		 student1.setPhone(phone);
		 student1.setAddress(address);
	
		
		 
		AddStudentService Sercice_Akshi = new AddStudentService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String Registeredstudent = Sercice_Akshi.addStudent(student1);
		 
		 if(Registeredstudent.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/home.jsp").forward(request, response);
		  System.out.println("hooooooooooooooooo");
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", Registeredstudent);
		 //request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
		 }
		 }
	}

