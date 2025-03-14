<%-- 
    Document   : Catalogo
    Created on : 10/11/2019, 01:17:15 PM
    Author     : 57313
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Exchange.proyecto.persistencia.vo.PublicarVO"%>
<%@page import="Exchange.proyecto.persistencia.vo.CategoriasVo"%>
<%@page import="java.util.List"%>
<%@page import="Exchange.proyecto.persistencia.dao.ProductoDAO"%>
<%@page import="Exchange.proyecto.persistencia.dao.CategoriaDao"%>
<%@page import="Exchange.proyecto.persistencia.dao.CategoriaDao"%>
<%@page import="Exchange.proyecto.persistencia.vo.usuariovo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Catalogo</title>
        <jsp:include page="/complementos/linkcss.jsp"></jsp:include> 
        </head>
        <body>

            <header>
            <jsp:include page="/complementos/Encabezado.jsp"></jsp:include>

            </header
        <%

            usuariovo vo = (usuariovo) session.getAttribute("usuario");

            CategoriaDao cd = new CategoriaDao();
            List<CategoriasVo> lista = cd.listar();
           

        %>
        <!-- SECTION -->
        <div class="section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <!-- ASIDE -->
                    <div id="aside" class="col-md-3">
                        <!-- aside Widget -->
                        <div class="aside">
                            <h3 class="aside-title">Categorias</h3>
                            <div class="checkbox-filter">
                                <%for (int i = 0; i < lista.size(); i++) {%>
                                <div class="checkbox-filter">

                                    <div class="input-checkbox">
                                        <input type="checkbox"  value="" id="category-1">
                                        <label for="category-1">
                                            <span></span>
                                            <%=lista.get(i).getDescripcion()%>

                                            <small>(<%=cd.countcategoria(lista.get(i).getIdCategoria())%>)</small>
                                        </label>
                                    </div>                     

                                </div>
                                <% }%>
                            </div>
                        </div>

                        <!-- aside Widget -->

                        <!-- /aside Widget -->

                        <!-- aside Widget -->
                        
                        <!-- /aside Widget -->
                    </div>
                    <!-- /ASIDE -->

                    <!-- STORE -->
                    <div id="store" class="col-md-9">
                        <!-- store top filter -->
                        <div class="store-filter clearfix">
                            <div class="store-sort">
                                <label>
                                    Organizar por:
                                    <select class="input-select">
                                        <option value="0">Popular</option>
                                        <option value="1">Primer Publicación</option>
                                        <option value="2">Ultima Publicación</option>
                                    </select>
                                </label>


                            </div>

                        </div>
                        <!-- /store top filter -->

                        <!-- store products -->
                        <div class="row">
                            <!-- product -->
                            <div id="catalogo">
                                <c:forEach items="${listarcategoria}" var="pd" >
                                    <div class="col-md-4 col-xs-6">
                                        <div class="product">
                                            <div class="product-img">
                                                <img src="${pd.getImagen1()}" alt="">
                                                <div class="product-label">
                                                    <span class="new">NEW</span>
                                                </div>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-category">${pd.getCategoriasVo().getDescripcion()}</p>
                                                <h3 class="product-name"><a href="${pageContext.request.contextPath}/producto?producto=${pd.getId_publicar()}">${pd.getNombre()}</a></h3>
                                                <h4 class="product-price">${pd.getUsuario().getCiudadVO().getDescripcion()
                                                    } </h4>

                                                <div class="product-btns">
                                                    <button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Me interesa</span></button>

                                                    <button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Ver mejor</span></button>
                                                </div>
                                            </div>
                                            <div class="add-to-cart">
                                                <button class="add-to-cart-btn" onclick="agregarinteresados(${usuario.getId()},${pd.getId_publicar()})"><i class="fa fa-shopping-cart"></i> ¡Lo quiero intercambiar!</button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- /product -->

                                    <div class="clearfix visible-sm visible-xs"></div>

                                </c:forEach>
                            </div>
                        </div>
                        <!-- /store products -->

                        <!-- store bottom filter -->
                        <div class="store-filter clearfix">
                            <ul class="store-pagination">
                                <li class="active">1</li>
                                <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </div>
                        <!-- /store bottom filter -->
                    </div>
                    <!-- /STORE -->
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>

        <jsp:include page="/complementos/footer.jsp"></jsp:include>
        </body>
    <jsp:include page="/complementos/linkJS.jsp"></jsp:include>
</html>
