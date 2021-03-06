<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../DataTradeBPEL.wsdl"/>
      <rootElement name="DataTrade" namespace="http://www.kpei.co.id/DataTradeRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../DataTradeBPEL.wsdl"/>
      <rootElement name="DataTrade" namespace="http://www.kpei.co.id/DataTradeRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.5.0(build 110418.1550.0174) AT [THU NOV 24 11:51:14 ICT 2016]. -->
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
    <ns1:DataTrade>
      <ns1:header>
        <xsl:if test="/ns1:DataTrade/ns1:header/@id">
          <xsl:attribute name="id">
            <xsl:value-of select="/ns1:DataTrade/ns1:header/@id"/>
          </xsl:attribute>
        </xsl:if>
        <ns1:asAt>
          <xsl:value-of select="/ns1:DataTrade/ns1:header/ns1:asAt"/>
        </ns1:asAt>
        <ns1:source>
          <xsl:value-of select="/ns1:DataTrade/ns1:header/ns1:source"/>
        </ns1:source>
      </ns1:header>
      <ns1:isDummy>
        <xsl:value-of select="/ns1:DataTrade/ns1:isDummy"/>
      </ns1:isDummy>
      <ns1:session>
        <xsl:value-of select="/ns1:DataTrade/ns1:session"/>
      </ns1:session>
      <ns1:body>
        <ns1:trade>
          <ns1:tradeNumber>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:tradeNumber"/>
          </ns1:tradeNumber>
          <ns1:sellerBuyer>
            <ns1:sellerBroker>
              <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBuyer/ns1:sellerBroker"/>
            </ns1:sellerBroker>
            <ns1:stockCode>
              <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBuyer/ns1:stockCode"/>
            </ns1:stockCode>
            <ns1:boardCode>
              <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBuyer/ns1:boardCode"/>
            </ns1:boardCode>
            <ns1:tradeNumber>
              <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBuyer/ns1:tradeNumber"/>
            </ns1:tradeNumber>
            <ns1:tradeDate>
              <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBuyer/ns1:tradeDate"/>
            </ns1:tradeDate>
            <ns1:buyerBroker>
              <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBuyer/ns1:buyerBroker"/>
            </ns1:buyerBroker>
          </ns1:sellerBuyer>
          <ns1:tradeDate>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:tradeDate"/>
          </ns1:tradeDate>
          <ns1:sessionTrade>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sessionTrade"/>
          </ns1:sessionTrade>
          <ns1:boardCode>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:boardCode"/>
          </ns1:boardCode>
          <ns1:sellerBroker>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerBroker"/>
          </ns1:sellerBroker>
          <ns1:sellerClient>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerClient"/>
          </ns1:sellerClient>
          <ns1:sellerType>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:sellerType"/>
          </ns1:sellerType>
          <ns1:brokerCode>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:brokerCode"/>
          </ns1:brokerCode>
          <ns1:brokerClient>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:brokerClient"/>
          </ns1:brokerClient>
          <ns1:brokerType>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:brokerType"/>
          </ns1:brokerType>
          <ns1:stockCode>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:stockCode"/>
          </ns1:stockCode>
          <ns1:volume>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:volume"/>
          </ns1:volume>
          <ns1:price>
            <xsl:value-of select="/ns1:DataTrade/ns1:body/ns1:trade/ns1:price"/>
          </ns1:price>
        </ns1:trade>
      </ns1:body>
      <ns1:ext>
        <xsl:if test="/ns1:DataTrade/ns1:ext/ns1:value">
          <xsl:for-each select="/ns1:DataTrade/ns1:ext/ns1:value">
            <ns1:value>
              <xsl:if test="@id">
                <xsl:attribute name="id">
                  <xsl:value-of select="@id"/>
                </xsl:attribute>
              </xsl:if>
              <xsl:value-of select="."/>
            </ns1:value>
          </xsl:for-each>
        </xsl:if>
      </ns1:ext>
    </ns1:DataTrade>
  </xsl:template>
</xsl:stylesheet>
