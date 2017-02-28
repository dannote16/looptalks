<%@ page import="looptalks.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'titulo', 'error')} ">
	<label for="titulo">
		<g:message code="usuario.titulo.label" default="Titulo" />
		
	</label>
	<g:textField name="titulo" maxlength="10" value="${usuarioInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="usuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" required="" value="${usuarioInstance?.usuario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwd', 'error')} required">
	<label for="passwd">
		<g:message code="usuario.passwd.label" default="Passwd" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="passwd" required="" value="${usuarioInstance?.passwd}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="usuario.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area" from="${usuarioInstance.constraints.area.inList}" required="" value="${usuarioInstance?.area}" valueMessagePrefix="usuario.area"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'clavearcgis', 'error')} required">
	<label for="clavearcgis">
		<g:message code="usuario.clavearcgis.label" default="Clavearcgis" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="clavearcgis" required="" value="${usuarioInstance?.clavearcgis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cve_dbf', 'error')} required">
	<label for="cve_dbf">
		<g:message code="usuario.cve_dbf.label" default="Cvedbf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cve_dbf" required="" value="${usuarioInstance?.cve_dbf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estatus', 'error')} ">
	<label for="estatus">
		<g:message code="usuario.estatus.label" default="Estatus" />
		
	</label>
	<g:checkBox name="estatus" value="${usuarioInstance?.estatus}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'ubicacion', 'error')} required">
	<label for="ubicacion">
		<g:message code="usuario.ubicacion.label" default="Ubicacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ubicacion" required="" value="${usuarioInstance?.ubicacion}"/>

</div>

