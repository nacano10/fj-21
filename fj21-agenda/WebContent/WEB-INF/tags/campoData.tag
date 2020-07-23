<%@ attribute name="id" required="true" %>

<input type="text" id="${id}" name="${id}" />
<script>
	$("#${id}").datepicker({	
					dateFormat: 'mm/dd/yy',
					changeMonth: true,
					changeYear: true});
</script>