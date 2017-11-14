<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/top/REF_CA_insert" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:bpel2="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/REF_CA_Select" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl ns0 xsd ns1 bpws xp20 mhdr bpel2 oraext dvm hwf med ids bpm xdk xref ora socket ldap">
   <xsl:template match="/">
      <ns1:CorporateActionsHisCollection>
         <xsl:for-each select="/ns0:CorporateActionsCollection/ns0:CorporateActions">
            <ns1:CorporateActionsHis>
               <ns1:effDate>
                  <xsl:if test="ns0:effDate/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:effDate/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:effDate"/>
               </ns1:effDate>
               <ns1:recDate>
                  <xsl:if test="ns0:recDate/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:recDate/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:recDate"/>
               </ns1:recDate>
               <ns1:instrumentCode>
                  <xsl:value-of select="ns0:instrumentCode"/>
               </ns1:instrumentCode>
               <ns1:splitRatio>
                  <xsl:if test="ns0:splitRatio/@xsi:nil">
                     <xsl:attribute name="xsi:nil">
                        <xsl:value-of select="ns0:splitRatio/@xsi:nil"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="ns0:splitRatio"/>
               </ns1:splitRatio>
            </ns1:CorporateActionsHis>
         </xsl:for-each>
      </ns1:CorporateActionsHisCollection>
   </xsl:template>
</xsl:stylesheet>