<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html lang="es">
<head>
    <style>
        p {
            color: blue;
        }
        .epigrafes {
            color: green;
        }
    </style>            
    <title>Document</title>
</head>
<body>
    <h1>Currimculum Vitae</h1>
    <h2 class="epigrafes">Datos personales</h2>
    <p>Nombre: <xsl:value-of select="curriculum_vitae/datos_personales/nombre"></xsl:value-of></p>
    <p>Apellidos: <xsl:value-of select="curriculum_vitae/datos_personales/apellidos"></xsl:value-of></p>
    <p>
        <xsl:attribute name="scr">
            <xsl:value-of select="curriculum_vitae/datos_personales/foto"></xsl:value-of> 
        </xsl:attribute>
    </p>
    <h2>Redes sociales</h2>
    <ul>
        <xsl:for-each select="curriculum_vitae/datos_personales/redes/">
            <li><xsl:value-of select="nombre"></xsl:value-of> </li>
        </xsl:for-each>
    </ul>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
