<?xml version = '1.0' encoding = 'UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xpath20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:inp1="http://www.kpei.co.id/kpei/messageMonitor" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:tns="http://oracle.com/sca/soapservice/KPEI-MIDDLEWARE/Ge01-messageMonitor/messageMonitorService" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl inp1 tns xsd wsdl xpath20 bpws mhdr oraext dvm hwf med ids xdk xref ora socket ldap">
   <xsl:param name="outboundLogReply.reply"/>
   <xsl:template match="/">
      <inp1:relationMonitorRequest>
         <inp1:relationMonitor>
            <inp1:outboundID>
               <xsl:value-of select="$outboundLogReply.reply/inp1:replyWS/inp1:lastId"/>
            </inp1:outboundID>
            <inp1:inbounds>
               <xsl:for-each select="/inp1:replyWS/inp1:rows/inp1:value">
                  <inp1:inboundID>
                     <xsl:value-of select="@id"/>
                  </inp1:inboundID>
               </xsl:for-each>
            </inp1:inbounds>
         </inp1:relationMonitor>
      </inp1:relationMonitorRequest>
   </xsl:template>
</xsl:stylesheet>