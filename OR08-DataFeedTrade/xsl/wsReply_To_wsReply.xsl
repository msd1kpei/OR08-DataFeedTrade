<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../DataTradeBPEL.wsdl"/>
      <rootElement name="wsReply" namespace="http://kpei.co.id/MDwsReply.xsd"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../DataTradeBPEL.wsdl"/>
      <rootElement name="wsReply" namespace="http://kpei.co.id/MDwsReply.xsd"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.5.0(build 110418.1550.0174) AT [THU NOV 24 11:51:30 ICT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ns2="http://kpei.co.id/MDwsReply.xsd"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:client="http://xmlns.oracle.com/ARIS_KPEI_PROJECT_jws/OR08_DataFeedTrade/DataTradeBPEL"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns3="http://schemas.oracle.com/bpel/extension"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ns1="http://www.kpei.co.id/DataTradeRequest"
                xmlns:ns4="http://www.kpei.co.id/writeFileDataTrade"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl plnk wsdl ns2 client xsd ns3 ns1 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
  <xsl:template match="/">
    <ns2:wsReply>
      <ns2:receiveDateTime>
        <xsl:value-of select="/ns2:wsReply/ns2:receiveDateTime"/>
      </ns2:receiveDateTime>
      <ns2:status>
        <xsl:value-of select="/ns2:wsReply/ns2:status"/>
      </ns2:status>
      <ns2:description>
        <xsl:value-of select="/ns2:wsReply/ns2:description"/>
      </ns2:description>
    </ns2:wsReply>
  </xsl:template>
</xsl:stylesheet>
