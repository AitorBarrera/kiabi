<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>Kiabi</title>
                <!-- Required meta tags -->
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                
                <!-- Bootstrap CSS v5.2.1 -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
            </head>
            
            <body>
                <a href="#top" type="button" class="btn btn-light border border-primary border-2 text-primary position-fixed bottom-0 end-0 me-lg-5 mb-lg-4 z-1">
                    ▲<br/>Volver
                </a>
                <header>
                    <nav class="navbar navbar-expand-lg navbar-light bg-light text-primary px-5 py-3 mb-5 border-bottom border-2">
                        <a class="navbar-brand col-2 col-lg-1 " href="#">
                            <img src="logo.png" alt="" srcset="" class="w-100" />
                        </a>
                        <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                                aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="collapsibleNavId">
                            <ul class="navbar-nav me-auto mt-2 mt-lg-0 mx-auto">
                                <xsl:for-each select="kiabi/categoria">
                                    <li class="nav-item"> 
                                        <a href="#{@nombre}" class="text-decoration-none text-dark fw-medium me-4 my-1">
                                            <xsl:value-of select="@nombre"/>
                                        </a>
                                    </li>
                                </xsl:for-each>
                            </ul>
                            <section class="row">
                                <div class="col-4 text-center text-black fw-medium">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <p class="m-0">Tiendas</p>
                                </div>
                                <div class="col-4 text-center text-black fw-medium">
                                    <i class="fa fa-user" aria-hidden="true"></i>
                                    <p class="m-0">Cuenta</p>
                                </div>
                                <div class="col-4 text-center text-black fw-medium">
                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                    <p class="m-0">Cesta</p>
                                </div>
                            </section>
                        </div>
                    </nav>
                </header>
                <main>
                    <section class="container my-4 px-5 w-75">
                        <div class="row justify-content-between">
                            <xsl:for-each select="kiabi/categoria">
                                <div class="col-6 col-md-4 col-lg-2 text-center">
                                    <a href="#{@nombre}" class=" text-decoration-none text-black fw-medium">
                                        <img src="{foto}" alt="" class="rounded-circle"/>
                                        <p><xsl:value-of select="@nombre"/></p>
                                    </a>
                                </div>
                            </xsl:for-each>
                        </div>
                    </section>
                    <xsl:for-each select="kiabi/categoria">
                        <a name="{@nombre}" />
                        <h2 class="text-primary-emphasis text-center text-uppercase display-3 fw-bold mb-3"><xsl:value-of select="@nombre"/></h2>
                        <div class="container">
                            <div class="row justify-content-center py-3 px-2 mb-5 border rounded">
                                <xsl:for-each select="prenda">
                                    <xsl:sort select="precio" _data-type="number" />
                                    <div class="col-6 col-lg-3 mb-4">
                                        <div class="card h-100 border-2">
                                            <img class="card-img-top" src="{foto}" alt="Title" />
                                            <div class="card-body row flex-column justify-content-between">
                                                <h5 class="card-title text-dark fw-normal mb-3"><xsl:value-of select="producto"/></h5>
                                                <p class="card-text m-0 fw-bolder"><xsl:value-of select="precio"/> €</p>
                                                <button type="button" class="btn btn-outline-primary position-absolute bottom-0 end-0 me-3 mb-3 w-50">Comprar</button>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </xsl:for-each>
                </main>
                <footer class="border-top border-2">
                    <h5 class="text-center text-primary-emphasis m-5 display-5 fw-bold">Por: ?</h5>
                </footer>
                <!-- Bootstrap JavaScript Libraries -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                        crossorigin="anonymous"></script>
                
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>