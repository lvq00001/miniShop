<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>	
<ul>
	<c:forEach items="${dspl}" var="o">
		<c:if test="${o.parentId == 0}">
			<li>${o.categoryName}</li>
			<ul class="category">
				<c:forEach items="${dspl}" var="j">
					<c:if test="${j.parentId == o.categoryId}">
						<li><a href="browse.html?categoryId=${j.categoryId}">${j.categoryName}</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</c:if>
	</c:forEach>
</ul>
