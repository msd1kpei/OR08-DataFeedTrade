<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://www.kpei.co.id/razor/Equity" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd ns0 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:kpeiInbound>
         <ns0:header>
            <xsl:attribute name="id">
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/@id"/>
            </xsl:attribute>
            <ns0:asAt>
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:asAt"/>
            </ns0:asAt>
            <ns0:sourceSystem>
               <xsl:value-of select="/ns0:kpeiInbound/ns0:header/ns0:sourceSystem"/>
            </ns0:sourceSystem>
         </ns0:header>
         <ns0:body>
            <ns0:content>
               <xsl:for-each select="/ns0:kpeiInbound/ns0:body/ns0:content/ns0:deal">
                  <ns0:deal>
                     <ns0:dealHeader>
                        <ns0:dealId>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealId"/>
                        </ns0:dealId>
                        <ns0:dealType>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealType"/>
                        </ns0:dealType>
                        <ns0:dealDate>
                           <xsl:value-of select="ns0:dealHeader/ns0:dealDate"/>
                        </ns0:dealDate>
                        <ns0:status>
                           <xsl:value-of select="ns0:dealHeader/ns0:status"/>
                        </ns0:status>
                     </ns0:dealHeader>
                     <ns0:trade>
                        <ns0:tradeHeader>
                           <ns0:tradeId>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeId"/>
                           </ns0:tradeId>
                           <ns0:tradeDate>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeDate"/>
                           </ns0:tradeDate>
                           <ns0:tradeType>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:tradeType"/>
                           </ns0:tradeType>
                           <ns0:counterparty>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:counterparty"/>
                           </ns0:counterparty>
                           <ns0:internalUnit>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:internalUnit"/>
                           </ns0:internalUnit>
                           <ns0:buySell>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:buySell"/>
                           </ns0:buySell>
                           <ns0:status>
                              <xsl:value-of select="ns0:trade/ns0:tradeHeader/ns0:status"/>
                           </ns0:status>
                        </ns0:tradeHeader>
                        <ns0:product>
                           <ns0:equity>
                              <ns0:instrumentId>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:instrumentId"/>
                              </ns0:instrumentId>
                              <ns0:numberShares>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:numberShares"/>
                              </ns0:numberShares>
                              <ns0:exchangeCode>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:exchangeCode"/>
                              </ns0:exchangeCode>
                              <ns0:currency>
                                 <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:currency"/>
                              </ns0:currency>
                              <ns0:paymentAmount>
                                 <ns0:paymentType>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentType"/>
                                 </ns0:paymentType>
                                 <ns0:paymentAmount>
                                    <ns0:currency>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentAmount/ns0:currency"/>
                                    </ns0:currency>
                                    <ns0:amount>
                                       <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:paymentAmount/ns0:amount"/>
                                    </ns0:amount>
                                 </ns0:paymentAmount>
                                 <ns0:adjustedPaymentDate>
                                    <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
                                 </ns0:adjustedPaymentDate>
                              </ns0:paymentAmount>
                           </ns0:equity>
                        </ns0:product>
                        <ns0:extensions>
                           <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                              <ns0:extension>
                                 <ns0:name>
                                    <xsl:value-of select="ns0:name"/>
                                 </ns0:name>
                                 <ns0:value>
                                    <xsl:value-of select="ns0:value"/>
                                 </ns0:value>
                              </ns0:extension>
                           </xsl:for-each>
                        </ns0:extensions>
                     </ns0:trade>
                  </ns0:deal>
               </xsl:for-each>
            </ns0:content>
         </ns0:body>
      </ns0:kpeiInbound>
   </xsl:template>
</xsl:stylesheet>
