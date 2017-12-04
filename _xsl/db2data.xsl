<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:saxon="http://saxon.sf.net/"
                extension-element-prefixes="saxon"
                version='2.0'>


<xsl:output saxon:next-in-chain="db2data-p2.xsl"/>

<xsl:template match="standard[status/@mode='deleted']"/>

<xsl:template match="standards">
  <standards>
    <xsl:apply-templates/>
    <responsibleparties>
      <xsl:apply-templates select="organisations/orgkey" mode="mirror"/>
    </responsibleparties>
  </standards>
</xsl:template>

<xsl:template match="orgkey" mode="mirror">
  <rpkey key="{@key}" short="{@short}" long="{@long}"/>
</xsl:template>


<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>
