package banking.ui;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import banking.*;
import banking.details.*;
import banking.management.BankingEngine;
import banking.management.PersistenceException;


@WebServlet("/BankingServlet")
public class BankingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public BankingServlet() {
		super();
		try {
			BankingEngine.INSTANCE.kickStart();
			System.out.println("loaded and ready");
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
	}

	
	protected void processCustomerRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		HashMap<Long, Customers> map=null;
		ArrayList list= null;
		try {
			list = (ArrayList) BankingEngine.INSTANCE.getCustomerDetails();
		} catch (PersistenceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("data", list);
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/Customers.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String option = request.getParameter("option");
		System.out.println(option);
		if(option != null) {
		if(option.equals("Customers")) {
			processCustomerRequest(request, response);
		}
		else if(option.equals("Accounts")) {
	        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Accounts.jsp");
	        dispatcher.forward(request, response);
			}
		else if(option.equals("Transactions")) {
	        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Transactions.jsp");
	        dispatcher.forward(request, response);
			}
		else if(option.equals("AddAccount")) {
	        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AddAccount.jsp");
	        dispatcher.forward(request, response);
			}
		else if(option.equals("AddCustomer")) {
	        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AddCustomer.jsp");
	        dispatcher.forward(request, response);
			}
		else if(option.equals("AddCustomerToApplication")) {
			HashMap<String, ArrayList<ArrayList<Object>>> map = AddCustomerToApplication(request, response);
			PrintWriter writer= response.getWriter();
			writer.write(map.toString());
			}
		else if(option.equals("Delete")) {
			long customerID= Long.parseLong(request.getParameter("id"));
			System.out.println(customerID);
			try {
				BankingEngine.INSTANCE.deleteCustomer(customerID);
				PrintWriter writer= response.getWriter();
				writer.write("<html>"
						+ "<head><title> Result"
						+ "</title></head>"
						+ "</html>");
				writer.write("Successfully Deleted "+customerID);
				
			} catch (PersistenceException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			}
		
		
		
		else if(option.equals("Exit")) {
			BankingEngine.INSTANCE.closeConnection();
			}
		}
		
		/*
		 * response.setContentType("text/html");
		 * PrintWriter out = response.getWriter(); out.print("<html><body>");
		 * out.print("<h3>Hello dear World</h3>"); out.println(user);
		 * out.print("</body></html>");
		 */
		
	}

	private HashMap<String, ArrayList<ArrayList<Object>>> AddCustomerToApplication(HttpServletRequest request, HttpServletResponse response) {
		HashMap<String, ArrayList<ArrayList<Object>>> map = null;
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		long mobile = Long.parseLong(request.getParameter("mobile"));
		String city= request.getParameter("city");
		float initialDeposit = Float.parseFloat(request.getParameter("deposit"));
		String branch= request.getParameter("branch");
		Customers customerInfo = BankingEngine.INSTANCE.getCustomerObject(name, email, mobile, city);
		Accounts accountInfo = BankingEngine.INSTANCE.getAccountObject(initialDeposit, branch);
		ArrayList <Object> customerPlusAccount= new ArrayList<>();
		customerPlusAccount.add(customerInfo);
		customerPlusAccount.add(accountInfo);
		ArrayList<ArrayList <Object>> bunch= new ArrayList();
		bunch.add(customerPlusAccount);
		try {
			map = BankingEngine.INSTANCE.uploadCustomer(bunch);
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
		return map;
	}

}
