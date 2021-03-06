<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="navbar" style="width: 100%;">
	<div class="navbar-inner">
		<ul class="nav">
			<li><a href="<spring:url value="/" htmlEscape="true" />"><i
					class="icon-home"></i>Home</a></li>
			<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_ARTIST')">
				<li><a
					href="<spring:url value="/artists/add" htmlEscape="true" />"><i
						class="icon-plus-sign"></i>Add Artist</a></li>
			</sec:authorize>
			<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_VENUE')">
				<li><a
					href="<spring:url value="/venues/add" htmlEscape="true" />"><i
						class="icon-plus-sign"></i>Add Venue</a></li>
			</sec:authorize>
			<sec:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_ARTIST','ROLE_VENUE')">
				<li><a
					href="<spring:url value="/events/add" htmlEscape="true" />"><i
						class="icon-plus-sign"></i>Add Event</a></li>
			</sec:authorize>
		</ul>
	</div>
</div>
<div id="footer_image">
	<br />
	<table class="footer">
		<tr>
			<td></td>
			<td align="right"><img
				src="<spring:url value="/resources/images/Spring.png" htmlEscape="true" />"
				alt="Powered by Spring" /></td>
		</tr>
	</table>
</div>


