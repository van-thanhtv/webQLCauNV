<%--
  Created by IntelliJ IDEA.
  User: thongpro
  Date: 3/31/22
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<div class="d-sm-flex align-items-center justify-content-between mb-4 offset-5">
    <h1 class="h3 mb-0 text-gray-800">Quản Lý Cầu</h1>
</div>
<c:if test="${!empty sessionScope.admin}">

<form class=" row mt-3 ms-0 pe-0" action="storeCau" method="post" >
    <div class="mb-3 col-12">
        <label class="form-label fw-bold">Tên Cầu</label>
        <input type="text" class="form-control" name="tenCau">
    </div>

    <div class="mb-3 col-6">
        <label class="form-label fw-bold">Đơn Vị Quản Lý</label>
        <select class="form-select" name="idQuanLy" >
            <c:forEach items="${ dsdonviquanly }" var="ql">
                <option  value="${ ql.id }">
                        ${ ql.name}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="mb-3 col-6">
        <label class="form-label fw-bold">Quốc Lộ</label>
        <select class="form-select" name="idQL" >
            <c:forEach items="${ dsquoclo }" var="quoclo">
                <option  value="${ quoclo.id }">
                        ${ quoclo.tenQuocLo}
                </option>
            </c:forEach>
        </select>
    </div>
    <div class="mt-3">
        <button  class="btn btn-success">Thêm</button>
        <button type="reset" class="btn btn-primary">Làm Mới</button>
    </div>
</form>
<br>
</c:if>

