<%-- 
    Document   : Left
    Created on : Sep 28, 2023, 12:08:09 PM
    Author     : KHOACNTT
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.TheLoai"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-3">
     <%
        ArrayList<TheLoai> dsTheloai = (ArrayList<TheLoai>) request.getAttribute("dsTheLoai");
    %>
    <h3 class="card-header">Category</h3>  
    <ul class="list-group list-group-flush">
        <%
            if (dsTheloai != null) {
                for (TheLoai theloai : dsTheloai) {
        %>
        <li class="list-group-item"> <a href="san-pham?macd=<%= theloai.getMaloai()%>" class="text-decoration-none"> <i class="bi bi-arrow-right-circle"></i><%= theloai.getTenloai()%></a> </li>
            <%}
                }
            %>
</div>
