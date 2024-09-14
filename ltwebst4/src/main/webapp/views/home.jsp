<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Trang chủ</h1>
	<a href="${pageContext.request.contextPath }/logout"
		onclick="return confirmLogout()")">Đăng xuất</a>
	<script>
		function confirmLogout() {
			return confirm("Bạn có chắc muốn đăng xuất không?");
		}
	</script>
</body>
</html>