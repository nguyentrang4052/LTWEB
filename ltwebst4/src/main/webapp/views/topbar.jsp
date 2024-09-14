<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.account == null}">
			<div class="col-sm-6">
				<ul class="list-inline right-topbar pull-right">
					<li><a
						href="${pageContext.request.contextPath }/views/register.jsp">Đăng
							ký</a> <br /></li>
					<li><a
						href="${pageContext.request.contextPath }/views/login.jsp">Đăng
							nhập</a></li>
				</ul>
			</div>
		</c:when>
	</c:choose>
</body>
</html>