package com.tien.ss04v2;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Student;

@WebServlet(name = "b6", value = "/b6")
public class b6 extends HttpServlet {

    @Override
    public void init() throws ServletException {
        // Khởi tạo nếu cần
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        List<Student> students = new ArrayList<>();

        // Thêm 5 dữ liệu mẫu
        students.add(new Student(1, "Nguyễn Văn A", 20, 7.5));
        students.add(new Student(2, "Trần Thị B", 22, 7.8));
        students.add(new Student(3, "Lê Minh C", 21, 3.2));
        students.add(new Student(4, "Phạm Mai D", 23, 4.9));
        students.add(new Student(5, "Vũ Hoàng E", 20, 7.6));

        request.setAttribute("students", students);
        request.getRequestDispatcher("/b6.jsp").forward(request, response);
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
