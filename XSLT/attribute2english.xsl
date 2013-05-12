<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:output encoding="ISO-8859-1"></xsl:output>
    <xsl:template match="Contactos">
        <Contacts>
            <xsl:for-each select="Persona">
                <Person>
                    <!-- xsl:attribute para generar atributos -->
                    <xsl:attribute name="Name">
                        <xsl:value-of select="Nombre"/>
                    </xsl:attribute>
                    <xsl:attribute name="Surname">
                        <xsl:value-of select="Apellidos"/>
                    </xsl:attribute>
                    <xsl:attribute name="Age">
                        <xsl:value-of select="Edad"/>
                    </xsl:attribute>
                    <xsl:attribute name="Date">
                        <xsl:value-of select="Fecha"/>
                    </xsl:attribute>
                </Person>
            </xsl:for-each>           
        </Contacts>
    </xsl:template>
</xsl:stylesheet>