<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xlink="http://www.w3.org/TR/xlink">
	<xsl:template match="/colection">
		<html>
			<body>
				<table border="1">
					<tr>
						<span style="font-style:italic"><th>Title</th></span>
						<span style="font-style:italic"><th>Genre</th></span>
						<span style="font-style:italic"><th>Year</th></span>
					</tr>
				<xsl:for-each select="movie">
					<tr>
						<td><xsl:value-of select="title"/></td>
						<td><xsl:value-of select="genre"/></td>
						<td><xsl:value-of select="year"/></td>
					</tr>					
				</xsl:for-each>
			</table>
			</body>
		</html>
	</xsl:stylesheet>
	</xsl:stylesheet>