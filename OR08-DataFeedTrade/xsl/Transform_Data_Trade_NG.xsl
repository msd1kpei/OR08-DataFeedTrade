<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:tns="http://www.kpei.co.id/writeFileDataTrade" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl nxsd xsd tns bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <tns:DataTrade>
         <xsl:if test="xp20:compare(/tns:DataTrade/tns:trade/tns:BrokerCode,&quot;NG&quot;) = 0">
            <xsl:for-each select="/tns:DataTrade/tns:trade">
               <tns:trade>
                  <tns:TradeNumber>
                     <xsl:value-of select="tns:TradeNumber"/>
                  </tns:TradeNumber>
                  <tns:SellerBuyer>
                     <xsl:value-of select="tns:SellerBuyer"/>
                  </tns:SellerBuyer>
                  <tns:TradeDate>
                     <xsl:value-of select="tns:TradeDate"/>
                  </tns:TradeDate>
                  <tns:SessionTrade>
                     <xsl:value-of select="tns:SessionTrade"/>
                  </tns:SessionTrade>
                  <tns:BoardCode>
                     <xsl:value-of select="tns:BoardCode"/>
                  </tns:BoardCode>
                  <tns:SellerBroker>
                     <xsl:value-of select="tns:SellerBroker"/>
                  </tns:SellerBroker>
                  <tns:SellerClient>
                     <xsl:value-of select="tns:SellerClient"/>
                  </tns:SellerClient>
                  <tns:SellerType>
                     <xsl:value-of select="tns:SellerType"/>
                  </tns:SellerType>
                  <tns:BrokerCode>
                     <xsl:value-of select="tns:BrokerCode"/>
                  </tns:BrokerCode>
                  <tns:BrokerClient>
                     <xsl:value-of select="tns:BrokerClient"/>
                  </tns:BrokerClient>
                  <tns:BrokerType>
                     <xsl:value-of select="tns:BrokerType"/>
                  </tns:BrokerType>
                  <tns:StockCode>
                     <xsl:value-of select="tns:StockCode"/>
                  </tns:StockCode>
                  <tns:Volume>
                     <xsl:value-of select="tns:Volume"/>
                  </tns:Volume>
                  <tns:Price>
                     <xsl:value-of select="tns:Price"/>
                  </tns:Price>
               </tns:trade>
            </xsl:for-each>
         </xsl:if>
      </tns:DataTrade>
   </xsl:template>
</xsl:stylesheet>
