package com.tien.ss04v2;import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Product;
import model.Revenue;

@WebServlet(name = "b8", value = "/b8")
public class b8 extends HttpServlet {

    @Override
    public void init() throws ServletException {
        // Khởi tạo nếu cần
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        List<Revenue> revenueList = new ArrayList<>();
        revenueList.add(new Revenue("Tháng 1", 12000.50));
        revenueList.add(new Revenue("Tháng 2", 9500.75));
        revenueList.add(new Revenue("Tháng 3", 13450.00));
        revenueList.add(new Revenue("Tháng 4", 11000.25));
        revenueList.add(new Revenue("Tháng 5", 15890.90));

        request.setAttribute("revenueList", revenueList);
        request.getRequestDispatcher("b8.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        // Xử lý POST
    }

    @Override
    public void destroy() {
        // Hủy servlet nếu cần
    }
}
