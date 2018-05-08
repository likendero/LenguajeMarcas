<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<xsl:template match = "/">
	<html>
		<head>
		<title>
			tabla contactos
		</title>
		</head>
		<body>
		<h1> tabla contactos </h1>
		<table>
		<tr>
			<th>apellido</th>
			<th>nombre</th>
			<th>telefono</th>
		</tr>
		<xsl:for-each select="contactos/persona">
		<xsl:if test = "direccion/pais = 'Libertonia'">
		<tr>
			<td><xsl:value-of select = "apellido"/></td>
			<td><xsl:value-of select = "nombre"/></td>
			<td><xsl:value-of select = "telefono"/></td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>