<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns0="http://www.kpei.co.id/razor/Equity" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns1="http://www.kpei.co.id/STPNettingBalances" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd ns0 ns1 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns1:NettingBalances>
         <xsl:for-each select="/ns0:kpeiInbound/ns0:body/ns0:content/ns0:deal">
            <ns1:trade>
               <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                  <xsl:if test="oraext:compare-ignore-case(ns0:name,&quot;INVESTORID&quot;) = 0.0">
                     <ns1:investorID>
                        <xsl:value-of select="ns0:value"/>
                     </ns1:investorID>
                  </xsl:if>
               </xsl:for-each>
               <xsl:for-each select="ns0:trade/ns0:extensions/ns0:extension">
                  <xsl:if test="oraext:compare-ignore-case(ns0:name,&quot;ACCOUNT&quot;) = 0.0">
                     <ns1:CMCode>
                        <xsl:value-of select="substring(ns0:value,1.0,2.0)"/>
                     </ns1:CMCode>
                     <ns1:investorID/>
                  </xsl:if>
               </xsl:for-each>
               <ns1:instrumentCode>
                  <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:instrumentId"/>
               </ns1:instrumentCode>
               <xsl:choose>
                  <xsl:when test="oraext:compare-ignore-case(ns0:trade/ns0:tradeHeader/ns0:buySell,&quot;SELL&quot;) = 0.0">
                     <ns1:amount>
                        <xsl:value-of select="concat(&quot;-&quot;,ns0:trade/ns0:product/ns0:equity/ns0:numberShares)"/>
                     </ns1:amount>
                  </xsl:when>
                  <xsl:otherwise>
                     <ns1:amount>
                        <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:numberShares"/>
                     </ns1:amount>
                  </xsl:otherwise>
               </xsl:choose>
               <ns1:settlementDate>
                  <xsl:value-of select="ns0:trade/ns0:product/ns0:equity/ns0:paymentAmount/ns0:adjustedPaymentDate"/>
               </ns1:settlementDate>
            </ns1:trade>
         </xsl:for-each>
      </ns1:NettingBalances>
   </xsl:template>
</xsl:stylesheet>