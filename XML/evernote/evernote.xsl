<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

<xsl:output encoding="ISO-8859-1"></xsl:output>

<xsl:template match="description">
  <manydata><xsl:apply-templates/></manydata>
 </xsl:template>
 
 
<xsl:template match="posts">

	<xsl:text disable-output-escaping="yes">
	<![CDATA[<!DOCTYPE en-export SYSTEM "http://xml.evernote.com/pub/evernote-export.dtd">
	<en-export export-date="20120419T204655Z" application="Evernote/Windows" version="4.x">]]>
	</xsl:text>
	
	 <xsl:for-each select="item">
		 <note>
			<title>
	            <xsl:value-of select="title"/>
	        </title>
	        <content>
		        <xsl:text disable-output-escaping="yes">
		        <![CDATA[<![CDATA[<?xml version="1.0" encoding="UTF-8"?>
				<!DOCTYPE en-note SYSTEM "http://xml.evernote.com/pub/enml2.dtd">
				<en-note style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">]]>
				</xsl:text>
		        
		        <a>
		        <xsl:attribute name="href">
		            <xsl:value-of select="link"/>
		        </xsl:attribute>
		    	<xsl:value-of select="link"/>
		        </a>
		        
		        <xsl:text disable-output-escaping="yes">
				&lt;/en-note&gt;]]&gt;
				</xsl:text>
			</content>
	        <created>20120419T204456Z</created>
			<updated>20120419T204649Z</updated>
			
			<!-- Convert 'Tags:jobs,uc3m;Comments:;Annotations and Sticky notes:'  into   <tag>jobs</tag><tag>uc3m</tag> -->
			<xsl:for-each select="str:tokenize(substring-before(substring(description, 6), ';Comments:;Annotations and Sticky notes:'), ',')" xmlns:str="http://exslt.org/strings">
  				<xsl:text disable-output-escaping="yes">
				&lt;tag&gt;
				</xsl:text>
				<xsl:value-of select="."/>
				<xsl:text disable-output-escaping="yes">
				&lt;/tag&gt;
				</xsl:text>
 			</xsl:for-each>
 
		  </note>
	</xsl:for-each>	
	<xsl:text disable-output-escaping="yes">
	<![CDATA[</en-export>]]>
	</xsl:text>
</xsl:template>
	
</xsl:stylesheet>
