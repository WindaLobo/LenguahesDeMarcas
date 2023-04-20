<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
  <html>
<body>
 <h1>Ejercicios 1</h1>
 <h3>Mis libros</h3>
 <xsl:for-each select="//libro">
 <p>
<b>Titulo:</b> <xsl:value-of select ="titulo"></xsl:value-of><br></br>
 <b>Autor:</b> <xsl:value-of select ="autor"></xsl:value-of>
  </p>
      </xsl:for-each>
      
    <h1>Ejercicios 2</h1>
 <h3>Mis libros</h3>
  <p>El numero de libros es de : <b></b> <xsl:value-of select ="count(//libro)" />
  </p>
  
      <h1>Ejercicios 3</h1>
 <h3>Mis libros:</h3>
   <xsl:for-each select="//libro">
   <xsl:sort select="titulo"/>
  <p>
   <xsl:value-of select ="titulo"/> </p>
   </xsl:for-each>
   
    <h1>Ejercicios extra</h1>
 <h3>Mis libros:</h3>
   <xsl:for-each select="//libro[precio]">
   <xsl:sort select="precio" data-type="number"/>
  <p>
   <xsl:value-of select ="titulo"/> </p><p>El precio es : <xsl:value-of select ="precio"/> </p><br></br>
   </xsl:for-each>
   

    <h1>Ejercicios 6</h1>
 <h3>Mis libros:</h3>
  <select>
 <xsl:for-each select="//libro">
<option> <xsl:value-of select ="titulo"/> </option>  <option> <xsl:value-of select ="precio"/> </option>  
  </xsl:for-each>
  </select>
 </body>  
  </html>
 
    </xsl:template>
</xsl:stylesheet>
