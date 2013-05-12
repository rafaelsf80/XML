<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xx="http://earth.google.com/kml/2.1"
        version="1.0">
        <xsl:template match="/xx:kml">
            <html>
                <h2><xsl:value-of select="xx:Folder/xx:name"/></h2>
                
                <body>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th>Name</th>
                            <th>Coordinates</th>
                            <th>Pendiente</th>
                        </tr>
                        <xsl:for-each select=".//xx:Placemark">
                            <tr>
                                <td><xsl:value-of select="xx:name"/></td>
                                <td><xsl:value-of select="xx:Point/xx:coordinates"/></td>
                                <td></td>
                            </tr>
                     
                        </xsl:for-each>
                        
                        
                    </table>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>