package demo.controller;

import demo.bean.Account;
import demo.bean.Role;
import demo.bean.User;
import demo.repository.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/users")
public class UserServlet extends HttpServlet {
    UserRepository userRepository = new UserRepositoryImpl();
    RoleRepository roleRepository = new RoleRepositoryImpl();
    AccountRepository accountRepository = new AccountRepositoryImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "search":
                break;
            default:
                listUser(request, response);
                break;
        }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/demo/create.jsp")
                .forward(request, response);
    }

    private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Account> accountList = accountRepository.showListAccount();

        request.setAttribute("accountList", accountList);
        request.getRequestDispatcher("WEB-INF/demo/list.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createAccount(request, response);
                break;
            case "edit":
                break;
            case "delete":
                break;
            case "search":
                break;
        }
    }

    private void createAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String createTime = request.getParameter("createTime");
//        int roleID = Integer.parseInt(request.getParameter("role"));
        String[] roleAsString = request.getParameterValues("role");
        List<Role> roleList = new ArrayList<>();
        for(String r: roleAsString) {
            roleList.add(roleRepository.selectRole(Integer.parseInt(r)));
        }

        User user = new User(id, name, birthday, createTime);
        user.setRole(roleList);
        userRepository.addUser(user);

        request.getRequestDispatcher("WEB-INF/demo/create.jsp")
                .forward(request, response);
    }
}
