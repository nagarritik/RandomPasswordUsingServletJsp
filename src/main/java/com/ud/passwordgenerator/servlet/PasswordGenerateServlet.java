package com.ud.passwordgenerator.servlet;

import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Random;

public class PasswordGenerateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StringBuilder masterStringBuilder = new StringBuilder();
        StringBuilder passwordStringBuilder = new StringBuilder();
        Random random = new Random();
        HttpSession httpSession = req.getSession();

        int passwordLength = Integer.parseInt(req.getParameter("passwordlength"));

        String upperCaseChar = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String lowerCaseChar = upperCaseChar.toLowerCase();
        String number = "0123456789";
        String specialChar = "~`!@#$%^&*()_-+={[}]|\\:;\"'<,>.?/";

        if (Objects.equals(req.getParameter("uppercase"), "on")){
            masterStringBuilder.append(upperCaseChar);
        }
        if (Objects.equals(req.getParameter("lowercase"), "on")){
            masterStringBuilder.append(lowerCaseChar);
        }
        if (Objects.equals(req.getParameter("number"), "on")){
            masterStringBuilder.append(number);
        }
        if (Objects.equals(req.getParameter("specialcharacter"), "on")){
            masterStringBuilder.append(specialChar);
        }

        String masterString = masterStringBuilder.toString();

        for (int i=1;i<=passwordLength;i++){
            passwordStringBuilder.append(masterString.charAt(random.nextInt(masterString.length())));
        }

        String passwordString = passwordStringBuilder.toString();

        httpSession.setAttribute("generatedPassword",passwordString);

        resp.sendRedirect("password.jsp");
    }
}
