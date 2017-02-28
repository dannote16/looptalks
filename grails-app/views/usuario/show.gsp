
<%@ page import="looptalks.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.titulo}">
				<li class="fieldcontain">
					<span id="titulo-label" class="property-label"><g:message code="usuario.titulo.label" default="Titulo" /></span>
					
						<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${usuarioInstance}" field="titulo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="usuario.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:fieldValue bean="${usuarioInstance}" field="usuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.passwd}">
				<li class="fieldcontain">
					<span id="passwd-label" class="property-label"><g:message code="usuario.passwd.label" default="Passwd" /></span>
					
						<span class="property-value" aria-labelledby="passwd-label"><g:fieldValue bean="${usuarioInstance}" field="passwd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.area}">
				<li class="fieldcontain">
					<span id="area-label" class="property-label"><g:message code="usuario.area.label" default="Area" /></span>
					
						<span class="property-value" aria-labelledby="area-label"><g:fieldValue bean="${usuarioInstance}" field="area"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.clavearcgis}">
				<li class="fieldcontain">
					<span id="clavearcgis-label" class="property-label"><g:message code="usuario.clavearcgis.label" default="Clavearcgis" /></span>
					
						<span class="property-value" aria-labelledby="clavearcgis-label"><g:fieldValue bean="${usuarioInstance}" field="clavearcgis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.cve_dbf}">
				<li class="fieldcontain">
					<span id="cve_dbf-label" class="property-label"><g:message code="usuario.cve_dbf.label" default="Cvedbf" /></span>
					
						<span class="property-value" aria-labelledby="cve_dbf-label"><g:fieldValue bean="${usuarioInstance}" field="cve_dbf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.estatus}">
				<li class="fieldcontain">
					<span id="estatus-label" class="property-label"><g:message code="usuario.estatus.label" default="Estatus" /></span>
					
						<span class="property-value" aria-labelledby="estatus-label"><g:formatBoolean boolean="${usuarioInstance?.estatus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.ubicacion}">
				<li class="fieldcontain">
					<span id="ubicacion-label" class="property-label"><g:message code="usuario.ubicacion.label" default="Ubicacion" /></span>
					
						<span class="property-value" aria-labelledby="ubicacion-label"><g:fieldValue bean="${usuarioInstance}" field="ubicacion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
