<?xml version="1.0" encoding="UTF-8"?>
	<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output encoding="ISO-8859-1"></xsl:output>
    
    <xsl:template match="bold">
        <b>
            <xsl:value-of select="."/>
        </b> 
    </xsl:template>
    
    <xsl:template match="italic">
        <i>
            <xsl:value-of select="."/>
        </i> 
    </xsl:template>
    
    <xsl:template match="red">
        <p style="color:red">
            <xsl:value-of select="."/>
        </p> 
    </xsl:template>
        
</xsl:stylesheet>