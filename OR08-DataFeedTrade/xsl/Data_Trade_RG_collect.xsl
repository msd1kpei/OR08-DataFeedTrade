<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.kpei.co.id/DataTradeRequest" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd ns0 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns0:DataTrade>
         <ns0:header>
            <xsl:if test="/ns0:DataTrade/ns0:header/@id">
               <xsl:attribute name="id">
                  <xsl:value-of select="/ns0:DataTrade/ns0:header/@id"/>
               </xsl:attribute>
            </xsl:if>
            <ns0:asAt>
               <xsl:value-of select="/ns0:DataTrade/ns0:header/ns0:asAt"/>
            </ns0:asAt>
            <ns0:source>
               <xsl:value-of select="/ns0:DataTrade/ns0:header/ns0:source"/>
            </ns0:source>
         </ns0:header>
         <ns0:isDummy>
            <xsl:value-of select="/ns0:DataTrade/ns0:isDummy"/>
         </ns0:isDummy>
         <ns0:session>
            <xsl:value-of select="/ns0:DataTrade/ns0:session"/>
         </ns0:session>
         <ns0:body>
            <xsl:for-each select="/ns0:DataTrade/ns0:body/ns0:trade">
               <xsl:if test="oraext:compare-ignore-case(oraext:right-trim(oraext:left-trim(ns0:boardCode)),&quot;RG&quot;) = 0">
                  <ns0:trade>
                     <ns0:tradeNumber>
                        <xsl:value-of select="ns0:tradeNumber"/>
                     </ns0:tradeNumber>
                     <ns0:sellerBuyer>
                        <ns0:sellerBroker>
                           <xsl:value-of select="ns0:sellerBuyer/ns0:sellerBroker"/>
                        </ns0:sellerBroker>
                        <ns0:stockCode>
                           <xsl:value-of select="ns0:sellerBuyer/ns0:stockCode"/>
                        </ns0:stockCode>
                        <ns0:boardCode>
                           <xsl:value-of select="ns0:sellerBuyer/ns0:boardCode"/>
                        </ns0:boardCode>
                        <ns0:tradeNumber>
                           <xsl:value-of select="ns0:sellerBuyer/ns0:tradeNumber"/>
                        </ns0:tradeNumber>
                        <ns0:tradeDate>
                           <xsl:value-of select="ns0:sellerBuyer/ns0:tradeDate"/>
                        </ns0:tradeDate>
                        <ns0:buyerBroker>
                           <xsl:value-of select="ns0:sellerBuyer/ns0:buyerBroker"/>
                        </ns0:buyerBroker>
                     </ns0:sellerBuyer>
                     <ns0:tradeDate>
                        <xsl:value-of select="ns0:tradeDate"/>
                     </ns0:tradeDate>
                     <ns0:sessionTrade>
                        <xsl:value-of select="ns0:sessionTrade"/>
                     </ns0:sessionTrade>
                     <ns0:boardCode>
                        <xsl:value-of select="ns0:boardCode"/>
                     </ns0:boardCode>
                     <ns0:sellerBroker>
                        <xsl:value-of select="ns0:sellerBroker"/>
                     </ns0:sellerBroker>
                     <ns0:sellerClient>
                        <xsl:value-of select="ns0:sellerClient"/>
                     </ns0:sellerClient>
                     <ns0:sellerType>
                        <xsl:value-of select="ns0:sellerType"/>
                     </ns0:sellerType>
                     <ns0:brokerCode>
                        <xsl:value-of select="ns0:brokerCode"/>
                     </ns0:brokerCode>
                     <ns0:brokerClient>
                        <xsl:value-of select="ns0:brokerClient"/>
                     </ns0:brokerClient>
                     <ns0:brokerType>
                        <xsl:value-of select="ns0:brokerType"/>
                     </ns0:brokerType>
                     <ns0:stockCode>
                        <xsl:value-of select="ns0:stockCode"/>
                     </ns0:stockCode>
                     <ns0:volume>
                        <xsl:value-of select="ns0:volume"/>
                     </ns0:volume>
                     <ns0:price>
                        <xsl:value-of select="ns0:price"/>
                     </ns0:price>
                  </ns0:trade>
               </xsl:if>
            </xsl:for-each>
         </ns0:body>
         <ns0:ext>
            <xsl:if test="/ns0:DataTrade/ns0:ext/ns0:value">
               <xsl:for-each select="/ns0:DataTrade/ns0:ext/ns0:value">
                  <ns0:value>
                     <xsl:if test="@id">
                        <xsl:attribute name="id">
                           <xsl:value-of select="@id"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </ns0:value>
               </xsl:for-each>
            </xsl:if>
         </ns0:ext>
      </ns0:DataTrade>
   </xsl:template>
</xsl:stylesheet>
