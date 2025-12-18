<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    
    <xsl:template match="/">
        <xsl:variable name="data" select="//num"/>
        Original: <xsl:for-each select="$data"><xsl:value-of select="."/> </xsl:for-each>
        
        Sorted: <xsl:call-template name="quicksort">
            <xsl:with-param name="list" select="$data"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template name="quicksort">
        <xsl:param name="list"/>
        <xsl:if test="count($list) > 0">
            <xsl:variable name="pivot" select="$list[1]"/>
            
            <xsl:call-template name="quicksort">
                <xsl:with-param name="list" select="$list[. &lt; $pivot]"/>
            </xsl:call-template>
            
            <xsl:for-each select="$list[. = $pivot]">
                <xsl:value-of select="."/> <xsl:text> </xsl:text>
            </xsl:for-each>
            
            <xsl:call-template name="quicksort">
                <xsl:with-param name="list" select="$list[. > $pivot]"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
<!--
    Input XML:
    <root>
        <num>10</num><num>7</num><num>8</num><num>9</num><num>1</num><num>5</num>
    </root>
-->
