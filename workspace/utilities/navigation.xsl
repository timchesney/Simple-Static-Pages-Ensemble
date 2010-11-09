<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="page-navigation">
		<li>
			<xsl:if test="$page-name=''">
			<xsl:attribute name="class">current</xsl:attribute>
				</xsl:if>
			<a href="{$root}">Home</a>
		</li>
				<xsl:for-each select="data/pages/entry[title/@handle !='home']">
			<li><xsl:if test="title/@handle = $page-name">
					<xsl:attribute name="class">current</xsl:attribute>
					</xsl:if>
			<a href="{$root}/{title/@handle}"><xsl:value-of select="title"/></a>
			</li>
		</xsl:for-each>
</xsl:template>

</xsl:stylesheet>