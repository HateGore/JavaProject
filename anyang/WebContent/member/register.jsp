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
			alert("IDĭ���� ������ �� �� �����ϴ�.");
			form.userId.focus();
			return;
		}
		
		if (id_integrity_flag == false) {
			alert("���� ID �ߺ� �׽�Ʈ�� �����ϼž��մϴ�.");
			form.id_integrity_btn.focus();
			return;
		}	
		
		if (form.userPW.value=="") {
			alert("��й�ȣ������ ������ �� �� �����ϴ�.");
			form.userPW.focus();
			return;
		}
		
		if (pw_confirm_flag == false) {
			alert("���� ��й�ȣ Ȯ�� �׽�Ʈ�� �����ϼž��մϴ�.");
			form.pw_confirm_btn.focus();
			return;
		}	
		
		if (form.userName.value=="") {
			alert("�̸������� ������ �� �� �����ϴ�.");
			form.userName.focus();
			return;
		}
		
		if (form.userBirth.value=="") {
			alert("������϶����� ������ �� �� �����ϴ�.");
			form.userBirth.focus();
			return;
		}
		
		if (form.userGender.value=="") {
			alert("�������� üũ���ֽʽÿ�.");
			form.userGender.focus();
			return;
		}
		
		if (form.userAddress.value=="") {
			alert("�ּҶ����� ������ �� �� �����ϴ�.");
			form.userAddress.focus();
			return;
		}
		
		form.submit();
	}
	
	function id_integrity(form) {
		id_integrity_flag = true;
		alert("�Ͻ������� ID �ߺ� �׽�Ʈ �������� �ߺ� Ȯ�� ó�� �Ϸ�!");
	}
	
	function pw_confirm(form) {
		alert("Ŭ��!");
		if (form.userPW.value == form.userPW_confirm.value) {
			pw_confirm_flag = true;
			alert("�ߺ� Ȯ�� ó�� �Ϸ�!");
		} else {
			alert("�Է��Ͻ� ��й�ȣ�� �ٸ��ϴ�.");
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
		<td><input type="button" value="�ߺ�Ȯ��" name="id_integrity_btn" onclick="id_integrity(this.form);"/></td>
	</tr>
	<tr>
		<th>��й�ȣ</th>
		<td><input type="text" name="userPW"></input></td>
	</tr>
	<tr>
		<th>��й�ȣȮ��</th>
		<td><input type="text" name="userPW_confirm"></input></td>
			<td><input type="button" value="Ȯ��"  name="pw_confirm_btn" onclick="pw_confirm(this.form);" /></td>
	</tr>
	<tr>
		<th>�̸�</th>
		<td><input type="text" name="userName"></input></td>
	</tr>
	<tr>
		<th>�������</th>
		<td><input type="date" name="userBirth"></input></td>
	</tr>
	<tr>
		<th>����</th>
		<td>
			��<input type="radio" name="userGender" value="��">
			��<input type="radio" name="userGender" value="��">
		</td>
	</tr>
	<tr>
		<th>�ּ�</th>
		<td><input type="text" name="userAddress"></input></td>
	</tr>
	<tr align="right">
		<td colspan="2"><input type="button" onClick="checkInsert(this.form)" value="���"></td>
		
	</tr>
</table>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>