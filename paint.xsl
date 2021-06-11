<?xml version="1.0" encoding="UTF-8" ?>
<!--
   XML final project Portfolio(painting page)
   Author: Sararat Burke
   Date:  11/12/2020 

   Filename:  paint.xsl
   Supporting Files: paint.xml, paint.css
   
-->



<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />


<xsl:template match="/">
<html>
  <head>
    <link href="stylesheet/paint.css" rel="stylesheet" type="text/css" />

  </head>
<body>

  <header>
      <h2 id="logo">Portfolio</h2>
      <nav>
        <a class="headLink" href="index.html">Home</a>
        <a class="headLink" href="about.html">About</a>
        <a class="headLink" href="graphic.html">Graphic</a>
        <a class="headLink" href="photograph.html">Photography</a>
        <a class="headLink" id="visited" href="#">Painting</a>
        
      </nav>
  </header>

  <article>
      <h2 id="title">Painting</h2>
      <p>Painting is a good hobby that could keep you calm, and help you being patient. This painting page consist of acrylic painting, digital painting, and model painting.</p>

  </article>


<!-- XML file template here -->

  <table> 
      <xsl:for-each select="pics/pic">
        <xsl:for-each select="td">
           <tr>
                  <td>
                    <div class="frame">
                        <img class="pic" src="images/painting/{image}" alt="">
                              <xsl:attribute name="width">
                                    <xsl:value-of select="image//@width"/>
                              </xsl:attribute>

                              <xsl:attribute name="height">
                                    <xsl:value-of select="image//@height"/>
                              </xsl:attribute>

                        </img>
                        <p class="pic_content"><xsl:value-of select="type"/>: <xsl:value-of select="content"/></p>
                        
                    </div>
                  </td>
                
           </tr>
        </xsl:for-each>
      </xsl:for-each>
  </table>

<footer>Fall2020 By Sararat Burke</footer>



</body>
</html>
</xsl:template>

</xsl:stylesheet>