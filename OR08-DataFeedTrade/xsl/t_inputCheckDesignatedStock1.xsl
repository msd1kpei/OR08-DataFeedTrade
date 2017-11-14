<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns0="http://oracle.com/sca/soapservice/mysqlTestInsert/CheckDesignatedStockServ/checkDesignatedStockService" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:ns1="http://www.kpei.co.id/CheckDesignatedStock" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:bpmn="http://schemas.oracle.com/bpm/xpath" xmlns:tns="http://oracle.com/sca/soapservice/KPEIMID/OR08-DataFeedTrade/OR08_DataFeedTrade" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:inp1="http://www.kpei.co.id/DataFeedTradeRequest" exclude-result-prefixes="xsi xsl wsdl out1 xsd tns inp1 ns0 ns1 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref bpmn ldap">
   <xsl:template match="/">
      <ns1:NettedTrade>
         <ns1:header>
            <xsl:if test="/inp1:NettedTrade/inp1:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/inp1:NettedTrade/inp1:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <ns1:asAt>
               <xsl:value-of select="/inp1:NettedTrade/inp1:header/inp1:asAt"/>
            </ns1:asAt>
            <ns1:source>
               <xsl:value-of select="/inp1:NettedTrade/inp1:header/inp1:source"/>
            </ns1:source>
         </ns1:header>
         <ns1:body>
            <ns1:content>
               <xsl:for-each select="/inp1:NettedTrade/inp1:body/inp1:content/inp1:deal">
                  <ns1:deal>
                     <ns1:dealHeader>
                        <ns1:dealId>
                           <xsl:value-of select="inp1:dealHeader/inp1:dealId"/>
                        </ns1:dealId>
                        <ns1:dealDate>
                           <xsl:value-of select="inp1:dealHeader/inp1:dealDate"/>
                        </ns1:dealDate>
                     </ns1:dealHeader>
                     <ns1:trade>
                        <ns1:tradeHeader>
                           <ns1:tradeId>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeId"/>
                           </ns1:tradeId>
                           <ns1:tradeDate>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeDate"/>
                           </ns1:tradeDate>
                           <ns1:tradeType>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:tradeType"/>
                           </ns1:tradeType>
                           <ns1:counterparty>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:counterparty"/>
                           </ns1:counterparty>
                           <ns1:buySell>
                              <xsl:value-of select="inp1:trade/inp1:tradeHeader/inp1:buySell"/>
                           </ns1:buySell>
                        </ns1:tradeHeader>
                        <ns1:product>
                           <ns1:equity>
                              <ns1:instrumentId>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:instrumentId"/>
                              </ns1:instrumentId>
                              <ns1:numberShares>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:numberShares"/>
                              </ns1:numberShares>
                              <ns1:currency>
                                 <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:currency"/>
                              </ns1:currency>
                              <ns1:paymentAmount>
                                 <ns1:paymentAmount>
                                    <ns1:currency>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:paymentAmount/inp1:currency"/>
                                    </ns1:currency>
                                    <ns1:amount>
                                       <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:paymentAmount/inp1:amount"/>
                                    </ns1:amount>
                                 </ns1:paymentAmount>
                                 <ns1:adjustedPaymentDate>
                                    <xsl:value-of select="inp1:trade/inp1:product/inp1:equity/inp1:paymentAmount/inp1:adjustedPaymentDate"/>
                                 </ns1:adjustedPaymentDate>
                              </ns1:paymentAmount>
                           </ns1:equity>
                        </ns1:product>
                        <ns1:extensions>
                           <xsl:for-each select="inp1:trade/inp1:extensions/inp1:extension">
                              <ns1:extension>
                                 <ns1:name>
                                    <xsl:value-of select="inp1:name"/>
                                 </ns1:name>
                                 <ns1:value>
                                    <xsl:value-of select="inp1:value"/>
                                 </ns1:value>
                              </ns1:extension>
                           </xsl:for-each>
                        </ns1:extensions>
                     </ns1:trade>
                  </ns1:deal>
               </xsl:for-each>
            </ns1:content>
         </ns1:body>
         <ns1:ext>
            <xsl:if test="/inp1:NettedTrade/inp1:ext/inp1:value">
               <xsl:for-each select="/inp1:NettedTrade/inp1:ext/inp1:value">
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
      </ns1:NettedTrade>
   </xsl:template>
</xsl:stylesheet>