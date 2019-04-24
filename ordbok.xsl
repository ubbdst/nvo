<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE xsl:stylesheet [
<!ENTITY aelig "&#230;">
<!ENTITY oslash "&#248;">
<!ENTITY aring "&#229;">
<!ENTITY AElig "&#198;">
<!ENTITY Oslash "&#216;">
<!ENTITY Aring "&#197;">
<!ENTITY dash "&#45;">
<!ENTITY lquo "&#171;">
<!ENTITY rquo "&#187;">
<!ENTITY nbsp "&#x0020;">
<!ENTITY carr "&#x0D;">
<!ENTITY lsquo  "&#x2018;">
<!ENTITY ldquo  "&#x201C;">
<!ENTITY rsquo  "&#x2019;">
<!ENTITY rdquo  "&#x201D;">
<!ENTITY aksis_sti "http://www.aksis.uib.no" >
<!ENTITY nbsp " " >
<!ENTITY gandalf_sti "https://ubbdst.github.io" >
]>
<!-- 2015-05-07, -08
changed from gandalf.uib.no. didn't help the ÆØÅ problem.
perhaps .htaccess helped for the chapter links.
###conclusion: the document() function can't access the tegntabell.xml file, which is needed to convert uri-encoded characters in the search string.
###found a way to include the character table in this stylesheet. look for namespace 'my'
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:tei="http://www.tei-c.org/ns/1.0"
xmlns:my="my:my">
    
    
<xsl:output method="html" doctype-public="-//W3C/DTD XHTML 1.0 STRICT//EN" doctype-system="http:://www.w3.org/TR/xhtml1-strict.dtd" encoding="UTF-8"></xsl:output>

<!-- The xsl:strip-space element is used to prevent superflous spaces in the xml encoding from being displayed in the output HTML file -->    
<!-- Since necessary spaces are stripped from the file, some of the templates below contain functions that add spaces in relevant places (see templates for w, punct, unclear and supplied) -->    
<!--<xsl:strip-space elements="*"/>-->


<!-- This global parameter below is used to decide which of the three text-levels is displayed, i.e the facsimile level, the diplomatic level or the normalised level. See the Menota handbook v. 1.1, ch. 3 for further details on these levels.The parameter has three values: 'facs', 'dipl' and 'norm'. -->
    <xsl:param name="QPI"/>
    <xsl:param name="CONTENT_TYPE"/>
    <xsl:param name="DOCUMENT_FILENAME"/>
    <xsl:param name="DOCUMENT_NAME"/>
    <xsl:param name="DOCUMENT_PATH"/>
    <xsl:param name="DOCUMENT_ROOT"/>
    <xsl:param name="DOCUMENT_URL"/>
    <xsl:param name="HOME_PATH"/>
    <xsl:param name="HTTP_ACCEPT_CHARSET"/>
    <xsl:param name="HTTP_ACCEPT_ENCODING"/>
    <xsl:param name="HTTP_ACCEPT_LANGUAGE"/>
    <xsl:param name="HTTP_COOKIE"/>
    <xsl:param name="HTTP_REFERER"/>
    <xsl:param name="HTTP_USER_AGENT"/>
    <xsl:param name="LANG"/>
    <xsl:param name="NOW"/>
    <xsl:param name="NOW_UTC"/>
    <xsl:param name="PAGEMENU_URL"/>
    <xsl:param name="PATH_INFO"/>
    <xsl:param name="PROJECT_DOCUMENT_NAME"/>
    <xsl:param name="REMOTE_ADDR"/>
    <xsl:param name="REMOTE_USER"/>
    <xsl:param name="REQUEST_METHOD"/>
    <xsl:param name="REQUEST_URI"/>
    <xsl:param name="SERVER_NAME"/>
    <xsl:param name="SERVER_PORT"/>
    <xsl:param name="SERVER_SOFTWARE"/>
    <xsl:param name="STYLESHEET_FILENAME"/>
    <xsl:param name="STYLESHEET_NAME"/>
    <xsl:param name="TODAY"/>
    <xsl:param name="TODAY_UTC"/>
    <xsl:param name="param.id"/>
    <xsl:param name="param.name"/>
    <xsl:param name="mode" select="substring-after($QPI, 'mode=')"/>
    
<!-- include the tegntabell here -->
<my:chartable>
<chartable>
	<item><URLtegn>%20</URLtegn><UTF8> </UTF8></item>
	
	<item><URLtegn>+</URLtegn><UTF8> </UTF8></item>
	<item><URLtegn>%C3%A6</URLtegn><UTF8>æ</UTF8></item>
	<item><URLtegn>%C3%B8</URLtegn><UTF8>ø</UTF8></item>
	<item><URLtegn>%C3%A5</URLtegn><UTF8>å</UTF8></item>
	<item><URLtegn>%C3%86</URLtegn><UTF8>Æ</UTF8></item>
	<item><URLtegn>%C3%98</URLtegn><UTF8>Ø</UTF8></item>
	<item><URLtegn>%C3%85</URLtegn><UTF8>Å</UTF8></item>
	
	<item><URLtegn>%C3%A1</URLtegn><UTF8>á</UTF8></item>
	<item><URLtegn>%C3%A0</URLtegn><UTF8>à</UTF8></item>
	<item><URLtegn>%E1%BA%A1</URLtegn><UTF8>ạ</UTF8></item>
	<item><URLtegn>%C4%83</URLtegn><UTF8>ă</UTF8></item>
	<item><URLtegn>%E1%BA%AB</URLtegn><UTF8>ẫ</UTF8></item>
	<item><URLtegn>%E1%BA%A7</URLtegn><UTF8>ầ</UTF8></item>
	<item><URLtegn>%E1%BA%A5</URLtegn><UTF8>ấ</UTF8></item>
	<item><URLtegn>%E1%BA%AB</URLtegn><UTF8>ậ</UTF8></item>
	<item><URLtegn>%E1%BA%A3</URLtegn><UTF8>ả</UTF8></item>
	
	<item><URLtegn>%C4%90</URLtegn><UTF8>Đ</UTF8></item>
	<item><URLtegn>%C4%91</URLtegn><UTF8>đ</UTF8></item>
	
	<item><URLtegn>%E1%BB%87</URLtegn><UTF8>ệ</UTF8></item>
	<item><URLtegn>%C3%AA</URLtegn><UTF8>ê</UTF8></item>
	<item><URLtegn>%C3%A8</URLtegn><UTF8>è</UTF8></item>
	<item><URLtegn>%E1%BA%BF</URLtegn><UTF8>ế</UTF8></item>
	<item><URLtegn>%E1%BB%81</URLtegn><UTF8>ề</UTF8></item>
	<item><URLtegn>%E1%BB%83</URLtegn><UTF8>ể</UTF8></item>
	<item><URLtegn>%E1%BA%BB</URLtegn><UTF8>ẻ</UTF8></item>
	
	
	<item><URLtegn>%C4%A9</URLtegn><UTF8>ĩ</UTF8></item>
	<item><URLtegn>%E1%BB%8B</URLtegn><UTF8>ị</UTF8></item>
	
	<item><URLtegn>%C3%AD</URLtegn><UTF8>í</UTF8></item>
	
	<item><URLtegn>%E1%BB%9B</URLtegn><UTF8>ớ</UTF8></item>
	<item><URLtegn>%E1%BB%9D</URLtegn><UTF8>ờ</UTF8></item>
	<item><URLtegn>%E1%BB%91</URLtegn><UTF8>ố</UTF8></item>
	<item><URLtegn>%E1%BB%A3</URLtegn><UTF8>ợ</UTF8></item>
	<item><URLtegn>%E1%BB%99</URLtegn><UTF8>ộ</UTF8></item>
	<item><URLtegn>%C6%A1</URLtegn><UTF8>ơ</UTF8></item>
	
	
	<item><URLtegn>%C6%B0</URLtegn><UTF8>ư</UTF8></item>
	<item><URLtegn>%E1%BB%AF</URLtegn><UTF8>ữ</UTF8></item>
	<item><URLtegn>%E1%BB%AB</URLtegn><UTF8>ừ</UTF8></item>
	<item><URLtegn>%E1%BB%B1</URLtegn><UTF8>ự</UTF8></item>
	<item><URLtegn>%E1%BB%A5</URLtegn><UTF8>ụ</UTF8></item>
	<item><URLtegn>%E1%BB%A9</URLtegn><UTF8>ứ</UTF8></item>
	<item><URLtegn>%C3%BA</URLtegn><UTF8>ú</UTF8></item>
	<item><URLtegn>%E1%BB%8F</URLtegn><UTF8>ỏ</UTF8></item>
	<item><URLtegn>%E1%BB%8D</URLtegn><UTF8>ọ</UTF8></item>
	<item><URLtegn>%E1%BB%93</URLtegn><UTF8>ồ</UTF8></item>
	<item><URLtegn>%E1%BB%89</URLtegn><UTF8>ỉ</UTF8></item>
	<item><URLtegn>%E1%BA%AF</URLtegn><UTF8>ắ</UTF8></item>
	<item><URLtegn>%E1%BB%AD</URLtegn><UTF8>ử</UTF8></item>
	<item><URLtegn>%C3%B4</URLtegn><UTF8>ô</UTF8></item>
	<item><URLtegn>%C3%81</URLtegn><UTF8>Á</UTF8></item>
	<item><URLtegn>%E1%BA%B7</URLtegn><UTF8>ặ</UTF8></item>
	<item><URLtegn>%C3%A3</URLtegn><UTF8>ã</UTF8></item>
	<item><URLtegn>%C3%B3</URLtegn><UTF8>ó</UTF8></item>
	<item><URLtegn>%C5%A9</URLtegn><UTF8>ũ</UTF8></item>
	<item><URLtegn>%C3%BD</URLtegn><UTF8>ý</UTF8></item>
	<item><URLtegn>%E1%BB%97</URLtegn><UTF8>ỗ</UTF8></item>
	<item><URLtegn>%E1%BB%9F</URLtegn><UTF8>ở</UTF8></item>
	<item><URLtegn>%C3%B2</URLtegn><UTF8>ò</UTF8></item>
	<item><URLtegn>%E1%BB%A1</URLtegn><UTF8>ỡ</UTF8></item>
	<item><URLtegn>%E1%BA%AD</URLtegn><UTF8>ậ</UTF8></item>
	<item><URLtegn>%C3%A2</URLtegn><UTF8>â</UTF8></item>
	<item><URLtegn>%E1%BA%B1</URLtegn><UTF8>ằ</UTF8></item>
	<item><URLtegn>%E1%BB%95</URLtegn><UTF8>ổ</UTF8></item>
	<item><URLtegn>%E1%BB%A7</URLtegn><UTF8>ủ</UTF8></item>
	<item><URLtegn>%C3%AC</URLtegn><UTF8>ì</UTF8></item>
	<item><URLtegn>%C3%A9</URLtegn><UTF8>é</UTF8></item>
	<item><URLtegn>%E1%BA%B3</URLtegn><UTF8>ẳ</UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
	<item><URLtegn></URLtegn><UTF8></UTF8></item>
</chartable>
</my:chartable>


<!-- This template writes the entire document into an HTML page -->

<xsl:template match="/">
    <xsl:element name="html">
        <xsl:element name="head">
            <xsl:element name="title">
                <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
            </xsl:element>
            <xsl:element name="meta">
            <xsl:attribute name="http-equiv">Expires</xsl:attribute>
            <xsl:attribute name="content">0</xsl:attribute>
            </xsl:element>
            
            <link rel="stylesheet" type="text/css" href="ordbok.css"/>
            
            <!-- Legger på noe meta-informasjon. -->
            <meta name="keywords" content="ordbok, norsk, vietnamesisk"/>
            <xsl:element name="meta">
                <xsl:attribute name="name">description</xsl:attribute>
            	<xsl:attribute name="content">Elektronisk utgave av <xsl:value-of select="//tei:msItem/tei:title[attribute::type='abbreviated']"/>. Original <xsl:value-of select="//tei:repository"/></xsl:attribute>
            </xsl:element>
            <meta name="Robots" content="index,follow"/>
        	  <xsl:element name="meta">
	        		<xsl:attribute name="name">Author</xsl:attribute>
	        		<xsl:attribute name="content"><xsl:value-of select="descendant::tei:author"/></xsl:attribute>
	        	</xsl:element>
            <meta name="Classification" content="Open"/>
                               
        </xsl:element>
        <xsl:element name="body">
            <xsl:attribute name="bgcolor">#FFFFFF</xsl:attribute>
            <xsl:attribute name="class">paragraph</xsl:attribute>
            <xsl:element name="table">
                <xsl:attribute name="width">900</xsl:attribute>
            	<xsl:attribute name="border">1</xsl:attribute>
            	<xsl:attribute name="valign">top</xsl:attribute>
                    <tr>
                    	<td bgcolor="#FFD700" valign="top" width="150">
                    		<img src="Boken.gif" border="20" width="140" align="center" valign="center" />
                            
                            
                            <div class="textgar">
                            
                                <xsl:element name="table">
                                <xsl:attribute name="width">175</xsl:attribute>
                                <xsl:attribute name="class">omTekst</xsl:attribute> 
                                	<!-- Bygg index over ordboken.-->
                                	
                                	<tr><td align="left"  width="20%">
                                		<xsl:element name="div"><xsl:attribute name="style">bold</xsl:attribute>Innhold:</xsl:element>
                                		<a href="./norsk_innledning.pdf">Grammatisk innledning</a>
                                		<br/><a href="./vietnamesisk_innledning.pdf">Dẫn nhập</a><br/>
                                		<xsl:call-template name="do_index"/>
                                	</td></tr>
                                	
                                	<tr><td align="left">
                                		<xsl:element name="form"> 
                                			<xsl:attribute name="action">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?ord=<xsl:value-of select="ord"/></xsl:attribute>
                                		<xsl:variable name="ord">
                                			<xsl:choose>
                                				<xsl:when test="contains($DOCUMENT_URL,'ord=')">
                                				<xsl:choose>
                                					<xsl:when test="contains($DOCUMENT_URL,'&amp;soktype=Fritekst')">
                                						<!--Må fjerne alle tulletegn -->
                                						<xsl:call-template name="NormaliserTegn">
                                							<xsl:with-param name="streng" select="substring-after(substring-before($DOCUMENT_URL,'&amp;soktype=Fritekst'),'ord=')"/>
                                						</xsl:call-template>
                                					</xsl:when>
                                					<xsl:otherwise>
                                						<xsl:call-template name="NormaliserTegn">
                                							<xsl:with-param name="streng" select="substring-after($QPI,'ord=')"/>
                                						</xsl:call-template>
                                					</xsl:otherwise>
                                				</xsl:choose>
                                				</xsl:when>
                                			</xsl:choose>
                                		</xsl:variable>
                                		
                                		
                                			Oppslagsord: 
                                			<xsl:element name="input">
                                				<xsl:attribute name="type">text</xsl:attribute>
                                				<xsl:attribute name="name">ord</xsl:attribute>
                                				<xsl:attribute name="maxlength">50</xsl:attribute>
                                				<xsl:attribute name="size">16</xsl:attribute>
                                				<xsl:attribute name="value"><xsl:value-of select="$ord"/></xsl:attribute>
                                			</xsl:element>
                                			<br/>
                                			<xsl:choose>
                                				<xsl:when test="contains($DOCUMENT_URL,'&amp;soktype=Fritekst')">
                                					<input type="checkbox" name="soktype" value="Fritekst" checked="true"/>Fritekstsøk
                                				</xsl:when>
                                				<xsl:otherwise>
                                					<input type="checkbox" name="soktype" value="Fritekst"/>Fritekstsøk
                                				</xsl:otherwise>
                                			</xsl:choose>
                                			
                                			
                                			<br/>
                                			
                                			<input type="submit" value="Søk"/>
                                			<!--<input type="submit" value="Fritekstsøk"/>-->
                                		</xsl:element>
                                	</td></tr>
                                	
                                	
                                	<tr><td align="left"  width="20%">
                                		<hr/>
                                <xsl:apply-templates select="//tei:teiHeader"/>  
                                	</td></tr>
                                 
                                	<tr><td align="left"  width="20%">
                                		<hr/>
                                		<xsl:call-template name="do_signatur2"/>
                                		<hr/>
                                		<!--<xsl:call-template name="parametre"/>-->
                                	</td></tr>
                                	
                                
                             </xsl:element>                  
                            	
                   </div>
                </td>
                <td valign="top" align="left" width="80%">
                	
                			
                			
                				<xsl:choose>
                					<xsl:when test="contains($QPI, 'vis=front')">
                						<xsl:apply-templates select="//tei:front"/>       
                					</xsl:when>
                					<xsl:when test="contains($QPI, 'vis=back')">
                						<xsl:apply-templates select="//tei:back"/>       
                					</xsl:when>
                					<xsl:otherwise>
                						<blockquote>
                						<xsl:apply-templates select="//tei:body"/>    
                						</blockquote>
                					</xsl:otherwise>
                				</xsl:choose>
                			
                			
                			
                			<blockquote>
                				<xsl:call-template name="do_visning"/>
                			</blockquote>
                </td>
            </tr>
            
            </xsl:element>
        </xsl:element>
    </xsl:element>
</xsl:template>

	<xsl:template match="tei:teiHeader">
		<h3><xsl:apply-templates select="//tei:title"/></h3>
		<xsl:element name="div">
			<i>Forfattere: </i> <br/><!--<xsl:apply-templates select="descendant::tei:author[1]"/>, <br/>
			<xsl:apply-templates select="descendant::tei:author[2]"/> m.fl.-->
			
			<xsl:for-each select="descendant::tei:author">
				<xsl:apply-templates select="."/>
				<xsl:choose>
					<xsl:when test="position()=last()">.</xsl:when>
					<xsl:otherwise>, </xsl:otherwise>
				</xsl:choose>
				
				
			</xsl:for-each>
		</xsl:element>
		<br></br>
		
	</xsl:template>
	
	<xsl:template match="tei:title">
		<xsl:element name="div">
			<xsl:attribute name="class">omTekst</xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="tei:respStmt">
		<xsl:element name="span">
			<xsl:attribute name="class">omTekst</xsl:attribute>
			<xsl:apply-templates/><xsl:text> </xsl:text>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="tei:respStmt/tei:name">
			<xsl:apply-templates/><br/>
	</xsl:template>
	<xsl:template match="tei:respStmt/tei:resp">
		<i><xsl:apply-templates/></i><br/>
	</xsl:template>
	
	<xsl:template match="tei:editionStmt">
		<xsl:element name="div">
			<xsl:attribute name="class">omTekst</xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="tei:publicationStmt | tei:sourceDesc | tei:revisionDesc">
		<!-- kortslutter -->
	</xsl:template>
    
<xsl:template match="tei:front">
	<blockquote><xsl:element name="div">
		<xsl:attribute name="class">innledning</xsl:attribute>
		<xsl:element name="div">
			<i>Forfattere:</i> <br/>
		<xsl:for-each select="//tei:author">
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
			<br/>
		</xsl:element>
		<xsl:element name="div">
		<xsl:for-each select="//tei:respStmt">
			<xsl:apply-templates select="."/><br/>
		</xsl:for-each>
		</xsl:element>
	</xsl:element>
	
	<xsl:element name="div">
			<xsl:apply-templates select="//tei:editionStmt"/><br/>
	</xsl:element>
	
	<xsl:element name="div">
		<xsl:apply-templates select="//tei:extent"/><br/>
	</xsl:element>
	
	<xsl:element name="div">
		<xsl:apply-templates select="//tei:sourceDesc"/><br/>
	</xsl:element>
	
	<xsl:element name="div">
		<xsl:apply-templates select="//tei:revisionDesc"/>
	</xsl:element>

  <xsl:element name="div">
      <xsl:attribute name="class">omTekst</xsl:attribute>
      <xsl:apply-templates/>
  </xsl:element>
		</blockquote>
</xsl:template>
    
<xsl:template match="tei:body">
        <xsl:element name="table">
            <xsl:attribute name="border">1</xsl:attribute>
            <xsl:attribute name="rules">rows</xsl:attribute>
            <xsl:attribute name="class">fragmenttabell</xsl:attribute>
            <!-- 2006.3.27 tmb: Hvis det søkes etter et eksplisitt rode og rodenummer, bare ta med de postene. -->     
        	
        	<!--[<xsl:value-of select="$QPI"></xsl:value-of>]-->
    
		<!--
		<xsl:value-of select="'test'"/>
		<xsl:value-of select="document('')/*/my:chartable//item[3]/URLtegn"/>
		<xsl:value-of select="document('/tegntabell.xml')"/>
		<xsl:value-of select="'test'"/>
		-->

            <xsl:choose>
                <xsl:when test="contains($QPI, 'ord=')">
		  
                    <xsl:choose>
                    	<!--<xsl:when test="contains($DOCUMENT_URL,'soktype=Fritekst')">-->
                    	<xsl:when test="contains($QPI,'soktype=Fritekst')"> <!-- test oystein -->
                    		<xsl:variable name="ord">
                            	
                            	<!--Må fjerne alle tulletegn -->
                            	<xsl:call-template name="NormaliserTegn">
                            		<!--<xsl:with-param name="streng" select="substring-after(substring-before($DOCUMENT_URL,'&amp;soktype=Fritekst'),'ord=')"/>-->
                            		<xsl:with-param name="streng" select="substring-after(substring-before($QPI,'&amp;soktype=Fritekst'),'ord=')"/>
                            	</xsl:call-template>
                            </xsl:variable>
                            <xsl:choose><xsl:when test="descendant::tei:entry[contains(descendant::*,$ord)]">
                            	<br/>Fant "<xsl:value-of select="$ord"/>" i fritekstsøk i hele materialet:
                            	<hr/>
                            	<xsl:apply-templates select="descendant::tei:entry[contains(descendant::*,$ord)]"/>
                            	<xsl:apply-templates select="descendant::tei:entry[contains(descendant::tei:sense,$ord)]"/>
                            </xsl:when>
                            <xsl:when test="descendant::tei:entry[contains(descendant::tei:sense,$ord)]">
                            	<br/>Fant "<xsl:value-of select="$ord"/>" i fritekstsøk i hele materialet:
                            	<hr/>
                            	<xsl:apply-templates select="descendant::tei:entry[contains(descendant::tei:sense,$ord)]"/>  
                            </xsl:when>
                            <xsl:otherwise>
                            	<br/>Ingen resultat på fritekstsøk etter ordet "<xsl:value-of select="$ord"/>" i fritekstsøk. 
                            </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>

		  	  <!--<xsl:value-of select="substring-after($QPI,'ord=')"/> contains url-encoded characters, e.g 'å' as '%C3%A5' -->
			   <xsl:variable name="ord">
                            	
                            	<!--Må fjerne alle tulletegn -->
                            	<xsl:call-template name="NormaliserTegn">
                            		<xsl:with-param name="streng" select="substring-after($QPI,'ord=')"/>
                            	</xsl:call-template>
                            </xsl:variable>
                            <!--<xsl:value-of select="$ord"/> still contains url-encoded characters. why does NormaliserTegn fail? -->
                            <xsl:choose>
                            
	                            <xsl:when test="descendant::tei:entry[descendant::tei:orth=$ord]">
	                            <br/>Fant "<xsl:value-of select="$ord"/>" som oppslagsord:
	                            <hr/>
	                            <xsl:apply-templates select="descendant::tei:entry[descendant::tei:orth=$ord]"/>
	                            <xsl:apply-templates select="descendant::tei:entry[contains(descendant::tei:orth,concat($ord,' '))]"/>
	                            <xsl:apply-templates select="descendant::tei:entry[contains(descendant::tei:orth,concat(' ',$ord))]"/>
	                        </xsl:when>
	                        <xsl:when test="descendant::tei:entry[contains(descendant::tei:orth,concat($ord,' '))] or descendant::tei:entry[contains(descendant::tei:orth,concat(' ',$ord))]">
	                            <br/>Fant "<xsl:value-of select="$ord"/>":
	                            <hr/>
	                            <xsl:apply-templates select="descendant::tei:entry[contains(descendant::tei:orth,concat($ord,' '))]"/>
	                            <xsl:apply-templates select="descendant::tei:entry[contains(descendant::tei:orth,concat(' ',$ord))]"/>
	                        </xsl:when>
	                        
	                        <xsl:otherwise>
	                        	<br/>Ingen resultat på søk etter ordet "<xsl:value-of select="$ord"/>" som oppslagsord. <br/><br/>Du kan eventuelt prøve å søke på ordet med fritekstsøk. Forekomster av ord i eksemplene blir da funnet, og man kan også søke etter vietnamesiske ord for å se hvor det er brukt i ordartiklene.
	                        </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>	
                </xsl:when>
            	<xsl:when test="contains($QPI, 'bokstav')">
            		<xsl:variable name="bokstav"><xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="substring-after($QPI,'bokstav=')"/></xsl:call-template></xsl:variable>
            		<div style="font-size: xx-large"><xsl:value-of select="$bokstav"/>
            			<hr/></div>
            		<xsl:apply-templates select="descendant::tei:entry[substring(attribute::sortKey,1,1) = $bokstav]"/> 
            	</xsl:when>
            	<xsl:when test="contains($QPI, 'vis=innhold')">
            		<xsl:apply-templates/> 
            	</xsl:when>
            	
              <xsl:otherwise>
              	<xsl:variable name="bokstav">A</xsl:variable>
              	<div style="font-size: xx-large"><xsl:value-of select="$bokstav"/>
              	<hr/></div>
                <xsl:apply-templates select="descendant::tei:entry[substring(attribute::sortKey,1,1) = $bokstav]"/>  <!-- Viser 'A'. --> 
              </xsl:otherwise>
            </xsl:choose>
        </xsl:element>
</xsl:template>
	
    <xsl:template name="note">
        <span class="note">
                <xsl:choose>
                    <xsl:when test="attribute::type='privat'">
                        <!-- Kortslutter -->
                    </xsl:when>
                    <xsl:when test="attribute::type='merknad'">
                        [<xsl:apply-templates/>]
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="attribute::resp='editor'">
                                [-<xsl:apply-templates/>-]
                            </xsl:when>
                            <xsl:otherwise>[<xsl:apply-templates/>]</xsl:otherwise>
                        </xsl:choose></xsl:otherwise>
                </xsl:choose>
            </span>
    </xsl:template>
   
    <xsl:template match="tei:note">
        <xsl:if test="not(parent::tei:div[attribute::type='innførsel'])">
            <xsl:call-template name="note"/>
        </xsl:if>
    </xsl:template>
    
	<xsl:template match="tei:front//tei:p | tei:back//tei:p">
        <xsl:element name="p">
            <xsl:apply-templates/>
        </xsl:element>
	</xsl:template>
	
	<xsl:template match="tei:p[attribute::rend='eksempel']">
		<xsl:element name="pre">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
    
	<xsl:template match="tei:front//tei:head | tei:back//tei:head">
        <xsl:element name="h2">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:del">
        <xsl:element name="span">
            <xsl:attribute name="style">text-decoration: line-through;</xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
	
	<xsl:template match="tei:item">
		<xsl:element name="span">
			<xsl:attribute name="style">text_style: bold;</xsl:attribute>
			<xsl:text> </xsl:text><xsl:apply-templates/><br/>
		</xsl:element>
	</xsl:template>
    
    <xsl:template match="tei:add[attribute::place='supralinear']">
        <span style="vertical-align: super;">\<xsl:apply-templates/>/</span>
    </xsl:template>
    
    <xsl:template match="tei:supplied">
        [<xsl:apply-templates/>]
    </xsl:template>
    
    <xsl:template match="tei:add[attribute::place='infralinear']">
        <span style="vertical-align: sub;">/<xsl:apply-templates/>\</span>
    </xsl:template>
    
    <xsl:template match="tei:hi[attribute::rend='underline']">
        <u><xsl:apply-templates/></u>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <xsl:element name="tr">
            <xsl:element name="td">
                <xsl:attribute name="colspan">5</xsl:attribute>
                <xsl:attribute name="align">left</xsl:attribute>
                <h1>
                <xsl:element name="a">
                    <xsl:attribute name="name">
                        <xsl:value-of select="generate-id(..)"/>
                    </xsl:attribute>
                    <xsl:apply-templates/>
                </xsl:element></h1>
            </xsl:element>
        </xsl:element>
    </xsl:template>
   <xsl:template match="tei:head" mode="toc">
       <xsl:element name="span"><xsl:attribute name="class">omTekst</xsl:attribute>
            <xsl:apply-templates/>
       <!-- 2006.09.18 tmb: Ta også med sidenr. -->
       (s. <xsl:value-of select="preceding::tei:pb[not(attribute::ed)][1]/attribute::n"/>)</xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:num[attribute::rend='høyrefelt']">
        <xsl:element name="span">
            <xsl:attribute name="class">numCelle</xsl:attribute>
                <xsl:apply-templates/> 
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:num[attribute::type='leige']">
        
    </xsl:template>
   
    <xsl:template match="tei:num[attribute::type='leige']" mode="leige">
        <xsl:apply-templates/>
    </xsl:template>
    
    
    
   
    <xsl:template match="tei:fw">
        <xsl:element name="tr">
            <xsl:element name="td">
                <xsl:attribute name="class">sideheader</xsl:attribute>
                <xsl:attribute name="colspan">5</xsl:attribute>
                <xsl:if test="attribute::place">
                    <xsl:attribute name="align"><xsl:value-of select="attribute::place"/></xsl:attribute>
                </xsl:if>
                <xsl:apply-templates/>
            </xsl:element>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="tei:lb">
       <br/><br/>
        
    </xsl:template>
    
    
    
    <xsl:template match="tei:add">
        <xsl:element name="i">
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
   
	
	<xsl:template match="tei:ref">
		<xsl:element name="a">
			<xsl:attribute name="href"><xsl:value-of select="attribute::target"/></xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="tei:persName | tei:orgName | tei:placeName">
				<xsl:element name="span">
					<xsl:if test="not(ancestor::tei:note)">
						<xsl:attribute name="style">color: green;</xsl:attribute>
					</xsl:if>
					<xsl:apply-templates/>
				</xsl:element>
	</xsl:template>
   
   
	<xsl:template match="tei:entry">
		<xsl:element name="span">
			<xsl:variable name="class">entry</xsl:variable>
		<xsl:apply-templates select="tei:form/tei:orth"/>
		<xsl:apply-templates select="descendant::tei:pron"/>
		<xsl:apply-templates select="tei:gramGrp"/>
		<xsl:apply-templates select="descendant::tei:lbl"/><br/>
		<xsl:apply-templates select="tei:sense"/></xsl:element>
		<hr/>
	</xsl:template>
	
	<xsl:template match="tei:form/tei:orth">
		<xsl:if test="not(attribute::rend='N108')">
			<!-- Tar ikke med de med rend N108, der er interne opplysninger. -->
			<b><xsl:apply-templates/></b>
		</xsl:if>
	</xsl:template>
	<xsl:template match="tei:cit/tei:orth">
		<!-- viser ikke -->
	</xsl:template>
	<xsl:template match="tei:usg">
		<i><xsl:apply-templates/></i>
	</xsl:template>
	
	<xsl:template match="tei:pron">
		[<xsl:apply-templates/>]
	</xsl:template>
	
	<xsl:template match="tei:lbl[attribute::rend='N111']">
		<!-- 2008.03.29 TMB: Kortslutter henvisninger av denne typen, skal ikke vises -->
	</xsl:template>
	
	<xsl:template match="tei:lbl">
		<xsl:choose>
			<xsl:when test="attribute::type='synonym'">= <b><xsl:apply-templates/></b></xsl:when>
			<xsl:when test="attribute::type='hovedform'"><xsl:text>→ </xsl:text>
				<xsl:element name="a">
					<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?ord=<xsl:apply-templates/></xsl:attribute><xsl:apply-templates/>
				</xsl:element>
			</xsl:when>
			<xsl:when test="attribute::type='henvisning'">
				<xsl:text>=→ </xsl:text>
				<xsl:variable name="henvisningstekst"><xsl:value-of select="."/></xsl:variable>
				<xsl:element name="a">
					<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?ord=<xsl:choose><xsl:when test="contains($henvisningstekst,',')"><xsl:value-of select="substring-before($henvisningstekst,',')"/></xsl:when><xsl:otherwise><xsl:value-of select="$henvisningstekst"/></xsl:otherwise></xsl:choose><xsl:value-of select="string"/></xsl:attribute>
					<xsl:apply-templates/>
				</xsl:element>
			</xsl:when>
			<xsl:when test="attribute::type='altForm'">= <b><xsl:apply-templates/></b></xsl:when>
		</xsl:choose>
		
		
	</xsl:template>
	
  <xsl:template match="tei:sense" mode="old">
  	
  	<xsl:for-each select="tei:cit[attribute::type='translation' and substring(attribute::rend,1,2)='V2'and substring(attribute::rend,3,1)='0']">
  		
  		<xsl:variable name="nr"><xsl:value-of select="position() - 1"></xsl:value-of></xsl:variable>
  		<!-- Hvis det finnes flere, nummerer dem -->
  		
  		<xsl:if test="parent::tei:sense/child::tei:cit[attribute::type='translation' and substring(attribute::rend,1,2)='V2'and substring(attribute::rend,4,1)='0'][2]">
  			<br/><xsl:value-of select="position()"/>. 
  		</xsl:if>
  		<!--<xsl:variable name="nr"><xsl:value-of select="substring(attribute::rend,3,1)"/></xsl:variable>-->
  		
		  
  		<xsl:apply-templates select="."/>
		  <!--<xsl:apply-templates select="tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'0')]"/>-->
  		
  		<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'1')]"/>
  		<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'2')]"/>
	  	
	  	<br/>
	  	<xsl:apply-templates select="parent::tei:sense/tei:usg[attribute::rend=concat('N2',$nr,'0')]"/>
	  	
  		
  		<xsl:for-each select="parent::tei:sense/tei:cit[attribute::rend=concat('N2',$nr,'4')]">
  				<xsl:if test="position() > 1"> | </xsl:if>
  			<i><xsl:apply-templates select="."/></i> 
  	</xsl:for-each>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-a'))]">
	  	| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-a'))]"/></i>
  		<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-a'))]"/>
	  	</xsl:if>
	  	
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-b'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-b'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-b'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-c'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-c'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-c'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-d'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-d'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-d'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-e'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-e'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-e'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-f'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-f'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-f'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-g'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-g'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-g'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-h'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-h'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-h'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-i'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-i'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-i'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-j'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-j'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-j'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-k'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-k'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-k'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-l'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-l'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-l'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-m'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-m'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-m'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-n'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-n'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-n'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-o'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-o'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-o'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-p'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-p'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-p'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-q'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-q'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-q'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-r'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-r'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-r'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-s'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-s'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-s'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-t'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-t'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-t'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-u'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-u'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-u'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-v'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-v'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-v'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-w'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-w'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-w'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-x'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-x'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-x'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-y'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-y'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-y'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-z'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-z'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-z'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-æ'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-æ'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-æ'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ø'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ø'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ø'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-å'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-å'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-å'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åa'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åa'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åa'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åb'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åb'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åb'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åc'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åc'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åc'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åd'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åd'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åd'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åe'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åe'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åe'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åf'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åf'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åf'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åg'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åg'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åg'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åh'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åh'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åh'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åi'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åi'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åi'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åj'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åj'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åj'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åk'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åk'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åk'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ål'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ål'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ål'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åm'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åm'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åm'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ån'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ån'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ån'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åo'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åo'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åo'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åp'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åp'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åp'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åq'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åq'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åq'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-år'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-år'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-år'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ås'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ås'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ås'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åt'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åt'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åt'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åu'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åu'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åu'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åv'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åv'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åv'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åw'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åw'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åw'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åx'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åx'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åx'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åy'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åy'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åy'))]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åz'))]">
  			| <i><xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åz'))]"/></i>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åz'))]"/>
  		</xsl:if>
  		
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-a'))]">
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-a')"/></xsl:variable>
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-a'))]"/>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-b'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-b'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-b')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-c'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-c'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-c')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-d'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-d'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-d')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-e'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-e'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-e')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-f'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-f'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-f')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-g'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-g'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-g')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-h'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-h'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-h')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-i'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-i'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-i')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-j'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-j'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-j')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-k'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-k'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-k')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-l'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-l'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-l')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-m'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-m'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-m')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-n'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-n'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-n')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-o'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-o'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-o')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-p'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-p'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-p')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-q'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-q'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-q')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-r'))]">
  			| <xsl:apply-templates select="parent::tei:sense/tei:cit[contains(attribute::rend,concat('N2',$nr,'6-r'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-r')"/></xsl:variable>
  			<xsl:apply-templates select="parent::tei:sense/tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<br/>
	  	</xsl:for-each>
  	
  </xsl:template>
	
	<xsl:template match="tei:sense">
		<!--2008.04.11 TMB: Finne ført ut for mange ulike betyedlinger det er, enklest å finne det ut ved å se på SISTE element av typen 
			<cit type="translation" xml:lang="vi">, da er antall betydlinger lik mellomsifferet i rend-verdien, f.eks. 9 (8+1), for rend="V285-h" -->
		<xsl:variable name="kladd"><xsl:value-of select="tei:cit[attribute::type='translation' and substring(attribute::rend,1,2)='V2'][position()=last()]/attribute::rend"/></xsl:variable>
		<xsl:variable name="antBetydninger"><xsl:value-of select="1 + substring($kladd, 3,1)"/></xsl:variable>		
		<!--(foreløpig note: Antall betydninger = <xsl:value-of select="$antBetydninger"/>) <br/>-->
  	
		<xsl:call-template name="betydning">
			<xsl:with-param name="nr1">1</xsl:with-param>
			<xsl:with-param name="antBetydninger"><xsl:value-of select="$antBetydninger"/></xsl:with-param>
		</xsl:call-template>
  	
	</xsl:template>
	
	<xsl:template name="betydning" >
		<xsl:param name="nr1"/>
		<xsl:param name="antBetydninger"/>
		<!--(2 note: nr1 = <xsl:value-of select="$nr1"/>,  antBetydninger = <xsl:value-of select="$antBetydninger"/>) <br/>-->
		<xsl:variable name="nr"><xsl:value-of select="$nr1 - 1"></xsl:value-of></xsl:variable>
  		
		<!-- Hvis det finnes flere, nummerer dem -->
  		<xsl:if test="$antBetydninger > 1">
  			<br/><xsl:value-of select="$nr1"/>. 
  		</xsl:if>
  		<!--<xsl:variable name="nr"><xsl:value-of select="substring(attribute::rend,3,1)"/></xsl:variable>-->
  		
		  
		  <xsl:apply-templates select="tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'0')]"/>
  		
  		<xsl:apply-templates select="tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'1')]"/>
  		<xsl:apply-templates select="tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'2')]"/>
	  	
	  	<br/>
	  	<xsl:apply-templates select="tei:usg[attribute::rend=concat('N2',$nr,'0')]"/>
	  	
  		
  		<xsl:for-each select="tei:cit[attribute::rend=concat('N2',$nr,'4')]">
  				<xsl:if test="position() > 1"> | </xsl:if>
  			<i><xsl:apply-templates select="."/></i> 
  	</xsl:for-each>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-a'))]">
	  	| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-a'))]"/></i>
  		<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-a'))]"/>
	  	</xsl:if>
	  	
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-b'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-b'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-b'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-c'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-c'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-c'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-d'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-d'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-d'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-e'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-e'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-e'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-f'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-f'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-f'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-g'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-g'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-g'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-h'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-h'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-h'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-i'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-i'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-i'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-j'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-j'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-j'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-k'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-k'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-k'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-l'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-l'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-l'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-m'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-m'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-m'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-n'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-n'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-n'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-o'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-o'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-o'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-p'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-p'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-p'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-q'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-q'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-q'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-r'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-r'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-r'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-s'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-s'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-s'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-t'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-t'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-t'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-u'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-u'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-u'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-v'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-v'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-v'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-w'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-w'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-w'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-x'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-x'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-x'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-y'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-y'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-y'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-z'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-z'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-z'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-æ'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-æ'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-æ'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ø'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ø'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ø'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[attribute::rend=concat('N2',$nr,'5-å')]">
  			| <i><xsl:apply-templates select="tei:cit[attribute::rend=concat('N2',$nr,'5-å')]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and attribute::rend=concat('V2',$nr,'5-å')]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åa'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åa'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åa'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åb'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åb'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åb'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åc'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åc'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åc'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åd'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åd'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åd'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åe'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åe'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åe'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åf'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åf'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åf'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åg'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åg'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åg'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åh'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åh'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åh'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åi'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åi'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åi'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åj'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åj'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åj'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åk'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åk'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åk'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ål'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ål'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ål'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åm'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åm'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åm'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ån'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ån'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ån'))]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åo'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åo'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åo'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åp'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åp'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åp'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åq'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åq'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åq'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-år'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-år'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-år'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ås'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-ås'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-ås'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åt'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åt'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åt'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åu'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åu'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åu'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åv'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åv'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åv'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åw'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åw'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åw'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åx'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åx'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åx'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åy'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åy'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åy'))]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åz'))]">
  			| <i><xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'5-åz'))]"/></i>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,concat('V2',$nr,'5-åz'))]"/>
  		</xsl:if>
  		
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-a'))]">
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-a')"/></xsl:variable>
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-a'))]"/>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-b'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-b'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-b')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-c'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-c'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-c')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-d'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-d'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-d')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-e'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-e'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-e')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-f'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-f'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-f')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-g'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-g'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-g')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-h'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-h'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-h')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-i'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-i'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-i')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-j'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-j'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-j')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-k'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-k'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-k')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-l'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-l'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-l')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-m'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-m'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-m')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-n'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-n'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-n')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-o'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-o'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-o')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-p'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-p'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-p')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-q'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-q'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-q')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<xsl:if test="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-r'))]">
  			| <xsl:apply-templates select="tei:cit[contains(attribute::rend,concat('N2',$nr,'6-r'))]"/>
  			<xsl:variable name="id2"><xsl:value-of select="concat('V2',$nr,'6-r')"/></xsl:variable>
  			<xsl:apply-templates select="tei:cit[attribute::type='translation' and contains(attribute::rend,$id2)]"/>
  		</xsl:if>
  		<br/>
		
		<xsl:if test="$antBetydninger > $nr1">
				<xsl:call-template name="betydning">
					<xsl:with-param name="nr1"><xsl:value-of select="1 + $nr1"/></xsl:with-param>
					<xsl:with-param name="antBetydninger"><xsl:value-of select="$antBetydninger"/></xsl:with-param>
				</xsl:call-template>
			</xsl:if>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N204')]">
		<i><xsl:apply-templates/></i><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N205')]">
		<i><xsl:apply-templates/></i><xsl:text> </xsl:text>
	</xsl:template>
	
	<!--<xsl:template match="tei:cit[contains(attribute::rend,'N206')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>-->
	
<!--	<xsl:template match="tei:cit[contains(attribute::rend,'N216')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N226')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N236')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N246')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N256')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N266')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N276')]">
		<b><xsl:apply-templates/></b><xsl:text> </xsl:text>
	</xsl:template>
	-->
	<xsl:template match="tei:cit">
		<xsl:apply-templates/><xsl:text> </xsl:text>
	</xsl:template>
	
	
	
	<xsl:template match="tei:def">
		<!-- 2008.03.27 TMB: Skal aldri vise definisjonsoppslag -->
		<!--<xsl:apply-templates/><xsl:text> </xsl:text>-->
	</xsl:template>
	
	<xsl:template match="tei:cit//tei:pos">
		<i><xsl:text> </xsl:text><xsl:apply-templates/></i>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N206')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N216')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:cit[contains(attribute::rend,'N226')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N236')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N246')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N256')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N266')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N276')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N286')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:cit[contains(attribute::rend,'N296')]/tei:q">
		<b><xsl:apply-templates/> </b><xsl:text> </xsl:text>
	</xsl:template>
	<xsl:template match="tei:q">
		<xsl:apply-templates/><xsl:text> </xsl:text>
	</xsl:template>
	
	<xsl:template match="tei:hi[attribute::rend='underline']">
		<u><xsl:apply-templates/></u>
	</xsl:template>
	
    <xsl:template name="do_index">
    	<xsl:element name="a"> 
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=A</xsl:attribute>A<xsl:text> </xsl:text> 
    	</xsl:element>
     <xsl:element name="a"> 
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=B</xsl:attribute>B<xsl:text> </xsl:text> 
    	</xsl:element>
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=C</xsl:attribute>C<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=D</xsl:attribute>D<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=E</xsl:attribute>E<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=F</xsl:attribute>F<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=G</xsl:attribute>G<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=H</xsl:attribute>H<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=I</xsl:attribute>I<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=J</xsl:attribute>J<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=K</xsl:attribute>K<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=L</xsl:attribute>L<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=M</xsl:attribute>M<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=N</xsl:attribute>N<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=O</xsl:attribute>O<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=P</xsl:attribute>P<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=Q</xsl:attribute>Q<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=R</xsl:attribute>R<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=S</xsl:attribute>S<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=T</xsl:attribute>T<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=U</xsl:attribute>U<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=V</xsl:attribute>V<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=W</xsl:attribute>W<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=X</xsl:attribute>X<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=Y</xsl:attribute>Y<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=Z</xsl:attribute>Z<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=Æ</xsl:attribute>Æ<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=Ø</xsl:attribute>Ø<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	<xsl:element name="a">
    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?bokstav=Å</xsl:attribute>Å<xsl:text> </xsl:text> 
    	</xsl:element><xsl:text> </xsl:text> 
    	
    	
    </xsl:template>
    
	<xsl:template name="do_lister">
		<xsl:element name="span">
			<xsl:attribute name="class">omTekst</xsl:attribute>
			<xsl:element name="a">
				<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?liste=register</xsl:attribute>
				Register
			</xsl:element>
			<!--<br/>
			<xsl:element name="a">
				<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?liste=persName</xsl:attribute>
				Personliste (på etternamn)
			</xsl:element>
			 (<xsl:element name="a">
				<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?liste=forename</xsl:attribute>på fornamn</xsl:element>)
			<br/>
			<xsl:element name="a">
				<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?liste=placeName</xsl:attribute>
				Stadnamn
			</xsl:element>
			<br/>
			<xsl:element name="a">
				<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?liste=orgName</xsl:attribute>
				Organisasjonar
			</xsl:element>-->
		</xsl:element>
	</xsl:template>
	
    <xsl:template name="do_signatur2">
        <xsl:element name="span">
            <xsl:attribute name="class">omTekst</xsl:attribute>
                
                    <xsl:if test="not(//tei:teiHeader[attribute::type='mainpage'])">
                    	<p><xsl:element name="a">
                    		<xsl:attribute name="href">&gandalf_sti;<xsl:value-of select="$DOCUMENT_NAME"/>?vis=front</xsl:attribute>Om ordboken
                    	</xsl:element></p>
                    </xsl:if>
        	<p>Copyright: Prosjektleder Marianne Haslev Skånland, Universitetet i Bergen.</p>
        	<p>Opprettet <xsl:value-of select="//tei:revisionDesc/tei:change[last()]/tei:date"/>. Sist oppdatert <xsl:value-of select="//tei:revisionDesc/tei:change[1]/tei:date"/>. Elektronisk utgave <date>2008</date> ved Tone Merete Bruvik, <a href="http://www.aksis.uib.no/">AKSIS</a>, Unifob.
        	</p><p>Utgave <date>2014</date>, <date>2015</date> med XSLT-transformasjon i nettleseren i stedet for 'Xiki' (test). Øystein Reigem, CLU, <a href="http://www.computing.uni.no/">Uni Research Computing</a>.
        		<!--<a href="mailto:tone.bruvik@aksis.uib.no">Vevsjef</a>.--> 
        		<a href="mailto:oystein.reigem@uni.no">Vevsjef</a>.  <!-- test oystein -->
        	</p>
        </xsl:element>
    </xsl:template>
	
   <xsl:template name="NormaliserBlanke">
		<xsl:param name="streng"/>
   	
		<xsl:choose>
			<xsl:when test="contains($streng,'%20')">
				<xsl:variable name="tegn">%20</xsl:variable>
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,$tegn),' ',substring-after($streng,$tegn))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'%C3%B8')">
				<xsl:variable name="tegn">%C3%B8</xsl:variable>
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,$tegn),'ø',substring-after($streng,$tegn))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'%C3%A5')">
				<xsl:variable name="tegn">%C3%A5</xsl:variable>
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,$tegn),'å',substring-after($streng,$tegn))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'%C3%A6')">
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,'%C3%A6'),'æ',substring-after($streng,'%C3%A6'))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'%C3%86')">
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,'%C3%86'),'Æ',substring-after($streng,'%C3%86'))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'%C3%98')">
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,'%C3%98'),'Ø',substring-after($streng,'%C3%98'))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'%C3%85')">
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,'%C3%85'),'Å',substring-after($streng,'%C3%85'))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			<xsl:when test="contains($streng,'+')">
				<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,'+'),' ',substring-after($streng,'+'))"/></xsl:variable>
				<xsl:call-template name="NormaliserBlanke"><xsl:with-param name="streng" select="$nystreng"/></xsl:call-template>
			</xsl:when>
			
			<xsl:otherwise>
				<xsl:value-of select="$streng"/>
			</xsl:otherwise>
		</xsl:choose>
		
   </xsl:template>
	
	<xsl:template name="NormaliserTegn">

		<xsl:param name="streng"/>
		
		<xsl:variable name="nystreng">
			<xsl:call-template name="fraURLtilUTF8">
					<xsl:with-param name="streng" select="$streng"/>
				 	<xsl:with-param name="tegnnr">1</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:value-of select="$nystreng"/>
		
	</xsl:template>
	
	<xsl:template name="fraURLtilUTF8">
		<xsl:param name="streng"/>
		<xsl:param name="tegnnr"/>

<!--
		 <xsl:value-of select="'streng='"/>
		 <xsl:value-of select="$streng"/>
		 <xsl:value-of select="',tegnnr=:'"/>
		 <xsl:value-of select="$tegnnr"/>
		 <xsl:value-of select="'.'"/>
-->		
		<xsl:choose>
			<!--<xsl:when test="$tegnnr>20">
				<xsl:value-of select="$streng"/>
			</xsl:when>-->
			<!--<xsl:when test="string-length(document('./tegntabell.xml')//item[$tegnnr]/URLtegn) > 0">-->
			<xsl:when test="string-length(document('')/*/my:chartable//item[$tegnnr]/URLtegn) > 0">
			        <!--<xsl:value-of select="'tegntabell'"/>-->
				<!--<xsl:variable name="frastreng" select="document('./tegntabell.xml')//item[$tegnnr]/URLtegn"/>-->
				<xsl:variable name="frastreng" select="document('')/*/my:chartable//item[$tegnnr]/URLtegn"/>
				<!--<xsl:variable name="tilstreng" select="document('./tegntabell.xml')//item[$tegnnr]/UTF8"/>-->
				<xsl:variable name="tilstreng" select="document('')/*/my:chartable//item[$tegnnr]/UTF8"/>
				
				<xsl:choose>
					<xsl:when test="contains($streng,$frastreng)"> <!-- det er noe å konvertere på dette tegnet -->
						<!--  Konverter-->
						<xsl:variable name="nystreng"><xsl:value-of select="concat(substring-before($streng,$frastreng),$tilstreng,substring-after($streng,$frastreng))"/></xsl:variable> 
						
						<!-- Konverter eventuelt resten av dette tegnet. -->
						<xsl:call-template name="fraURLtilUTF8">
							<xsl:with-param name="streng" select="$nystreng"/>
							<xsl:with-param name="tegnnr" select="$tegnnr"/>
						</xsl:call-template>
					</xsl:when>
					<xsl:otherwise>
						<xsl:call-template name="fraURLtilUTF8">
							<xsl:with-param name="streng" select="$streng"/>
							<xsl:with-param name="tegnnr" select="$tegnnr + 1"/>
						</xsl:call-template>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>
			  <!--<xsl:value-of select="'ikke tegntabell'"/>-->
				<xsl:value-of select="$streng"/>
			</xsl:otherwise>
		</xsl:choose>
		
		
	</xsl:template>
	
    <xsl:template name="do_visning">
        <xsl:element name="span">
            <xsl:attribute name="class">omTekstBunn</xsl:attribute>
            <xsl:choose>
                <xsl:when test="//tei:teiHeader[@xml:lang='en']"> 
                    <p>
                    </p>
                </xsl:when>
                <xsl:otherwise>
                    
                    <p>
                    </p>
                </xsl:otherwise>
            </xsl:choose>
            </xsl:element>
    </xsl:template>
    
    <xsl:template name="parametre">
        <!-- 2006.03.27 tmb: Skriver ut parametrene. Debugging-informasjon. -->
        <p> QPI = <xsl:value-of select="$QPI"/><br/>
            CONTENT_TYPE= <xsl:value-of select="$CONTENT_TYPE"/><br/>
            DOCUMENT_FILENAME= <xsl:value-of select="$DOCUMENT_FILENAME"/><br/>
            DOCUMENT_NAME= <xsl:value-of select="$DOCUMENT_NAME"/><br/>
            DOCUMENT_PATH= <xsl:value-of select="$DOCUMENT_PATH"/><br/>
            DOCUMENT_ROOT= <xsl:value-of select="$DOCUMENT_ROOT"/><br/>
            DOCUMENT_URL= <xsl:value-of select="$DOCUMENT_URL"/><br/>
            HOME_PATH= <xsl:value-of select="$HOME_PATH"/><br/>
            HTTP_ACCEPT_CHARSET= <xsl:value-of select="$HTTP_ACCEPT_CHARSET"/><br/>
            HTTP_ACCEPT_ENCODING= <xsl:value-of select="$HTTP_ACCEPT_ENCODING"/><br/>
            HTTP_ACCEPT_LANGUAGE= <xsl:value-of select="$HTTP_ACCEPT_LANGUAGE"/><br/>
            HTTP_COOKIE= <xsl:value-of select="$HTTP_COOKIE"/><br/>
            HTTP_REFERER= <xsl:value-of select="$HTTP_REFERER"/><br/>
            HTTP_USER_AGENT= <xsl:value-of select="$HTTP_USER_AGENT"/><br/>
            LANG= <xsl:value-of select="$LANG"/><br/>
            NOW= <xsl:value-of select="$NOW"/><br/>
            NOW_UTC= <xsl:value-of select="$NOW_UTC"/><br/>
            PAGEMENU_URL= <xsl:value-of select="$PAGEMENU_URL"/><br/>
            PATH_INFO= <xsl:value-of select="$PATH_INFO"/><br/>
            PROJECT_DOCUMENT_NAME= <xsl:value-of select="$PROJECT_DOCUMENT_NAME"/><br/>
            REMOTE_ADDR= <xsl:value-of select="$REMOTE_ADDR"/><br/>
            REMOTE_USER= <xsl:value-of select="$REMOTE_USER"/><br/>
            REQUEST_METHOD= <xsl:value-of select="$REQUEST_METHOD"/><br/>
            REQUEST_URI= <xsl:value-of select="$REQUEST_URI"/><br/>
            SERVER_NAME= <xsl:value-of select="$SERVER_NAME"/><br/>
            SERVER_PORT= <xsl:value-of select="$SERVER_PORT"/><br/>
            SERVER_SOFTWARE= <xsl:value-of select="$SERVER_SOFTWARE"/><br/>
            STYLESHEET_FILENAME= <xsl:value-of select="$STYLESHEET_FILENAME"/><br/>
            STYLESHEET_NAME= <xsl:value-of select="$STYLESHEET_NAME"/><br/>
            TODAY= <xsl:value-of select="$TODAY"/><br/>
            TODAY_UTC= <xsl:value-of select="$TODAY_UTC"/><br/>
            param.id= <xsl:value-of select="$param.id"/><br/>
            param.name= <xsl:value-of select="$param.name"/><br/>
            </p>
    </xsl:template>
</xsl:stylesheet>
