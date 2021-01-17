<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>register</title>
<style type="text/css">
	table {
		margin: 10px 10px;
	}
</style>
<script type="text/javascript">
	var id_integrity_flag = false;
	var pw_confirm_flag = false;
	function checkInsert(form) {
		if (form.userId.value=="") {
			alert("ID칸에는 공백이 들어갈 수 없습니다.");
			form.userId.focus();
			return;
		}
		
		if (id_integrity_flag == false) {
			alert("먼저 ID 중복 테스트를 실행하셔야합니다.");
			form.id_integrity_btn.focus();
			return;
		}	
		
		if (form.userPW.value=="") {
			alert("비밀번호란에는 공백이 들어갈 수 없습니다.");
			form.userPW.focus();
			return;
		}
		
		if (pw_confirm_flag == false) {
			alert("먼저 비밀번호 확인 테스트를 실행하셔야합니다.");
			form.pw_confirm_btn.focus();
			return;
		}	
		
		if (form.userName.value=="") {
			alert("이름란에는 공백이 들어갈 수 없습니다.");
			form.userName.focus();
			return;
		}
		
		if (form.userBirth.value=="") {
			alert("생년월일란에는 공백이 들어갈 수 없습니다.");
			form.userBirth.focus();
			return;
		}
		
		if (form.userGender.value=="") {
			alert("성별란을 체크해주십시요.");
			form.userGender.focus();
			return;
		}
		
		if (form.userAddress.value=="") {
			alert("주소란에는 공백이 들어갈 수 없습니다.");
			form.userAddress.focus();
			return;
		}
		
		form.submit();
	}
	
	function id_integrity(form) {
		id_integrity_flag = true;
		alert("일시적으로 ID 중복 테스트 절차없이 중복 확인 처리 완료!");
	}
	
	function pw_confirm(form) {
		alert("클릭!");
		if (form.userPW.value == form.userPW_confirm.value) {
			pw_confirm_flag = true;
			alert("중복 확인 처리 완료!");
		} else {
			alert("입력하신 비밀번호가 다릅니다.");
			return;
		}
		
		
	}
</script>
</head>
<body>
<%@ include file="../common/header.jsp" %><br>
<form action="<%=request.getContextPath()%>/register" method="post" name="loginForm">
<table border="1">
	<tr>
		<th>ID</th>
		<td><input type="text" name="userId"></input></td>
		<td><input type="button" value="중복확인" name="id_integrity_btn" onclick="id_integrity(this.form);"/></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" name="userPW"></input></td>
	</tr>
	<tr>
		<th>비밀번호확인</th>
		<td><input type="text" name="userPW_confirm"></input></td>
			<td><input type="button" value="확인"  name="pw_confirm_btn" onclick="pw_confirm(this.form);" /></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text" name="userName"></input></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><input type="date" name="userBirth"></input></td>
	</tr>
	<tr>
		<th>성별</th>
		<td>
			남<input type="radio" name="userGender" value="남">
			녀<input type="radio" name="userGender" value="녀">
		</td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input type="text" name="userAddress"></input></td>
	</tr>
	<tr align="right">
		<td colspan="2"><input type="button" onClick="checkInsert(this.form)" value="등록"></td>
		
	</tr>
</table>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>