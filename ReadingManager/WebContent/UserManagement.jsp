<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp" />
<title>UserManagement</title>
</head>
<body>

	<div id="bloc_page">
		<section>
			<h1>User Management</h1>
			<a href="Inscription.jsp" class="floatRight"><img src="img/add.png" alt="Add" id="perso" class="addButtonStyle"/><h2 class="inlineBlock">Add a User</h2></a>
			<h2>Search a user</h2>
			<input type="text" name="tbSearch" class="marginBottom10px tbWidth marginLeft15pourcent"> <img src="img/Search.png" alt="Search" id="perso" class="searchButtonStyle"/>
			<h2>Existing users list</h2>
			<div class="marginLeft15pourcent">
				<table>
				   <col width="300">
				   <col width="150">
				   <col width="150">
				   <col width="300">
				   <col width="130">
				   <col width="50">
				   <tr class="tableTextBlue">
				       <th>Mail</th>
				       <th>First Name</th>
				       <th>Last name</th>
				       <th>Address</th>
				       <th>Phone number</th>
				   </tr>
				   <tr>
				       <td>pierre.troyard@gmail.com</td>
				       <td>Pierre</td>
				       <td>Troyard</td>
				       <td>30 rue notre dame de bon secours</td>
				       <td>0675752427</td>
				       <td>
				       <img src="img/modifyTable.png" alt="Modify" id="perso" class="modifyButtonStyle"/>
				       <img src="img/deleteTable.png" alt="Delete" id="perso" class="deleteButtonStyle"/>
				       </td>
				   </tr>
				   <tr>
				       <td>pierre.troyard@gmail.com</td>
				       <td>Pierre</td>
				       <td>Troyard</td>
				       <td>30 rue notre dame de bon secours</td>
				       <td>0675752427</td>
				       <td>
				       <img src="img/modifyTable.png" alt="Modify" id="perso" class="modifyButtonStyle"/>
				       <img src="img/deleteTable.png" alt="Delete" id="perso" class="deleteButtonStyle"/>
				       </td>
				   </tr>
				   <tr>
				       <td>pierre.troyard@gmail.com</td>
				       <td>Pierre</td>
				       <td>Troyard</td>
				       <td>30 rue notre dame de bon secours</td>
				       <td>0675752427</td>
				       <td>
				       <img src="img/modifyTable.png" alt="Modify" id="perso" class="modifyButtonStyle"/>
				       <img src="img/deleteTable.png" alt="Delete" id="perso" class="deleteButtonStyle"/>
				       </td>
				   </tr>
				   <tr>
				       <td>pierre.troyard@gmail.com</td>
				       <td>Pierre</td>
				       <td>Troyard</td>
				       <td>30 rue notre dame de bon secours</td>
				       <td>0675752427</td>
				       <td>
				       <img src="img/modifyTable.png" alt="Modify" id="perso" class="modifyButtonStyle"/>
				       <img src="img/deleteTable.png" alt="Delete" id="perso" class="deleteButtonStyle"/>
				       </td>
				   </tr>

				</table>
			</div>
		</section>
	</div>

</body>
</html>