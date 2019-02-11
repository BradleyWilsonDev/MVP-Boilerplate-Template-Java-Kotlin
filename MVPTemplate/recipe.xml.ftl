<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />

    <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />
    <dependency mavenUrl="org.mockito:mockito-core:2+"/>

    <instantiate from="src/app_package/classes/Contract.${ktOrJavaExt}.ftl"
      to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Contract.${ktOrJavaExt}" />

    <instantiate from="src/app_package/classes/Activity.${ktOrJavaExt}.ftl"
      to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}.${ktOrJavaExt}" />

    <instantiate from="src/app_package/classes/Presenter.${ktOrJavaExt}.ftl"
      to="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Presenter.${ktOrJavaExt}" />

    <instantiate from="src/app_package/classes/PresenterTest.${ktOrJavaExt}.ftl"
      to="${escapeXmlAttribute(testOut)}/${folderName}/${className}PresenterTest.${ktOrJavaExt}" />

    <instantiate from="src/app_package/layout/activity_layout.xml.ftl"
       to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <#if isLauncher>
    <merge from="AndroidManifestLauncher.xml.ftl"
      to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />    
    <#else>
    <merge from="AndroidManifest.xml.ftl"
      to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    </#if>

    <#if generateBaseClasses>
    <instantiate from="src/app_package/classes/BaseView.${ktOrJavaExt}.ftl"
      to="${escapeXmlAttribute(srcOut)}/${slashedPackageName(baseFolderName)}/BaseView.${ktOrJavaExt}" />  
    </#if>
   
    <!-- Opens the files automatically when you have created the template -->
    <open file="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Presenter.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(testOut)}/${folderName}/${className}PresenterTest.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/${folderName}/${className}.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(srcOut)}/${folderName}/${className}Contract.${ktOrJavaExt}"/>
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml"/>

</recipe>