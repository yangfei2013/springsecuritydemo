<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	     <meta charset="UTF-8" />
	     <title>login</title>
	     <style type="text/css">
	        *{margin:0;padding:0;}
	        .table{width:300px;height:150px;margin:100px auto;padding:20px 0;border:1px solid #ddd;border-radius:2px;}
	        .table label{width:90px;text-align:right;display:inline-block;}
	        .list-item{padding:5px;}
	        input[type='text']{width:150px;border:1px solid #ddd;height:28px;line-height:28px;border-radius:2px;outline:none;}
	        input[type='password']{width:150px;border:1px solid #ddd;height:28px;line-height:28px;border-radius:2px;outline:none;}
	        input[type='submit'],input[type='reset'] {width:56px;height:28px;line-height:28px;border:1px solid #ccc;border-radius:2px;cursor:pointer;outline:none;}
	        input[type='submit']:hover{background:#317ef3;border-color:#2868c8;box-shadow:1px 1px 1px #ccc;}
	        input[type='submit']{background:#3385ff;border-color:#2d78f4;color:#fff;margin-left:80px;}
	        .table .error{color:red;text-align:center;height:30px;line-height:30px;}
	     </style>
	</head>
	<body>
		 <h2>title:${title}</h2>
		 <div class="table">
		      <c:if test="${not empty error}">
			    <div class="error">${error}</div>
			 </c:if>
			 <c:if test="${not empty msg}">
			    <div class="error">${msg}</div>
			 </c:if>
			 <form action="<c:url value="login"/>" method="post">
			     <div class="list-item">
			          <label>UserName:</label>
			          <input type="text" name="username" placeholder="UserName"/>
			     </div>
			     <div class="list-item">
			          <label>Password:</label>
			          <input type="password" name="password" placeholder="Password"/>
			     </div>
			     <div class="list-item">
			          <input type="submit" value="Login"/>
			          <input type="reset" value="Reset"/>
			     </div>
			     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			 </form>
		 </div>	 
	</body>
</html>
