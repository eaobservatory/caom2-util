<?xml version="1.0"?>
<!--
    Copyright (C) 2015 Science and Technology Facilities Council.
    Copyright (C) 2015 East Asian Observatory.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->
<xsl:stylesheet version="1.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:caom2="http://www.opencadc.org/caom2/xml/v2.3">
    <xsl:output method="text" />
    <xsl:strip-space elements="*" />

    <xsl:template match="/">
        <xsl:text>Observation: </xsl:text>
        <xsl:value-of select="./caom2:Observation/caom2:observationID" />
        <xsl:text>&#xa;&#xa;Last modified: </xsl:text>
        <xsl:value-of select="./caom2:Observation/@caom2:lastModified" />
        <xsl:text>&#xa;&#xa;Meta release: </xsl:text>
        <xsl:value-of select="./caom2:Observation/caom2:metaRelease" />
        <xsl:text>&#xa;&#xa;</xsl:text>

        <xsl:apply-templates select="caom2:Observation/caom2:planes" />
    </xsl:template>

    <xsl:template match="caom2:plane">
        <xsl:value-of select="./caom2:productID" />
        <xsl:text>&#xa;    Last modified: </xsl:text>
        <xsl:value-of select="@caom2:lastModified" />
        <xsl:text>&#xa;&#xa;    Meta release: </xsl:text>
        <xsl:value-of select="./caom2:metaRelease" />
        <xsl:text>&#xa;    Data release: </xsl:text>
        <xsl:value-of select="./caom2:dataRelease" />
        <xsl:text>&#xa;&#xa;</xsl:text>
    </xsl:template>
</xsl:stylesheet>
