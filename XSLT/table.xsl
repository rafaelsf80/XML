<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output encoding="ISO-8859-1"></xsl:output>
    <xsl:template match="/Contactos">
        <html>
        <body>
        <h2>Las dos primeras personas del XML</h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th>Fecha</th>
            </tr>
            <!--<xsl:for-each select="Persona[position() &lt; 3]">-->
            <xsl:for-each select="Persona">
                <xsl:sort select="Edad" data-type="number"></xsl:sort>
                <xsl:if test="position() &lt; 3">    
                <tr>
                <td><xsl:value-of select="Nombre"/></td>
                <td><xsl:value-of select="Apellidos"/></td>
                <td><xsl:value-of select="Edad"/></td>
                <td><xsl:value-of select="Fecha"/></td>
                </tr>
                </xsl:if>
             </xsl:for-each>          
        </table>
            
        <h2>Personas que empiecen por S</h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Edad</th>
                <th>Fecha</th>
            </tr>
            <!--<xsl:for-each select="Persona[starts-with(upper-case(Nombre), 'S')]">-->
            <!--  upper-case no funciona con ecllipse. Con Oxygen hay que usar  version="2.0"
            <xsl:for-each select="Persona">
                <xsl:if test="starts-with(upper-case(Nombre), 'S')">
                <tr>
                    <td><xsl:value-of select="Nombre"/></td>
                    <td><xsl:value-of select="Apellidos"/></td>
                    <td><xsl:value-of select="Edad"/></td>
                    <td><xsl:value-of select="Fecha"/></td>
                </tr>
                </xsl:if>
            </xsl:for-each>-->       
        </table>
            
        <h2>Clasifición de edades (rojo&lt;18; 18&lt;verde&lt;65; violeta&gt;65)</h2>
            <table border="1">
                <tr bgcolor="#9acd32">
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Edad</th>
                    <th>Fecha</th>
                </tr>
                <!--<xsl:for-each select="Persona[(Edad &gt; 18) and (Edad &lt; 65)]">-->
                <xsl:for-each select="Persona">
                    <tr>
                        <td><xsl:value-of select="Nombre"/></td>
                        <td><xsl:value-of select="Apellidos"/></td>
                        <xsl:choose>
                            <xsl:when test="Edad &lt; 18">
                                <td bgcolor="#ff0000"><xsl:value-of select="Edad"/></td>
                            </xsl:when>
                            <xsl:when test="(Edad &gt; 18) and (Edad &lt; 65)">
                                <td bgcolor="#00ff00"><xsl:value-of select="Edad"/></td>
                            </xsl:when>
                            <xsl:when test="Edad &gt; 65">
                                <td bgcolor="#ff00ff"><xsl:value-of select="Edad"/></td>
                            </xsl:when>
                         </xsl:choose>                               
                        <td><xsl:value-of select="Fecha"/></td>
                    </tr>
                </xsl:for-each>
            </table>      
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>