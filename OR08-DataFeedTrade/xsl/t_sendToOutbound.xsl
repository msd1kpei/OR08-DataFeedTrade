<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="XSD">
      <schema location="../../../../00.%20PROJECTS/MWI/OR08-DataFeedTrade/xsd/DataFeedTrade-razor.xsd"/>
      <rootElement name="kpeiInbound" namespace="http://www.kpei.co.id/razor/Equity"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="XSD">
      <schema location="../../../../00.%20PROJECTS/MWI/OR08-DataFeedTrade/xsd/DataFeedTrade-razor.xsd"/>
      <rootElement name="kpeiInbound" namespace="http://www.kpei.co.id/razor/Equity"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.5.0(build 110418.1550.0174) AT [TUE NOV 22 14:48:22 ICT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ns0="http://www.kpei.co.id/razor/Equity"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsd ns0 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
  <xsl:template match="/">
    <kpeiInbound>
      <header>
        <xsl:attribute name="id">
          <xsl:value-of select="/ns0:kpeiInbound/ns0:header/@id"/>
        </xsl:attribute>
        <asAt>
          <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:asAt"/>
        </asAt>
        <sourceSystem>
          <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:sourceSystem"/>
        </sourceSystem>
      </header>
      <body>
        <content>
          <xsl:for-each select="/ns0:kpeiInbound/ns0:body/ns0:content/ns0:deal">
            <deal>
              <dealHeader>
                <dealId>
                  <xsl:value-of select="ns0:dealHeader/ns0:dealId"/>
                </dealId>
                <dealType>
                  <xsl:value-of select="ns0:dealHeader/ns0:dealType"/>
                </dealType>
                <dealDate>
                  <xsl:value-of select="ns0:dealHeader/ns0:dealDate"/>
                </dealDate>
                <status>
                  <xsl:value-of select="ns0:dealHeader/ns0:status"/>
                </status>
              </dealHeader>
              <trade>
                <tradeHeader>
                  <tradeId>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeId"/>
                  </tradeId>
                  <tradeDate>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeDate"/>
                  </tradeDate>
                  <tradeType>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeType"/>
                  </tradeType>
                  <counterparty>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:counterparty"/>
                  </counterparty>
                  <internalUnit>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:internalUnit"/>
                  </internalUnit>
                  <buySell>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:buySell"/>
                  </buySell>
                  <status>
                    <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:status"/>
                  </status>
                </tradeHeader>
                <product>
                  <equity>
                    <instrumentId>
                      <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:instrumentId"/>
                    </instrumentId>
                    <numberShares>
                      <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:numberShares"/>
                    </numberShares>
                    <exchangeCode>
                      <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:exchangeCode"/>
                    </exchangeCode>
                    <currency>
                      <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:currency"/>
                    </currency>
                    <paymentAmount>
                      <paymentType>
                        <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentType"/>
                      </paymentType>
                      <paymentAmount>
                        <currency>
                          <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentAmount/ns0:currency"/>
                        </currency>
                        <amount>
                          <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentAmount/ns0:amount"/>
                        </amount>
                      </paymentAmount>
                      <adjustedPaymentDate>
                        <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
                      </adjustedPaymentDate>
                    </paymentAmount>
                  </equity>
                </product>
                <extensions>
                  <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                    <extension>
                      <name>
                        <xsl:value-of select="ns0:name"/>
                      </name>
                      <value>
                        <xsl:value-of select="ns0:value"/>
                      </value>
                    </extension>
                  </xsl:for-each>
                </extensions>
              </trade>
            </deal>
          </xsl:for-each>
        </content>
      </body>
    </kpeiInbound>
  </xsl:template>
</xsl:stylesheet>
