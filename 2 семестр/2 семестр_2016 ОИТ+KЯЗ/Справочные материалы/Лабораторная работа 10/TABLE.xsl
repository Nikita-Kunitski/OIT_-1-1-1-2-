<?xml version="1.0" encoding="utf-8"?>
<!-- Имя файла: a.xsl -->
<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/TR/xlink">
   <xsl:template match="/">
      <H2>Languages</H2>
      <TABLE BORDER="1" CELLPADDING="5">
         <THEAD>
            <TH>Title</TH>
            <TH>Author</TH>
            <TH>Origin</TH>
            <TH>Site</TH>
         </THEAD>
         <xsl:for-each select="INVENTORY/LANGUAGE[ORIGIN = '1995']">
            <TR ALIGN="CENTER">
               <TD>
                  <xsl:value-of select="TITLE"/>
               </TD>
               <TD>
                  <xsl:value-of select="AUTHOR"/> 
               </TD>
               <TD>
                  <xsl:value-of select="ORIGIN"/>
               </TD>
               <TD>
                  <xsl:value-of select="SITE"/> <BR/>
               </TD>
            </TR>
         </xsl:for-each>
      </TABLE>
   </xsl:template>
</xsl:stylesheet>