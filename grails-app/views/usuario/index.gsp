
<%@ page import="looptalks.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'usuario.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="usuario" title="${message(code: 'usuario.usuario.label', default: 'Usuario')}" />
					
						<g:sortableColumn property="passwd" title="${message(code: 'usuario.passwd.label', default: 'Passwd')}" />
					
						<g:sortableColumn property="area" title="${message(code: 'usuario.area.label', default: 'Area')}" />
					
						<g:sortableColumn property="clavearcgis" title="${message(code: 'usuario.clavearcgis.label', default: 'Clavearcgis')}" />
					
						<g:sortableColumn property="cve_dbf" title="${message(code: 'usuario.cve_dbf.label', default: 'Cvedbf')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "usuario")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "passwd")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "area")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "clavearcgis")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "cve_dbf")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
