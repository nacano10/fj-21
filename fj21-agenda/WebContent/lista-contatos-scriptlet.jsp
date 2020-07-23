<%@ page import="java.util.*,
		java.text.SimpleDateFormat,
		br.com.caelum.agenda.dao.*,
		br.com.caelum.agenda.modelo.*
		" %>
		
<html>
	<body>
		<table>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		%>
		<tr>
		<th>Nome</th>
		<th>Email</th>
		<th>Endere�o</th>
		<th>Data de Nascimento</th>
		</tr>
		<%
		for (Contato contato : contatos) {
		%>
			
			<tr>
				<td><%=contato.getNome() %></td>
				<td><%=contato.getEmail() %></td>
				<td><%=contato.getEndereco() %></td>
				<%
				Date data = contato.getDataNascimento().getTime(); 
				SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
				String DataEmTexto = formatter.format(data);
				%>
				<td><%=DataEmTexto%></td>
			</tr>
		<% 
		}
		%>
		</table>	
	</body>
</html>