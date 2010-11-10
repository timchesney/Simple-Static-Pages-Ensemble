<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="page-title">
		<xsl:choose>
			<xsl:when test="$current-path != '/'">
				<xsl:value-of select="data/settings/entry/site-name"/>
	<xsl:text> &#8212; </xsl:text>
				<xsl:value-of select="data/pages/entry[title/@handle=$page-name]/title"/>
			</xsl:when>
			<xsl:otherwise>
	<xsl:value-of select="data/settings/entry/site-name"/>
	<xsl:text> &#8212; </xsl:text>
				<xsl:value-of select="data/settings/entry/tag-line"/>
			</xsl:otherwise>
		</xsl:choose>
</xsl:template>

</xsl:stylesheet>