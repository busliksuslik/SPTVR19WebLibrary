/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */ 
// Алгоритм создания веб приложения в джава ее
// 
package servlets;

import entites.Book;
import entites.History;
import entites.User;
import facades.BookFacade;
import facades.HistoryFacade;
import facades.UserFacade;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "MyServlet", urlPatterns = {
    "/addBook",
    "/createBook",
    "/addUser",
    "/createUser",
    "/books",
    "/users",
    "/addHistory",
    "/createHistory",
    "/returnHistoryForm",
    "/returnHistory"
})
public class MyServlet extends HttpServlet {
    @EJB
    private BookFacade bookFacade;
    @EJB
    private UserFacade userFacade;
    @EJB
    private HistoryFacade historyFacade;
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String path = request.getServletPath();
        
        switch (path) {
            case "/addBook":{
                request.getRequestDispatcher("/WEB-INF/addBookForm.jsp").forward(request, response);
                break;
            }
            case "/createBook":{
                String name = request.getParameter("name");
                String author = request.getParameter("author");
                String year = request.getParameter("year");
                if ("".equals(name)  || name == null ||
                        "".equals(author)  || author == null ||
                        "".equals(year)  || year == null){
                    request.setAttribute("info", "INCORRECT");
                    request.setAttribute("name", name);
                    request.setAttribute("author", author);
                    request.setAttribute("year", year);
                    request.getRequestDispatcher("/WEB-INF/addBookForm.jsp").forward(request, response);
                    break;
                }
                
                Book book = new Book(name,author,Integer.parseInt(year));
                bookFacade.create(book);
                request.setAttribute("info", "Данные получены  " +book.toString());
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            }
            case "/addUser":{
                request.getRequestDispatcher("/WEB-INF/addUserForm.jsp").forward(request, response);
                break;
            }
            case "/createUser":{
                String name = request.getParameter("name");
                String password = request.getParameter("password");
                if ("".equals(name)  || name == null ||
                        "".equals(password)  || password == null ){
                    request.setAttribute("info", "INCORRECT");
                    request.setAttribute("name", name);
                    request.setAttribute("author", password);
                    request.getRequestDispatcher("/WEB-INF/addBookForm.jsp").forward(request, response);
                    break;
                }
                User user = new User(name,password);
                userFacade.create(user);
                request.setAttribute("info", "Данные получены  " +user.toString());
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            }
            case "/books":{
                List<Book> listBooks = bookFacade.findAll();
                request.setAttribute("listBooks", listBooks);
                request.getRequestDispatcher("/WEB-INF/books.jsp").forward(request, response);
                break;
            }
            case "/users":{
                List<User> listUsers = userFacade.findAll();
                request.setAttribute("listUsers", listUsers);
                request.getRequestDispatcher("/WEB-INF/users.jsp").forward(request, response);
                break;
            }
            case "/addHistory":{
                List<Book> listBooks = bookFacade.findAll();
                request.setAttribute("listBooks", listBooks);
                List<User> listUsers = userFacade.findAll();
                request.setAttribute("listUsers", listUsers);
                request.getRequestDispatcher("/WEB-INF/addHistoryForm.jsp").forward(request, response);
                break;
            }
            case "/createHistory":{
                String bookstr = request.getParameter("book");
                Book book = bookFacade.find(Long.parseLong(bookstr));
                String userstr = request.getParameter("user");
                User user = userFacade.find(Long.parseLong(userstr));
                History history = new History(book, user, new GregorianCalendar().getTime(), null);
                historyFacade.create(history);
                request.setAttribute("info","Добавлена выдана");
                request.getRequestDispatcher("/WEB-INF/addHistoryForm.jsp").forward(request, response);
                break;
            }
            case "/returnHistoryForm":{
                List<History> listHistories = historyFacade.findAll();
                request.setAttribute("listRead",listHistories);
                request.getRequestDispatcher("/WEB-INF/returnHistoryForm.jsp").forward(request, response);
                break;
            }
            case "/returnHistory":{
                String historystr = request.getParameter("historyId");
                if (historystr == null || "".equals(historystr)){
                    request.setAttribute("info","choose book");
                    request.getRequestDispatcher("/WEB-INF/returnHistoryForm.jsp").forward(request, response);
                    break;
                }
                History history = historyFacade.find(Long.parseLong(historystr));
                history.setTakeOn(new GregorianCalendar().getTime());
                request.setAttribute("info","zaeb");
                request.getRequestDispatcher("/index.jsp").forward(request, response);
                break;
            }
            
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
