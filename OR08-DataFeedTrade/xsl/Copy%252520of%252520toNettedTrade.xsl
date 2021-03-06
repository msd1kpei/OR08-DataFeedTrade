<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:inp1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns4="http://www.kpei.co.id/razor/Equity" xmlns:tns="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ns0="http://oracle.com/sca/soapservice/KPEIMID/OR08-DataFeedTrade/OR08_DataFeedTrade" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns1="http://www.kpei.co.id/DataFeedTradeRequest" exclude-result-prefixes="xsi xsl inp1 wsdl out1 xsd tns ns0 ns1 ns4 bpws xpath20 ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="inputVariable.request"/>
   <xsl:template match="/">
      <ns4:kpeiInbound>
         <ns4:header>
            <xsl:attribute name="id">
               <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/@id"/>
            </xsl:attribute>
            <ns4:asAt>
               <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/ns1:asAt"/>
            </ns4:asAt>
            <ns4:sourceSystem>
               <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/ns1:source"/>
            </ns4:sourceSystem>
         </ns4:header>
         <ns4:body>
            <ns4:content>
               <xsl:for-each select="$inputVariable.request/ns1:NettedTrade/ns1:body/ns1:content/ns1:deal">
                  <ns4:deal>
                     <ns4:dealHeader>
                        <ns4:dealId>
                           <xsl:value-of select="ns1:dealHeader/ns1:dealId"/>
                        </ns4:dealId>
                        <ns4:dealType>
                           <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[1]/inp1:Value"/>
                        </ns4:dealType>
                        <ns4:dealDate>
                           <xsl:value-of select="ns1:dealHeader/ns1:dealDate"/>
                        </ns4:dealDate>
                        <ns4:status>
                           <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[2]/inp1:Value"/>
                        </ns4:status>
                     </ns4:dealHeader>
                     <ns4:trade>
                        <ns4:tradeHeader>
                           <ns4:tradeId>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeId"/>
                           </ns4:tradeId>
                           <ns4:tradeDate>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeDate"/>
                           </ns4:tradeDate>
                           <ns4:tradeType>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeType"/>
                           </ns4:tradeType>
                           <ns4:counterparty>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:counterparty"/>
                           </ns4:counterparty>
                           <ns4:internalUnit>
                              <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[3]/inp1:Value"/>
                           </ns4:internalUnit>
                           <ns4:buySell>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:buySell"/>
                           </ns4:buySell>
                           <ns4:status>
                              <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[4]/inp1:Value"/>
                           </ns4:status>
                        </ns4:tradeHeader>
                        <ns4:product>
                           <ns4:equity>
                              <ns4:instrumentId>
                                 <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:instrumentId"/>
                              </ns4:instrumentId>
                              <ns4:numberShares>
                                 <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:numberShares"/>
                              </ns4:numberShares>
                              <ns4:exchangeCode>
                                 <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[5]/inp1:Value"/>
                              </ns4:exchangeCode>
                              <ns4:currency>
                                 <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:currency"/>
                              </ns4:currency>
                              <ns4:paymentAmount>
                                 <ns4:paymentType>
                                    <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[6]/inp1:Value"/>
                                 </ns4:paymentType>
                                 <ns4:paymentAmount>
                                    <ns4:currency>
                                       <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:paymentAmount/ns1:currency"/>
                                    </ns4:currency>
                                    <ns4:amount>
                                       <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:paymentAmount/ns1:amount"/>
                                    </ns4:amount>
                                 </ns4:paymentAmount>
                                 <ns4:adjustedPaymentDate>
                                    <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:adjustedPaymentDate"/>
                                 </ns4:adjustedPaymentDate>
                              </ns4:paymentAmount>
                           </ns4:equity>
                        </ns4:product>
                        <ns4:extensions>
                           <xsl:for-each select="ns1:trade/ns1:extensions/ns1:extension">
                              <ns4:extension>
                                 <ns4:name>
                                    <xsl:value-of select="ns1:name"/>
                                 </ns4:name>
                                 <ns4:value>
                                    <xsl:value-of select="ns1:value"/>
                                 </ns4:value>
                              </ns4:extension>
                           </xsl:for-each>
                           <xsl:for-each select="ns1:trade/ns1:extensions">
                              <ns4:extension>
                                 <ns4:name>
                                    <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[7]/inp1:Value"/>
                                 </ns4:name>
                                 <ns4:value>
                                    <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[8]/inp1:Value"/>
                                 </ns4:value>
                              </ns4:extension>
                           </xsl:for-each>
                        </ns4:extensions>
                     </ns4:trade>
                  </ns4:deal>
               </xsl:for-each>
            </ns4:content>
         </ns4:body>
      </ns4:kpeiInbound>
   </xsl:template>
</xsl:stylesheet>
