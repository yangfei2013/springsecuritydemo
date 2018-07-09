<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
	     <meta charset="UTF-8" />
	     <title>spring-security</title>
	</head>
	<body>
		 <h2>title:${title}</h2>
		 <h2>message:${message}</h2>
		 <c:url var="logoutUrl" value="logout"/>
		 <c:if test="${pageContext.request.userPrincipal.name != null}">
		     welcome you,${pageContext.request.userPrincipal.name }
		     <a href="javascript:formSubmit();">Logout</a>
		 </c:if>
		 
		 <!-- csrf for logout -->
		 <form action="${logoutUrl}" method="post" id="logoutForm">
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		 </form>
		 <script>
		     function formSubmit(){document.getElementById("logoutForm").submit();}
		 </script>
	</body>
</html>
