<?xml version = "1.0" encoding = "ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<xsl:template match = "/">
<html>
	<head>
		<title> jugadores </title>
	</head>
	<body>
		<h1>jugadores</h1>
		<table>
			<tr>
				<th>nombre</th>
				<th>apellido</th>
				<th>numero Dorsal</th>
			</tr>
			<xsl:for-each select="equipo/jugador">
			<xsl:if test="puesto != 'Portero' and puesto != 'Delantero'">
			<tr>
				<td><xsl:value-of select = "nombre"/></td>
				<td><xsl:value-of select = "apellidos"/></td>
				<td><xsl:value-of select = "dorsal"/></td>
			</tr>
			</xsl:if>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>