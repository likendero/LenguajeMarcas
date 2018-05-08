<?xml version = "1.0" encoding = "ISO-8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:preserve-space elements="*"/>
<xsl:template match = "/">
	<html>
		<head>
			<title>integrantes</title>
		</head>
			<body>
				<h1> integrantes con sueldo mayor a 2000 </h1>
				<xsl:if test = "equipo/entrenador/sueldo &gt;= 2000">
					<P>el entrenador <xsl:value-of select="equipo/entrenador/nombre"/>
					tiene un sueldo superior a 2000€: <xsl:value-of select="equipo/entrenador/sueldo"/>
					</P>
				</xsl:if>
				<h2>jugadores con sueldo superior a 2000€</h2>
				<table>
				<tr>
					<th>nombre</th>
					<th>apellido</th>
					<th>sueldo</th>
				</tr>
				<xsl:for-each select="equipo/jugador" >
					<xsl:if test="sueldo &gt;= 2000">
					<tr>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="apellidos"/></td>
						<td><xsl:value-of select="sueldo"/></td>
					</tr>
					</xsl:if>
				</xsl:for-each>
				</table>
			</body>
		
	</html>
</xsl:template>
</xsl:stylesheet>