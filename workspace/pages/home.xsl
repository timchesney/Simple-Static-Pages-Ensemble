<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

	<xsl:template match="data">
		<div class="content">
			<xsl:apply-templates select="pages"/>
		</div>
</xsl:template>

	<xsl:template match="pages">
		<xsl:choose>
			<!-- test to ensure this is not the home page -->
			<xsl:when test="$page-name != ''">
				<xsl:copy-of select="entry[title/@handle=$page-name]/content/*"/>
			</xsl:when>
			<xsl:otherwise>
				<!-- if it is the home page show the home page content -->
			<xsl:copy-of select="entry[title/@handle='home']/content/*"/>
			</xsl:otherwise>
			</xsl:choose>
</xsl:template>
	

	
</xsl:stylesheet>
