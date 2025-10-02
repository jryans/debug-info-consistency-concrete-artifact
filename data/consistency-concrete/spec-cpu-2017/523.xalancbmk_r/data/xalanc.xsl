<xsl:stylesheet xmlns:spec="http://www.schemaTest.org/100mb" 
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                version="1.0">

<xsl:template match="/">
   <html>
      <body>
         <xsl:apply-templates select="spec:site/spec:regions"/>
      </body>
   </html>   
</xsl:template>

<xsl:template match="spec:site/spec:regions">
      <xsl:for-each select="child::*">
         <h3>
            <xsl:text>Country: </xsl:text>
            <xsl:value-of select="name()"/>
         </h3>
         <table border="1">
            <tr>
               <th>Item</th>
               <th>Name</th>
               <th>Location</th>
               <th>Quantity</th>
               <th>Payment</th>
               <th>Description</th>
               <th>Shipping</th>
               <th>Mailing</th>
            </tr>
            <xsl:for-each select="spec:item">
            <xsl:sort order="ascending" select="spec:location"/>
            <tr valign="top">
               <td><xsl:value-of select="./@id"/></td>
               <td><xsl:value-of select="spec:name"/></td>
               <td><xsl:value-of select="spec:location"/></td>
               <td><xsl:apply-templates select="spec:quantity"/></td>
               <td><xsl:value-of select="spec:payment"/></td>
               <td><xsl:value-of select="spec:shipping"/></td>
               <td><xsl:apply-templates select="spec:mailbox"/></td>
            </tr>
            </xsl:for-each>
         </table>
      </xsl:for-each>
</xsl:template>

<xsl:template match="spec:quantity">
   <xsl:value-of select="number()"/>
</xsl:template>

<xsl:template match="spec:mailbox">
   <xsl:for-each select="spec:mail">
   <p><b><xsl:text>Date: </xsl:text></b>
      <xsl:value-of select="spec:date"/><br/>

      <b><xsl:text>Note: </xsl:text></b><br/>
      <xsl:apply-templates select="spec:text"/>
   </p>
   </xsl:for-each>
</xsl:template>      

</xsl:stylesheet>
