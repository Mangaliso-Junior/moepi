/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package team.ac.za;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author BEAST I5
 */
@MultipartConfig
public class PreServlet extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        
       
        String op = request.getParameter("op");      
        String outcome = "index.html";
        
        if(op.equals("Moepi Publishing")){
            String webname = "Moepi Publisher";
            String visit = "moepipublishing.co.za";
            String username = "moepipy";
            String url = "https://missouri.aserv.co.za:2083/logout/?local=en";

            request.setAttribute("webname", webname);
            request.setAttribute("visit", visit);
            request.setAttribute("username", username);
            request.setAttribute("url", url);

            outcome = "filled.jsp";
        }else if(op.equals("Tekete")){
            String webname = "Tekete";
            String visit = "tekete.co.za";
            String username = "teketebk";
            String url = "https://trident.aserv.co.za:2083/logout/?local=en";

            request.setAttribute("webname", webname);
            request.setAttribute("visit", visit);
            request.setAttribute("username", username);
            request.setAttribute("url", url);

            outcome = "filled.jsp";    
        }
        
        RequestDispatcher dispo = request.getRequestDispatcher(outcome);
        dispo.forward(request, response);
        
        
    }// </editor-fold>

}
