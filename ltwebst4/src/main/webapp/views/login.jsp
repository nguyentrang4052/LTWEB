<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ page import="vn.iostar.ultis.Constant"%>
<%
    // Đọc cookie và lấy giá trị username
    Cookie[] cookies = request.getCookies();
    String username = "";

    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (Constant.COOKIE_REMEMBER.equals(cookie.getName())) {
                username = cookie.getValue();
                break;
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/ltwebst4/login" method="post">
		<h2>Đăng nhập</h2>
		<c:if test="${alert != null}">
			<h3 class="alert-alertdanger">${alert}</h3>
		</c:if>
		<section>
			<label class="input login-input">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fauser"></i></span> <input
						type="text" placeholder="Tên tài khoản" name="username"
						class="form-control" value = "<%=username%>"><br /> <input type="text"
						placeholder="Mật khẩu" name="password" class="form-control"><br />
					<input type="checkbox" name="remember" class="form-control">Nhớ
					tôi <a href="/ltwebst4/views/forgot.jsp">Quên mật khẩu</a><br /> <input
						type="submit" value="login">
				</div>
			</label>
		</section>
	</form>
</body>
</html>