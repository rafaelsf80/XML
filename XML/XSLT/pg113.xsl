<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output encoding="ISO-8859-1"></xsl:output>
    
    <xsl:template match="source/list">
        <html>
            <body>
                <h2 align="center">Procesado condicional pg:113</h2>
                    <xsl:for-each select="entry">
                        <xsl:value-of select="@name"/>
                        <xsl:choose>
                            <xsl:when test="not (position()=last())">
                                ,
                            </xsl:when>
                            <xsl:otherwise>
                                .
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>