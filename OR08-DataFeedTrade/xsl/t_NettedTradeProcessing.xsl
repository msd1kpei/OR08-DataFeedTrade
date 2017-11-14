<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:inp1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://www.kpei.co.id/razor/Equity" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tns="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ns0="http://oracle.com/sca/soapservice/KPEIMID/OR08-DataFeedTrade/OR08_DataFeedTrade" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns1="http://www.kpei.co.id/DataFeedTradeRequest" exclude-result-prefixes="xsi xsl inp1 wsdl out1 xsd tns ns0 ns1 ns2 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas">
  <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="http://SERVICESERVER:7777/soa-infra/services/default/GE03-XMLUtility/GE03-XMLUtility.wsdl"/>
            <oracle-xsl-mapper:rootElement name="getXMLDataReply" namespace="http://www.kpei.co.id/GE03-XMLUtility/types"/>
         </oracle-xsl-mapper:source>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../../../../../00.%20PROJECTS/MWI/OR08-DataFeedTrade/OR08_DataFeedTrade.wsdl"/>
            <oracle-xsl-mapper:rootElement name="NettedTrade" namespace="http://www.kpei.co.id/DataFeedTradeRequest"/>
            <oracle-xsl-mapper:param name="inputVariable.request"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="XSD">
            <oracle-xsl-mapper:schema location="../../../../../00.%20PROJECTS/MWI/OR08-DataFeedTrade/xsd/DataFeedTrade-razor.xsd"/>
            <oracle-xsl-mapper:rootElement name="kpeiInbound" namespace="http://www.kpei.co.id/razor/Equity"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:mapShowPrefixes type="true"/>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [MON NOV 13 15:55:23 ICT 2017].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:param name="inputVariable.request"/>
  <xsl:template match="/">
    <ns2:kpeiInbound>
      <ns2:header>
        <xsl:attribute name="id">
          <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/@id"/>
        </xsl:attribute>
        <ns2:asAt>
          <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/ns1:asAt"/>
        </ns2:asAt>
        <ns2:sourceSystem>
          <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/ns1:source"/>
        </ns2:sourceSystem>
      </ns2:header>
      <ns2:body>
        <ns2:content>
          <xsl:for-each select="$inputVariable.request/ns1:NettedTrade/ns1:body/ns1:content/ns1:deal">
            <ns2:deal>
              <ns2:dealHeader>
                <ns2:dealId>
                  <xsl:value-of select="ns1:dealHeader/ns1:dealId"/>
                </ns2:dealId>
                <ns2:dealType>
                  <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[1]/inp1:Value"/>
                </ns2:dealType>
                <ns2:dealDate>
                  <xsl:value-of select="ns1:dealHeader/ns1:dealDate"/>
                </ns2:dealDate>
                <ns2:status>
                  <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[2]/inp1:Value"/>
                </ns2:status>
              </ns2:dealHeader>
              <ns2:trade>
                <ns2:tradeHeader>
                  <ns2:tradeId>
                    <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeId"/>
                  </ns2:tradeId>
                  <ns2:tradeDate>
                    <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeDate"/>
                  </ns2:tradeDate>
                  <ns2:tradeType>
                    <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeType"/>
                  </ns2:tradeType>
                  <ns2:counterparty>
                    <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:counterparty"/>
                  </ns2:counterparty>
                  <ns2:internalUnit>
                    <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[3]/inp1:Value"/>
                  </ns2:internalUnit>
                  <ns2:buySell>
                    <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:buySell"/>
                  </ns2:buySell>
                  <ns2:status>
                    <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[4]/inp1:Value"/>
                  </ns2:status>
                </ns2:tradeHeader>
                <ns2:product>
                  <ns2:equity>
                    <ns2:instrumentId>
                      <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:instrumentId"/>
                    </ns2:instrumentId>
                    <ns2:numberShares>
                      <xsl:value-of select="oraext:query-database(concat(concat(&quot;SELECT split_ratio FROM corporate_actions WHERE instrument_code = '&quot;,ns1:trade/ns1:product/ns1:equity/ns1:instrumentId,&quot;' AND (ex_date &lt;= TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') AND TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') &lt; eff_date)&quot;),&quot;UNION ALL SELECT 1 AS split_ratio FROM DUAL WHERE NOT EXISTS (&quot;,concat(&quot;SELECT split_ratio FROM corporate_actions WHERE instrument_code = '&quot;,ns1:trade/ns1:product/ns1:equity/ns1:instrumentId,&quot;' AND (ex_date &lt;= TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') AND TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') &lt; eff_date)&quot;),&quot;)&quot;),false(),false(),&quot;jdbc/ds_kpeimid&quot;) * ns1:trade/ns1:product/ns1:equity/ns1:numberShares"/>
                    </ns2:numberShares>
                    <ns2:exchangeCode>
                      <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[5]/inp1:Value"/>
                    </ns2:exchangeCode>
                    <ns2:currency>
                      <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:currency"/>
                    </ns2:currency>
                    <ns2:paymentAmount>
                      <ns2:paymentType>
                        <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[6]/inp1:Value"/>
                      </ns2:paymentType>
                      <ns2:paymentAmount>
                        <ns2:currency>
                          <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:paymentAmount/ns1:currency"/>
                        </ns2:currency>
                        <ns2:amount>
                          <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:paymentAmount/ns1:amount"/>
                        </ns2:amount>
                      </ns2:paymentAmount>
                      <ns2:adjustedPaymentDate>
                        <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:adjustedPaymentDate"/>
                      </ns2:adjustedPaymentDate>
                    </ns2:paymentAmount>
                  </ns2:equity>
                </ns2:product>
                <ns2:extensions>
                  <xsl:for-each select="ns1:trade/ns1:extensions/ns1:extension">
                              <!--<xsl:if test="contains(ns1:name,&quot;InvestorID&quot;) = false()">-->
                    <ns2:extension>
                      <ns2:name>
                        <xsl:value-of select="ns1:name"/>
                      </ns2:name>
                      <ns2:value>
                        <xsl:value-of select="ns1:value"/>
                      </ns2:value>
                    </ns2:extension>
                              <!--</xsl:if>-->
                  </xsl:for-each>
                </ns2:extensions>
              </ns2:trade>
            </ns2:deal>
          </xsl:for-each>
        </ns2:content>
      </ns2:body>
    </ns2:kpeiInbound>
  </xsl:template>
</xsl:stylesheet>