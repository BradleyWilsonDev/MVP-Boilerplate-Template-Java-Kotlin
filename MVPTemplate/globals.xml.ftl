<?xml version="1.0"?>
<globals>
   <#assign generateKotlin=(((includeKotlinSupport!false) || (language!'Java')?string == 'Kotlin'))>
   <global id="generateKotlin" type="boolean" value="${generateKotlin?string}" />
   <global id="manifestOut" value="${manifestDir}" />
   <global id="testOut" value="${escapeXmlAttribute(srcOut)}/test/java/${slashedPackageName(packageName)}"/>
   <global id="androidTestOut" value="${escapeXmlAttribute(srcOut)}/androidTest/java/${slashedPackageName(packageName)}"/>
   <global id="resOut" value="${escapeXmlAttribute(resDir)}" />
   <global id="srcOut" value="${escapeXmlAttribute(srcOut)}/${slashedPackageName(packageName)}" />
   <global id="ktOrJavaExt" type="string" value="${generateKotlin?string('kt','java')}" />
</globals>