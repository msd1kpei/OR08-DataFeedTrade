<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:nxsd="http://xmlns.oracle.com/pcbpel/nxsd" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:tns="http://TargetNamespace.com/writeFileDataPrice" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:ns0="http://www.kpei.co.id/DataTradeRequest" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl xsd ns0 nxsd tns xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:template match="/">
      <tns:DataPrice>
         <xsl:for-each select="/ns0:DataPrice/ns0:body/ns0:price">
            <tns:price>
               <tns:StockCode>
                  <xsl:value-of select="ns0:stockCode"/>
               </tns:StockCode>
               <tns:BoardCode>
                  <xsl:value-of select="ns0:boardCode"/>
               </tns:BoardCode>
               <tns:DataDate>
                  <xsl:value-of select="ns0:dataDate"/>
               </tns:DataDate>
               <tns:SessionTrade>
                  <xsl:value-of select="ns0:sessionTrade"/>
               </tns:SessionTrade>
               <tns:Low>
                  <xsl:value-of select="ns0:low"/>
               </tns:Low>
               <tns:High>
                  <xsl:value-of select="ns0:high"/>
               </tns:High>
               <tns:Last>
                  <xsl:value-of select="ns0:last"/>
               </tns:Last>
            </tns:price>
         </xsl:for-each>
      </tns:DataPrice>
   </xsl:template>
</xsl:stylesheet>