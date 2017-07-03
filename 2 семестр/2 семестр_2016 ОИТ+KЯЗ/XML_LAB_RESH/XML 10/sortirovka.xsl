<?xml version="1.0" encoding="utf-8"?>
<!-- Имя файла: a.xsl -->
<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/TR/xlink">
   <xsl:template match="/">
      <H2>Laba 10</H2>
      <xsl:for-each
         select="colection/movie"
         order-by="-title"> <!--Сортировка по убыванию-->
         <SPAN STYLE="font-style:italic">Title: </SPAN>
         <xsl:value-of select="title"/><BR />
         <SPAN STYLE="font-style:italic">Author </SPAN>
         <xsl:value-of select="year"/><BR />
         <SPAN STYLE="font-style:italic">Origin: </SPAN>
         <xsl:value-of select="genre"/><BR />
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>