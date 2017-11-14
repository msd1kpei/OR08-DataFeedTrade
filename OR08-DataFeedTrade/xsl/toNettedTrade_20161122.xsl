<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:inp1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://www.kpei.co.id/razor/Equity" xmlns:tns="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ns0="http://oracle.com/sca/soapservice/KPEIMID/OR08-DataFeedTrade/OR08_DataFeedTrade" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns1="http://www.kpei.co.id/DataFeedTradeRequest" exclude-result-prefixes="xsi xsl inp1 wsdl out1 xsd tns ns0 ns1 bpws xpath20 ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="inputVariable.request"/>
   <xsl:template match="/">
      <kpeiInbound>
         <header>
            <xsl:attribute name="id">
               <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/@id"/>
            </xsl:attribute>
            <asAt>
               <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/ns1:asAt"/>
            </asAt>
            <sourceSystem>
               <xsl:value-of select="$inputVariable.request/ns1:NettedTrade/ns1:header/ns1:source"/>
            </sourceSystem>
         </header>
         <body>
            <content>
               <xsl:for-each select="$inputVariable.request/ns1:NettedTrade/ns1:body/ns1:content/ns1:deal">
                  <deal>
                     <dealHeader>
                        <dealId>
                           <xsl:value-of select="ns1:dealHeader/ns1:dealId"/>
                        </dealId>
                        <dealType>
                           <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[1]/inp1:Value"/>
                        </dealType>
                        <dealDate>
                           <xsl:value-of select="ns1:dealHeader/ns1:dealDate"/>
                        </dealDate>
                        <status>
                           <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[2]/inp1:Value"/>
                        </status>
                     </dealHeader>
                     <trade>
                        <tradeHeader>
                           <tradeId>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeId"/>
                           </tradeId>
                           <tradeDate>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeDate"/>
                           </tradeDate>
                           <tradeType>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:tradeType"/>
                           </tradeType>
                           <counterparty>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:counterparty"/>
                           </counterparty>
                           <internalUnit>
                              <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[3]/inp1:Value"/>
                           </internalUnit>
                           <buySell>
                              <xsl:value-of select="ns1:trade/ns1:tradeHeader/ns1:buySell"/>
                           </buySell>
                           <status>
                              <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[4]/inp1:Value"/>
                           </status>
                        </tradeHeader>
                        <product>
                           <equity>
                              <instrumentId>
                                 <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:instrumentId"/>
                              </instrumentId>
                              <numberShares>
                                 <xsl:value-of select="oraext:query-database(concat(concat(&quot;SELECT split_ratio FROM corporate_actions WHERE instrument_code = '&quot;,ns1:trade/ns1:product/ns1:equity/ns1:instrumentId,&quot;' AND (ex_date &lt;= TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') AND TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') &lt; eff_date)&quot;),&quot;UNION ALL SELECT 1 AS split_ratio FROM DUAL WHERE NOT EXISTS (&quot;,concat(&quot;SELECT split_ratio FROM corporate_actions WHERE instrument_code = '&quot;,ns1:trade/ns1:product/ns1:equity/ns1:instrumentId,&quot;' AND (ex_date &lt;= TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') AND TO_DATE ('&quot;,ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') &lt; eff_date)&quot;),&quot;)&quot;),false(),false(),&quot;jdbc/ds_kpeimid&quot;) * ns1:trade/ns1:product/ns1:equity/ns1:numberShares"/>
                              </numberShares>
                              <exchangeCode>
                                 <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[5]/inp1:Value"/>
                              </exchangeCode>
                              <currency>
                                 <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:currency"/>
                              </currency>
                              <paymentAmount>
                                 <paymentType>
                                    <xsl:value-of select="/inp1:getXMLDataReply/inp1:xmlData[6]/inp1:Value"/>
                                 </paymentType>
                                 <paymentAmount>
                                    <currency>
                                       <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:paymentAmount/ns1:currency"/>
                                    </currency>
                                    <amount>
                                       <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:paymentAmount/ns1:amount"/>
                                    </amount>
                                 </paymentAmount>
                                 <adjustedPaymentDate>
                                    <xsl:value-of select="ns1:trade/ns1:product/ns1:equity/ns1:paymentAmount/ns1:adjustedPaymentDate"/>
                                 </adjustedPaymentDate>
                              </paymentAmount>
                           </equity>
                        </product>
                        <extensions>
                           <xsl:for-each select="ns1:trade/ns1:extensions/ns1:extension">
                              <xsl:if test="contains(ns1:name,&quot;InvestorID&quot;) = false()">
                                 <extension>
                                    <name>
                                       <xsl:value-of select="ns1:name"/>
                                    </name>
                                    <value>
                                       <xsl:value-of select="ns1:value"/>
                                    </value>
                                 </extension>
                              </xsl:if>
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