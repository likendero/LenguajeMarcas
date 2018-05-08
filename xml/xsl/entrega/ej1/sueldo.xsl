<?xml version = "1.0" encoding = "ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<!-- definicion del formato -->
<xsl:decimal-format name = "european" decimal-separator = ',' grouping-separator = '.'/>
<xsl:template match = "/">
<html>
	<head>
		<title> sueldo </title>
	</head>
	<body>
		<h1>Sueldos</h1>
		<table>
			<tr>
				<th>nombre</th>
				<th>apellido</th>
				<th>sueldo</th>
			</tr>
			<xsl:for-each select="equipo/jugador">
			<tr>
				<td><xsl:value-of select = "nombre"/></td>
				<td><xsl:value-of select = "apellidos"/></td>
				<td><xsl:value-of select = "format-number(sueldo,'###.###,00','european')"/></td>
			</tr>
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>