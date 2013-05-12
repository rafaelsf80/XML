<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/Persona">
        NOMBRE COMPLETO: <xsl:value-of select="Nombre"/>
        APELLIDOS: <xsl:value-of select="Apellidos"/>
        EDAD: <xsl:value-of select="Edad"/> Años
    </xsl:template>
</xsl:stylesheet>