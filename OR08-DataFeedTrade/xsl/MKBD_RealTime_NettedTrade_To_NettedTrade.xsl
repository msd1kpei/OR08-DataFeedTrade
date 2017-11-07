<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="../OR08_DataFeedTrade.wsdl"/>
      <rootElement name="NettedTrade" namespace="http://www.kpei.co.id/DataFeedTradeRequest"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="../OR08_DataFeedTradeRef.wsdl"/>
      <rootElement name="NettedTrade" namespace="http://www.kpei.co.id/DataFeedTradeRequest"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.5.0(build 110418.1550.0174) AT [WED MAY 17 14:15:11 ICT 2017]. -->
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
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:bpmn="http://schemas.oracle.com/bpm/xpath"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://oracle.com/sca/soapservice/KPEIMID/OR08-DataFeedTrade/OR08_DataFeedTrade"
                xmlns:out1="http://kpei.co.id/MDwsReply.xsd"
                xmlns:inp1="http://www.kpei.co.id/DataFeedTradeRequest"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsd wsdl tns out1 inp1 bpws xp20 mhdr bpel oraext dvm hwf med ids bpm xdk xref bpmn ora socket ldap">
  <xsl:template match="/">
    <inp1:NettedTrade>
      <inp1:header>
        <xsl:if test="/inp1:NettedTrade/inp1:header/@id">
          <xsl:attribute name="id">
            <xsl:value-of select="/inp1:NettedTrade/inp1:header/@id"/>
          </xsl:attribute>
        </xsl:if>
        <inp1:asAt>
          <xsl:value-of select="/inp1:NettedTrade/inp1:header/inp1:asAt"/>
        </inp1:asAt>
        <inp1:source>
          <xsl:value-of select="/inp1:NettedTrade/inp1:header/inp1:source"/>
        </inp1:source>
      </inp1:header>
      <inp1:body>
        <inp1:content>
          <xsl:for-each select="/inp1:NettedTrade/inp1:body/inp1:content/inp1:deal">
            <inp1:deal>
              <inp1:dealHeader>
                <inp1:dealId>
                  <xsl:value-of select="inp1:dealHeader/inp1:dealId"/>
                </inp1:dealId>
                <inp1:dealDate>
                  <xsl:value-of select="inp1:dealHeader/inp1:dealDate"/>
                </inp1:dealDate>
              </inp1:dealHeader>
              <inp1:trade>
                <inp1:tradeHeader>
                  <inp1:tradeId>
                    <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeId"/>
                  </inp1:tradeId>
                  <inp1:tradeDate>
                    <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeDate"/>
                  </inp1:tradeDate>
                  <inp1:tradeType>
                    <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeType"/>
                  </inp1:tradeType>
                  <inp1:counterparty>
                    <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:counterparty"/>
                  </inp1:counterparty>
                  <inp1:buySell>
                    <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:buySell"/>
                  </inp1:buySell>
                </inp1:tradeHeader>
                <inp1:product>
                  <inp1:equity>
                    <inp1:instrumentId>
                      <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:instrumentId"/>
                    </inp1:instrumentId>
                    <inp1:numberShares>
                      <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:numberShares"/>
                    </inp1:numberShares>
                    <inp1:currency>
                      <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:currency"/>
                    </inp1:currency>
                    <inp1:paymentAmount>
                      <inp1:paymentAmount>
                        <inp1:currency>
                          <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:paymentAmount/inp1:currency"/>
                        </inp1:currency>
                        <inp1:amount>
                          <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:paymentAmount/inp1:amount"/>
                        </inp1:amount>
                      </inp1:paymentAmount>
                      <inp1:adjustedPaymentDate>
                        <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:adjustedPaymentDate"/>
                      </inp1:adjustedPaymentDate>
                    </inp1:paymentAmount>
                  </inp1:equity>
                </inp1:product>
                <inp1:extensions>
                  <xsl:for-each select="inp1:trade/inp1:extensions/inp1:extension">
                    <inp1:extension>
                      <inp1:name>
                        <xsl:value-of select="inp1:name"/>
                      </inp1:name>
                      <inp1:value>
                        <xsl:value-of select="inp1:value"/>
                      </inp1:value>
                    </inp1:extension>
                  </xsl:for-each>
                </inp1:extensions>
              </inp1:trade>
            </inp1:deal>
          </xsl:for-each>
        </inp1:content>
      </inp1:body>
      <xsl:choose>
        <xsl:when test="/inp1:NettedTrade/inp1:ext">
          <inp1:ext>
            <xsl:if test="/inp1:NettedTrade/inp1:ext/inp1:value">
              <xsl:for-each select="/inp1:NettedTrade/inp1:ext/inp1:value">
                <xsl:for-each select=".">
                  <inp1:value>
                    <xsl:if test="@id">
                      <xsl:attribute name="id">
                        <xsl:value-of select="@id"/>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of select="."/>
                  </inp1:value>
                </xsl:for-each>
              </xsl:for-each>
              <xsl:for-each select="/inp1:NettedTrade/inp1:ext/inp1:value">
                <xsl:for-each select=".">
                  <inp1:value>
                    <xsl:if test=".">
                      <xsl:attribute name="id">
                        <xsl:text disable-output-escaping="no">MKBDRealTime</xsl:text>
                      </xsl:attribute>
                    </xsl:if>
                    <xsl:text disable-output-escaping="no">true</xsl:text>
                  </inp1:value>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:if>
          </inp1:ext>
        </xsl:when>
        <xsl:otherwise>
            <inp1:ext>
              <inp1:value>
                <xsl:attribute name="id">
                  <xsl:text disable-output-escaping="no">MKBDRealTime</xsl:text>
                </xsl:attribute>
                <xsl:text disable-output-escaping="no">true</xsl:text>
              </inp1:value>
            </inp1:ext>
        </xsl:otherwise>
      </xsl:choose>
    </inp1:NettedTrade>
  </xsl:template>
</xsl:stylesheet>
