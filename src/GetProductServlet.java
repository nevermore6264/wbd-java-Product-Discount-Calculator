import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        double discount_percent = Double.parseDouble(request.getParameter("discount_percent"));

        double discountAmount = price * discount_percent * 0.1;
        double discountPrice = discountAmount - price;

        request.setAttribute("description", description);
        request.setAttribute("price", price);
        request.setAttribute("discount_percent", discount_percent);
        request.setAttribute("discountAmount", price * discount_percent * 0.1);
        request.setAttribute("discountPrice", discountAmount - price);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/info.jsp");
        requestDispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
