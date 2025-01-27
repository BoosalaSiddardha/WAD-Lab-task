<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <title>Library Books</title>
            <style>
                table {
                    width: 80%;
                    border-collapse: collapse;
                    margin: auto;
                }
                th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: left;
                }
                th {
                    background-color: #018749;
                    font-weight: bold;
                }
                td {
                    background-color: #90EE90;
                    font-weight: bold;
                }

            </style>
        </head>
        <body>
            <h1 style="text-align: center;">Library Books</h1>
            <table>
                <tr>
                    <th>Book ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Price</th>
                    <th>Year</th>
                </tr>
                <xsl:for-each select="library/book">
                    <tr>
                        <td><xsl:value-of select="@id"/></td>
                        <td><xsl:value-of select="title"/></td>
                        <td><xsl:value-of select="author"/></td>
                        <td><xsl:value-of select="publisher"/></td>
                        <td><xsl:value-of select="price"/></td>
                        <td><xsl:value-of select="year"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
