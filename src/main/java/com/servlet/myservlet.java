package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/myserv")
public class myservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String[] shayri = {
	        "बहुत मुश्किल होता है किसी का दर्द समझन , दर्द वही समझता है जो हो सिर्फ अपना।",
	        "हर तरफ तू नजर आता है मुझे, तेरे अलावा ना कोई और भाता है मुझे। ",
	        "हर रोग की दवा मिलेगी, पर इश्क एक ऐसा रोग है जो लाइलाज था और लाइलाज रहेगा । ",
	        "किसी को इतना हक नहीं दिया हमने , की कोई भी आकर हमारी जिंदगी बर्बाद कर दे। .",

	    };


	 private List<String> history;


    public myservlet() {
        history = new ArrayList<>();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		   String str1=request.getParameter("num1");
		   String str2=request.getParameter("num2");
		   String str3=request.getParameter("bt1");
          int a=Integer.parseInt(str1);
          int b=Integer.parseInt(str2);

	int ans=0;

    if(str3.equals("1")) ans=a+b;
    else if(str3.equals("2")) ans=a-b;
    else if(str3.equals("3")) ans=a*b;
    else if(str3.equals("4")) ans=a/b;
    else ans=a%b;


    history.add(a + " " + getOperationSymbol(str3) + " " + b + " = " + ans);

	 int randomIndex = (int) (Math.random() * shayri.length);
    String randomshayri = shayri[randomIndex];


    request.setAttribute("ans", ans);
    request.setAttribute("shayri", randomshayri);
    request.setAttribute("history", history);
    request.getRequestDispatcher("calculator.jsp").forward(request, response);



	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private String getOperationSymbol(String buttonValue) {
        switch (buttonValue) {
            case "1":
                return "+";
            case "2":
                return "-";
            case "3":
                return "×";
            case "4":
                return "/";
            case "5":
                return "%";
            default:
                return "";
        }
    }

}
