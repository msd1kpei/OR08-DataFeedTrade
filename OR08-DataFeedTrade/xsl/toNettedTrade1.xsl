<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:inp1="http://www.kpei.co.id/GE03-XMLUtility/types" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:out1="http://kpei.co.id/MDwsReply.xsd" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns2="http://www.kpei.co.id/razor/Equity" xmlns:tns="http://oracle.com/sca/soapservice/kpei/GE03-XMLUtility/GE03_XMLUtility" xmlns:ns0="http://oracle.com/sca/soapservice/KPEIMID/OR08-DataFeedTrade/OR08_DataFeedTrade" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" xmlns:ns1="http://www.kpei.co.id/DataFeedTradeRequest" exclude-result-prefixes="xsi xsl inp1 wsdl out1 xsd tns ns0 ns1 ns2 xp20 bpws bpel2 bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:param name="inputVariable.request"/>
   <xsl:template match="/">
      <ns2:kpeiInbound>
         <ns2:body>
            <ns2:content>
               <ns2:deal>
                  <ns2:trade>
                     <ns2:product>
                        <ns2:equity>
                           <ns2:numberShares>
                              <xsl:value-of select="oraext:query-database(concat(concat(&quot;SELECT split_ratio FROM corporate_actions WHERE instrument_code = '&quot;,/ns1:trade/ns1:product/ns1:equity/ns1:instrumentId,&quot;' AND (ex_date &lt;= TO_DATE ('&quot;,/ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') AND TO_DATE ('&quot;,/ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') &lt; eff_date)&quot;),&quot;UNION ALL SELECT 1 AS split_ratio FROM DUAL WHERE NOT EXISTS (&quot;,concat(&quot;SELECT split_ratio FROM corporate_actions WHERE instrument_code = '&quot;,/ns1:trade/ns1:product/ns1:equity/ns1:instrumentId,&quot;' AND (ex_date &lt;= TO_DATE ('&quot;,/ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') AND TO_DATE ('&quot;,/ns1:dealHeader/ns1:dealDate,&quot;', 'yyyy-mm-dd') &lt; eff_date)&quot;),&quot;)&quot;),false(),false(),&quot;jdbc/ds_kpeimid&quot;) * /ns1:trade/ns1:product/ns1:equity/ns1:numberShares"/>
                           </ns2:numberShares>
                        </ns2:equity>
                     </ns2:product>
                     <ns2:extensions>
                        <xsl:for-each select="$inputVariable.request/ns1:NettedTrade/ns1:body/ns1:content/ns1:deal/ns1:trade/ns1:extensions/ns1:extension">
                           <xsl:if test="contains(ns1:name,&quot;InvestorID&quot;) = false()">
                              <ns2:extension>
                                 <ns2:name>
                                    <xsl:value-of select="ns1:name"/>
                                 </ns2:name>
                                 <ns2:value>
                                    <xsl:value-of select="ns1:value"/>
                                 </ns2:value>
                              </ns2:extension>
                           </xsl:if>
                        </xsl:for-each>
                     </ns2:extensions>
                  </ns2:trade>
               </ns2:deal>
            </ns2:content>
         </ns2:body>
      </ns2:kpeiInbound>
   </xsl:template>
</xsl:stylesheet>