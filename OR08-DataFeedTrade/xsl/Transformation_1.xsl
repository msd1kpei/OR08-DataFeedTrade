<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://TargetNamespace.com/writeFileDataTrade" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.kpei.co.id/DataTradeRequest" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd ns0 tns nxsd xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <tns:DataTrade>
         <xsl:for-each select="/ns0:DataTrade/ns0:body/ns0:trade">
            <tns:trade>
               <tns:TradeNumber>
                  <xsl:value-of select="ns0:tradeNumber"/>
               </tns:TradeNumber>
               <tns:SellerBuyer>
                  <xsl:value-of select="concat(ns0:sellerBuyer/ns0:sellerBroker,'/',ns0:sellerBuyer/ns0:stockCode,'/',ns0:sellerBuyer/ns0:boardCode,'/',ns0:sellerBuyer/ns0:tradeNumber,'/',ns0:sellerBuyer/ns0:tradeDate,'/',ns0:sellerBuyer/ns0:buyerBroker)"/>
               </tns:SellerBuyer>
               <tns:TradeDate>
                  <xsl:value-of select="ns0:tradeDate"/>
               </tns:TradeDate>
               <tns:SessionTrade>
                  <xsl:value-of select="ns0:sessionTrade"/>
               </tns:SessionTrade>
               <tns:BoardCode>
                  <xsl:value-of select="ns0:boardCode"/>
               </tns:BoardCode>
               <tns:SellerBroker>
                  <xsl:value-of select="ns0:sellerBroker"/>
               </tns:SellerBroker>
               <tns:SellerClient>
                  <xsl:value-of select="ns0:sellerClient"/>
               </tns:SellerClient>
               <tns:SellerType>
                  <xsl:value-of select="ns0:sellerType"/>
               </tns:SellerType>
               <tns:BrokerCode>
                  <xsl:value-of select="ns0:brokerCode"/>
               </tns:BrokerCode>
               <tns:BrokerClient>
                  <xsl:value-of select="ns0:brokerClient"/>
               </tns:BrokerClient>
               <tns:BrokerType>
                  <xsl:value-of select="ns0:brokerType"/>
               </tns:BrokerType>
               <tns:StockCode>
                  <xsl:value-of select="ns0:stockCode"/>
               </tns:StockCode>
               <tns:Volume>
                  <xsl:value-of select="ns0:volume"/>
               </tns:Volume>
               <tns:Price>
                  <xsl:value-of select="ns0:price"/>
               </tns:Price>
            </tns:trade>
         </xsl:for-each>
      </tns:DataTrade>
   </xsl:template>
</xsl:stylesheet>
