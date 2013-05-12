<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:output encoding="ISO-8859-1"></xsl:output>
    <xsl:template match="Contactos">
        <Contacts>
            <xsl:for-each select="Persona">
                <Person>
                    <Name><xsl:value-of select="Nombre"/>
                    </Name>
                    <Surname><xsl:value-of select="Apellidos"/>
                    </Surname>              
                    <Age><xsl:value-of select="Edad"/>
                    </Age> 
                    <Date><xsl:value-of select="Fecha"/>
                    </Date>
                </Person>
            </xsl:for-each>           
        </Contacts>
    </xsl:template>
</xsl:stylesheet>