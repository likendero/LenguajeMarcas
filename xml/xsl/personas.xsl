<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<xsl:template match = "/">
	<html>
		<head>
		<title>Personas</title>
		</head>
		<body>
		<h1> Personas </h1>
		<xsl:for-each select="contactos/persona">
		<xsl:sort select="apellido"/>
		<h2><xsl:value-of select="nombre"/></h2>
		<ul>
			<li><xsl:value-of select="apellido"/></li>
			<li><xsl:value-of select="DNI"/></li>
			<ul>
				<li> fecha de nacimiento </li>
				<li> <xsl:value-of select="fechanacimiento/dia"/> </li>
				<li> <xsl:value-of select="fechanacimiento/mes"/> </li>
				<li> <xsl:value-of select="fechanacimiento/anio"/> </li>
			</ul>
		</ul>
		</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>