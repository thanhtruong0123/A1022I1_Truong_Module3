import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/calculator")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double operand1 = Double.parseDouble(request.getParameter("operand1"));
        String operator = request.getParameter("operator");
        double operand2 = Double.parseDouble(request.getParameter("operand2"));
        double result = 0.0;
        try {
            result = Caculator.calculate(operand1, operator, operand2);
        } catch (Exception e) {
            request.setAttribute("Error", e.getMessage());
        }
        request.setAttribute("operand1", operand1);
        request.setAttribute("operator", operator);
        request.setAttribute("operand2", operand2);
        request.setAttribute("result", result);
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
