<%--
  Created by IntelliJ IDEA.
  User: sandeshwani
  Date: 8/23/17
  Time: 1:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page</h1>

            <p class="lead">This is the administrator page!</p>
        </div>
        
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Welcome ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"></c:url>" > Logout </a>
            </h2>

        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory"/>" > Product Inventory </a>
        </h3>

        <p> Here you can view, check and modify the product inventory</p>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
