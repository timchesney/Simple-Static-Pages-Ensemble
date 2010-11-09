<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl"/>
	<xsl:import href="../utilities/date-time.xsl"/>
	<xsl:import href="../utilities/navigation.xsl"/>

<xsl:output method="html" omit-xml-declaration="yes" indent="no" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in"/>

<xsl:template match="/">
	<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
	<html lang="en">
		<head>
			<!-- Start Page Data -->
			<meta charset="utf-8" />
			<meta name="title" content="{$page-title}" />
			<meta name="description" content="" />
			<meta name="tags" content="" />
			<title><xsl:call-template name="page-title"/></title>
			<!-- End Page Data -->
			<!-- Start Fav Icons -->
			<link rel="shortcut icon" href="/favicon.ico" />
			<link rel="icon" type="images/png" href="/favicon.png" />
			<!-- End Fav Icons -->
			<!-- Start CSS Links -->
			<link rel="stylesheet" media="screen" href="{$workspace}/css/reset.css" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/styles.css" />
			<!-- End CSS Links -->
			<!-- Start In-Page JavaScript -->
			<script>
				document.documentElement.className = "js";
			</script>
			<!-- End In-Page JavaScript -->
		</head>
		<body id="{$current-page}-page">
			<!-- Start Container -->
				<div id="container">
					<!-- End Navigation -->
					<ul class="navigation">
						<xsl:call-template name="page-navigation"/>
					</ul>
					<!-- Start Navigation -->
					<!-- Start Header -->
					<div class="header">
						<div class="sitename"><h1><xsl:value-of select="data/settings/entry/site-name"/></h1></div>
						<div class="tagline"><xsl:value-of select="data/settings/entry/tag-line"/></div>
					</div>
					<!-- End Header -->
				<!-- Start Content -->
					<xsl:apply-templates/>
					<!-- End Content -->
					<!-- Start Sidebar -->
					<div id="sidebar">
						<xsl:copy-of select="data/settings/entry/sidebar-text/*"/>
					</div>
					<!-- End Header -->
				<!-- Start Footer -->
				<div class="footer" id="site-info">
						&#169; <xsl:value-of select="data/settings/entry/site-name"/><xsl:text> </xsl:text><xsl:value-of select="$this-year"/>
				</div>
				<!-- End Footer -->
			</div>
			<!-- End Container -->
			<!-- Start Javascript Links -->
			<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
			<!-- End Javascript Links -->
		</body>
	</html>
</xsl:template>

<xsl:strip-space elements="*"/>

</xsl:stylesheet>