<?xml version="1.0" encoding="UTF-8"?>
<!--
  Copyright 2010-2017 BusinessCode GmbH, Germany

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<xsl:stylesheet version="1.0"
  xmlns:gen="http://businesscode.de/generated"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xsla="http://www.w3.org/1999/XSL/Transform/Alias"
  xmlns:wrs="http://www.businesscode.de/schema/bcdui/wrs-1.0.0"
  xmlns:bcdxml="http://www.businesscode.de/schema/bcdui/bcdxml-1.0.0">

  <xsl:import href="validateWrs.xslt"/>

  <!-- media-type="text/xslt"-->
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" media-type="text/xslt" />
  <xsl:namespace-alias stylesheet-prefix="xsla" result-prefix="xsl"/>

  <xsl:param name="customValidationUrl"/>

  <xsl:template match="/*">
    <xsla:stylesheet version="1" bcdxml:base="validateWrsTemplate.xslt" xmlns:bcdxml="http://www.businesscode.de/schema/bcdui/bcdxml-1.0.0">
      <xsl:apply-templates select="$validationTemplate/*/*[local-name()='import']" mode="generateXSLT"/>
      <xsla:import href="{$customValidationUrl}"/>
      <xsl:apply-templates select="$validationTemplate/*/*[local-name()!='import']" mode="generateXSLT"/>
    </xsla:stylesheet>
  </xsl:template>
</xsl:stylesheet>

