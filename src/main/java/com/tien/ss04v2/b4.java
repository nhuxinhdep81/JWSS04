package com.tien.ss04v2;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Product;

@WebServlet(name = "b4", value = "/b4")
public class b4 extends HttpServlet {

    @Override
    public void init() throws ServletException {
        // Khởi tạo nếu cần
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        List<Product> list = new ArrayList<>();
        list.add(new Product(1, "iPhone 15", 999.99, null));
        list.add(new Product(2, "Samsung Galaxy S23", 899.49, "Flagship Samsung 2023"));
        list.add(new Product(3, "Xiaomi 13 Pro", 749.00, "Camera Leica, hiệu năng cao"));
        list.add(new Product(4, "Google Pixel 7", 799.90, null));

        request.setAttribute("productsb4", list);
        request.getRequestDispatcher("/b4.jsp").forward(request, response);
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
