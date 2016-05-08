package com.bondar;

import com.bondar.DAO.Factory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Влад on 20.04.2016.
 */
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        /**
         * If REFRESH button clicked on index.jsp, page refreshed.
         */
        if(req.getParameter("REFRESH") != null ) {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        /**
         * If DELETE button clicked on index.jsp and if some rows checked with checkBox
         * checkboxes, deletes that rows and sending user back to index.jsp.
         * @param checkBox - checked checkboxes
         */
        if(req.getParameter("DELETE") != null){
            String[] rows = req.getParameterValues("checkBox");
            if(rows != null){
                for (int i = 0; i < rows.length; i++) {
                    Client client = Factory.getInstance().getClientDAO().getClientByID(Integer.parseInt(rows[i]));
                    Factory.getInstance().getClientDAO().deleteClient(client);
                }
            } else{
                req.setAttribute("DELETE","problem");
            }
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        /**
         * If EDIT button clicked on index.jsp send checked checkboxes to addUpdate.jsp.
         * @param checkBox - checked checkboxes
         */
        if(req.getParameter("EDIT")!=null){
            String[] rows = req.getParameterValues("checkBox");
            if(rows == null || rows.length == 1){
                req.setAttribute("checkBox", rows);
                req.getRequestDispatcher("addUpdate.jsp").forward(req, resp);
            } else{
                req.setAttribute("EDIT", "problem");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }
        /**
         * If CANCEL button clicked on addUpdate.jsp
         * redirects user to index.jsp without saving changes.
         */
        if(req.getParameter("CANCEL") != null){
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        /**
         * If ADD button clicked on addUpdate.jsp
         * adding new row and redirects user to index.jsp.
         * Checking for all possible mismatches in fields,
         * if mismatch found, notice user.
         */
        if(req.getParameter("ADD") != null){
            String name = req.getParameter("Name");
            String secondName = req.getParameter("SecondName");
            String birthday  = req.getParameter("Birthday");
            String registrationDate = req.getParameter("RegistrationDate");
            String cardNumber = req.getParameter("CardNumber");
            String phoneNumber = req.getParameter("PhoneNumber");
            String viber = req.getParameter("Viber");
            String email = req.getParameter("Email");
            String amount = req.getParameter("Amount");
            String counter = req.getParameter("Counter");

            fullValidation(null,name,secondName,birthday,registrationDate,cardNumber,phoneNumber,viber,email,
                    amount, counter, req, resp, "add");

        }
        /**
         * If SAVE button clicked on addUpdate.jsp
         * saves changes to row and redirects user to index.jsp.
         * Checking for all possible mismatches in fields,
         * if mismatch found, notice user
         */
        if(req.getParameter("SAVE") != null){
            String id = req.getParameter("ID");
            String name = req.getParameter("Name");
            String secondName = req.getParameter("SecondName");
            String birthday  = req.getParameter("Birthday");
            String registrationDate = req.getParameter("RegistrationDate");
            String cardNumber = req.getParameter("CardNumber");
            String phoneNumber = req.getParameter("PhoneNumber");
            String viber = req.getParameter("Viber");
            String email = req.getParameter("Email");
            String amount = req.getParameter("Amount");
            String counter = req.getParameter("Counter");

            fullValidation(id,name,secondName,birthday,registrationDate,cardNumber,phoneNumber,viber,email,
                    amount, counter, req, resp, "save");
        }

        if(req.getParameter("ADDSALE") != null){
            String cardNumber = req.getParameter("SaleCardNumber");
            String dateOfSale = req.getParameter("DateOfSale");
            String saleAmount = req.getParameter("SaleAmount");
            String jeansNumber = req.getParameter("JeansNumber");
            String jeansSize = req.getParameter("JeansSize");
            String saler = req.getParameter("Saler");

            newSaleValidation(cardNumber,dateOfSale,saleAmount,jeansNumber,jeansSize,saler,req,resp);
        }

        if(req.getParameter("NEWSALE") != null){
            req.getRequestDispatcher("newSale.jsp").forward(req, resp);
        }

        if(req.getParameter("SALES") != null){
            String[] rows = req.getParameterValues("checkBox");
            if(rows != null){
                req.setAttribute("checkBox", rows);
                req.getRequestDispatcher("sales.jsp").forward(req, resp);
            } else{
                req.setAttribute("SALES", "problem");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }

        if(req.getParameter("BACKUP") != null){
            String userName = "jeansbond";
            String password = "ASDqwe123";
            String DBname = "jeansbond";
            int processComplete = 0;
            String executeCmd = "mysqldump -u "+userName+" -p"+password+" "+DBname+" -r D:\\backup.sql";
            try {
                Process runtimeProcess = Runtime.getRuntime().exec(executeCmd);
                    processComplete = runtimeProcess.waitFor();
            } catch (InterruptedException e) {
                   processComplete = 1;
            } finally {
                if (processComplete == 0) {
                    req.setAttribute("BACKUP", "OK");
                    req.getRequestDispatcher("index.jsp").forward(req, resp);
                } else {
                    req.setAttribute("BACKUP", "problem");
                    req.getRequestDispatcher("index.jsp").forward(req, resp);
                }
            }
        }
    }

    public void fullValidation(String id, String name, String secondName, String birthday,
                               String registrationDate, String cardNumber, String phoneNumber,
                               String viber, String email, String amount, String counter,
                               HttpServletRequest req, HttpServletResponse resp,
                               String typeOfQuery)
            throws IOException, ServletException {

        if(!Validation.clientNameValidation(name)){
            req.setAttribute("nameProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req, resp);

        } else if(!Validation.clientNameValidation(secondName)){
            req.setAttribute("secondNameProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.dateValidation(birthday)){
            req.setAttribute("birthdayProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.dateValidation(registrationDate)){
            req.setAttribute("regDateProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.cardValidation(cardNumber)){
            req.setAttribute("cardNumberProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);



        } else if(!Validation.phoneNumberValidation(phoneNumber)){
            req.setAttribute("phoneNumberProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.viberValidation(viber)){
            req.setAttribute("viberProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.emailValidation(email)){
            req.setAttribute("emailProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.amountValidation(amount)){
            req.setAttribute("amountProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(!Validation.amountValidation(counter)){
            req.setAttribute("counterProblem","problem");
            req.getRequestDispatcher("index.jsp").forward(req,resp);

        } else if(typeOfQuery == "add"){
            if(Validation.cardAvailability(cardNumber)) {
                req.setAttribute("cardAvailable", "problem");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            } else {

                Client client = new Client();
                client.setName(name);
                client.setSecondName(secondName);
                client.setBirthday(birthday);
                client.setRegistrationDate(registrationDate);
                client.setCardNumber(cardNumber);
                client.setPhoneNumber(phoneNumber);
                client.setViber(viber);
                client.setEmail(email);
                client.setAmount(Integer.parseInt(amount));
                client.setCounter(Integer.parseInt(counter));

                Factory.getInstance().getClientDAO().addClient(client);
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }

        } else if(typeOfQuery == "save") {
            Client client = Factory.getInstance().getClientDAO().getClientByID(Integer.parseInt(id));

            if (client.getCardNumber().equals(cardNumber) | !Validation.cardAvailability(cardNumber)) {

                    client.setName(name);
                    client.setSecondName(secondName);
                    client.setBirthday(birthday);
                    client.setRegistrationDate(registrationDate);
                    client.setCardNumber(cardNumber);
                    client.setPhoneNumber(phoneNumber);
                    client.setViber(viber);
                    client.setEmail(email);
                    client.setAmount(Integer.parseInt(amount));
                    client.setCounter(Integer.parseInt(counter));

                    Factory.getInstance().getClientDAO().updateClient(client);
                    req.getRequestDispatcher("index.jsp").forward(req, resp);

                } else {
                req.setAttribute("cardAvailable", "problem");
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }

    }

    public void newSaleValidation(String cardNumber, String dateOfSale, String saleAmount,
                                    String jeansNumber, String jeansSize, String saler,
                                    HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {

            if(!Validation.cardValidation(cardNumber)){
                req.setAttribute("cardNumberProblem","problem");
                req.getRequestDispatcher("index.jsp").forward(req,resp);

            } else if(!Validation.cardAvailability(cardNumber)){
                req.setAttribute("cardAbsence", "problem");
                req.getRequestDispatcher("index.jsp").forward(req, resp);

            } else if(!Validation.dateValidation(dateOfSale)){
                req.setAttribute("saleDateProblem","problem");
                req.getRequestDispatcher("index.jsp").forward(req,resp);

            } else if(!Validation.amountValidation(saleAmount)){
                req.setAttribute("amountProblem","problem");
                req.getRequestDispatcher("index.jsp").forward(req,resp);

            } else if(!Validation.amountValidation(jeansNumber)){
                req.setAttribute("jeansNumberProblem","problem");
                req.getRequestDispatcher("index.jsp").forward(req,resp);

            } else if(!Validation.amountValidation(jeansSize)){
                req.setAttribute("jeansSizeProblem","problem");
                req.getRequestDispatcher("index.jsp").forward(req,resp);

            } else if(!Validation.clientNameValidation(saler)){
                req.setAttribute("salerProblem","problem");
                req.getRequestDispatcher("index.jsp").forward(req,resp);

            } else{
                Sales sale = new Sales();
                Client client = Factory.getInstance().getClientDAO().getClientByCardNumber(Integer.parseInt(cardNumber));
                sale.setClient(client);
                sale.setDateOfSale(dateOfSale);
                sale.setJeansSize(jeansSize);
                sale.setJeansNumber(jeansNumber);
                sale.setAmount(Integer.parseInt(saleAmount));
                sale.setSaler(saler);
                client.setAmount(client.getAmount()+Integer.parseInt(saleAmount));
                client.setCounter(client.getCounter()+1);

                Factory.getInstance().getClientDAO().updateClient(client);
                Factory.getInstance().getSalesDAO().addSales(sale);
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
    }

}

