package com.tien.ss04v2;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Product;

@WebServlet(name = "b5", value = "/b5")
public class b5 extends HttpServlet {
    private List<Product> list;

    @Override
    public void init() throws ServletException {
        list = new ArrayList<>();
        list.add(new Product(1, "iPhone 15", 999.99, null));
        list.add(new Product(2, "Samsung Galaxy S23", 899.49, "Flagship Samsung 2023"));
        list.add(new Product(3, "Xiaomi 13 Pro", 749.00, "Camera Leica, hiệu năng cao"));
        list.add(new Product(4, "Google Pixel 7", 799.90, null));
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        request.getRequestDispatcher("/b5.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String idSearch = request.getParameter("id");
        Product result = null;

        if (idSearch != null && !idSearch.isEmpty()) {
            try {
                int id = Integer.parseInt(idSearch);
                for (Product p : list) {
                    if (p.getId() == id) {
                        result = p;
                        break;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("product", result);
        request.getRequestDispatcher("/b5.jsp").forward(request, response);
    }
}
