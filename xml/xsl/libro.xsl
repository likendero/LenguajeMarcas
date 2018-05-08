<?xml version = "1.0" encoding = "ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<xsl:template match = "/">
	<html>
		<head>
		<title> hola </title>
		</head>
		<body>
		<h1> libros </h1>
		<xsl:for-each select="libros/libro">
		<h1><xsl:value-of select="titulo"/></h1>
		</xsl:for-each>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>