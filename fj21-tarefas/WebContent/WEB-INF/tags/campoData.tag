<%@ attribute name="id" required="true" %>
<%@ attribute name="value" required="false" %>

<input type="text" id="${id}" name="${id}" value="${value}" />
<script type="text/javascript">
	$("#${id}").datepicker({	
					dateFormat: 'dd/mm/yy',
					changeMonth: true,
					changeYear: true,
					yearRange: '1980:2020'
					});
</script>