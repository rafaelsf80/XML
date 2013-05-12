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
                        <th>Fecha</th>
                        <th>Edad</th>
                    </tr>          
                    
                    <!-- Recorre XML -->
                    <xsl:for-each select="Persona">
                     <tr>   
                         <xsl:call-template name="Persona"/>
                         <xsl:apply-templates select="."/>     
                     </tr>   
                    </xsl:for-each>                 
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="Persona[Edad>18]"> 
        <td><p style="color:red"><xsl:value-of select="Edad"/></p></td>      
    </xsl:template>
        
    <xsl:template match="Persona[Edad &lt; 18]">
        <td><xsl:value-of select="Edad"/> (MENOR DE EDAD)</td>    
    </xsl:template>
    
    <xsl:template name="Persona">
            <td><xsl:value-of select="Nombre"/></td>
            <td><xsl:value-of select="Apellidos"/></td>
            <td><xsl:value-of select="Fecha"/></td>
    </xsl:template>
</xsl:stylesheet>