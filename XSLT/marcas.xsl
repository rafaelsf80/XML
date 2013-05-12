<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/marcas">
		
		<h2>Lista de marcas</h2>
		<table border="1">
			<tr bgcolor="#9acd32">
				<th>Latitud</th>
				<th>Longitud</th>
				<th>Comentario</th>
			</tr>
			<xsl:for-each select="marca">
			<tr>
		        <td><xsl:value-of select="@lat"/></td>
		        <td><xsl:value-of select="@lng"/></td>
		        <td><xsl:value-of select="@codigohtml"/></td>
		    </tr>
		    </xsl:for-each>
		</table>
         
	</xsl:template>
</xsl:stylesheet>