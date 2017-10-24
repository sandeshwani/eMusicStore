<%--
  Created by IntelliJ IDEA.
  User: sandeshwani
  Date: 8/23/17
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post"
                   modelAttribute="product" enctype="multipart/form-data">

        <div class="form-group">
            <label for="name">Name</label><form:errors path="productName" cssStyle="color: #ff0000"></form:errors>
            <form:input path="productName" id="name" class="form-Control"/>
        </div>


        <div class="form-group">
            <label for="category">Category</label>

            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument" />
                Instrument
            </label>

            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record" />
                Record
            </label>

            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory" />
                Accessory
            </label>

        </div>


        <div class="form-group">

            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>

        </div>


        <div class="form-group">
            <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: #ff0000"></form:errors>
            <form:input path="productPrice" id="price" class="form-Control"/>
        </div>


        <div class="form-group">
            <label for="condition">Condition</label>

            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new" />
                New
            </label>

            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used" />
                Used
            </label>
        </div>


        <div class="form-group">
            <label for="status">Status</label>

            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />
                Active
            </label>

            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />
                Inactive
            </label>
        </div>


        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color: #ff0000"></form:errors>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>


        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>
        </div>


        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input type="file" path="productImage" id="productImage" class="form:input-large" />
        </div>


        <br>
        <br>

        <input type="submit" value="Submit" class="btn btn-default">

        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>


