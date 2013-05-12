<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:output encoding="ISO-8859-1"></xsl:output>
    <xsl:template match="Contactos">
        <html>
            <body>
                <h2 align="center">Tabla usando plantillas</h2>
                <table border="2" align="center">
                    <tr bgcolor="#9acd32">
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Edad</th>
                        <th>Fecha</th>
                    </tr>          
                    <xsl:apply-templates select="Persona"/>                   
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Persona[Edad>18]">
        <tr>
            <td><xsl:value-of select="Nombre"/></td>
            <td><xsl:value-of select="Apellidos"/></td>
            <td><xsl:value-of select="Edad"/></td>
            <td><xsl:value-of select="Fecha"/></td>
            <!-- con apply-templates también funcionaría, cogería por defecto -->
        </tr>
    </xsl:template>
        
    <xsl:template match="Persona[Edad &lt; 18]">
        <tr>
            <p style="color:red">
            <td><xsl:value-of select="Nombre"/></td>
            <td><xsl:value-of select="Apellidos"/></td>
            <td><xsl:value-of select="Edad"/> (MENOR DE EDAD)</td>
            <td><xsl:value-of select="Fecha"/></td>
            </p>
            <!-- con apply-templates también funcionaría, cogería por defecto -->
        </tr>    
    </xsl:template>
     
</xsl:stylesheet>