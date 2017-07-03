<?xml version="1.0" encoding="utf-8"?>
<!-- Имя файла: a.xsl -->
<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/TR/xlink">
   <xsl:template match="/">
      <H2>Laba 10</H2>
      <xsl:apply-templates select="INVENTORY/LANGUAGE"
         order-by="+TITLE"/>
   </xsl:template>
   <xsl:template match="LANGUAGE">
         <SPAN STYLE="font-style:italic">Title </SPAN>
         <xsl:value-of select="TITLE"/><BR />
         <SPAN STYLE="font-style:italic">Author: </SPAN>
         <xsl:value-of select="AUTHOR"/><BR />
         <SPAN STYLE="font-style:italic">Origin: </SPAN>
         <xsl:value-of select="ORIGIN"/><BR />
         <SPAN STYLE="font-style:italic">Site: </SPAN>
         <xsl:value-of select="SITE"/><BR /><P />
    </xsl:template>
</xsl:stylesheet>