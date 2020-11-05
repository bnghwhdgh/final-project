<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="common_top.jsp"></jsp:include>
    <!-- Off-Canvas Wrapper-->
    <div class="offcanvas-wrapper">
      <!-- Page Title-->
      <div class="page-title">
        <div class="container">
          <div class="column">
            <h1>My Wishlist</h1>
          </div>
          <div class="column">
            <ul class="breadcrumbs">
              <li><a href="index.html">Home</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li><a href="account-orders.html">Account</a>
              </li>
              <li class="separator">&nbsp;</li>
              <li>My Wishlist</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Page Content-->
      <div class="container padding-bottom-3x mb-2">
        <div class="row">
          <div class="col-lg-4">
            <aside class="user-info-wrapper">
              <div class="user-cover" style="background-image: url(img/account/user-cover-img.jpg);">
                <div class="info-label" data-toggle="tooltip" title="You currently have 290 Reward Points to spend"><i class="icon-medal"></i>290 points</div>
              </div>
              <div class="user-info">
                <div class="user-avatar"><a class="edit-avatar" href="#"></a><img src="img/account/user-ava.jpg" alt="User"></div>
                <div class="user-data">
                  <h4>Daniel Adams</h4><span>Joined February 06, 2017</span>
                </div>
              </div>
            </aside>
            <nav class="list-group"><a class="list-group-item with-badge" href="account-orders.html"><i class="icon-bag"></i>Orders<span class="badge badge-primary badge-pill">6</span></a><a class="list-group-item" href="account-profile.html"><i class="icon-head"></i>Profile</a><a class="list-group-item" href="account-address.html"><i class="icon-map"></i>Addresses</a><a class="list-group-item with-badge active" href="account-wishlist.html"><i class="icon-heart"></i>Wishlist<span class="badge badge-primary badge-pill">3</span></a><a class="list-group-item with-badge" href="account-tickets.html"><i class="icon-tag"></i>My Tickets<span class="badge badge-primary badge-pill">4</span></a></nav>
          </div>
          <div class="col-lg-8">
            <div class="padding-top-2x mt-2 hidden-lg-up"></div>
            <!-- Wishlist Table-->
            <div class="table-responsive wishlist-table margin-bottom-none">
              <table class="table">
                <thead>
                  <tr>
                    <th>Product Name</th>
                    <th class="text-center"><a class="btn btn-sm btn-outline-danger" href="#">Clear Wishlist</a></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/01.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html">Unionbay Park</a></h4>
                          <div class="text-lg text-medium text-muted">$43.90</div>
                          <div>Availability:
                            <div class="d-inline text-success">In Stock</div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="Remove item"><i class="icon-cross"></i></a></td>
                  </tr>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/02.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html">Daily Fabric Cap</a></h4>
                          <div class="text-lg text-medium text-muted">$24.70</div>
                          <div>Availability:
                            <div class="d-inline text-warning">2 - 3 Weeks</div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="Remove item"><i class="icon-cross"></i></a></td>
                  </tr>
                  <tr>
                    <td>
                      <div class="product-item"><a class="product-thumb" href="shop-single.html"><img src="img/shop/cart/03.jpg" alt="Product"></a>
                        <div class="product-info">
                          <h4 class="product-title"><a href="shop-single.html">Cole Haan Crossbody</a></h4>
                          <div class="text-lg text-medium text-muted">$200.00</div>
                          <div>Availability:
                            <div class="d-inline text-success">In Stock</div>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td class="text-center"><a class="remove-from-cart" href="#" data-toggle="tooltip" title="Remove item"><i class="icon-cross"></i></a></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <hr class="mb-4">
            <div class="custom-control custom-checkbox">
              <input class="custom-control-input" type="checkbox" id="inform_me" checked>
              <label class="custom-control-label" for="inform_me">Inform me when item from my wishlist is available</label>
            </div>
          </div>
        </div>
      </div>
      <!-- Site Footer-->
      <jsp:include page="common_bottom.jsp"/>
    </div>
    <!-- Back To Top Button--><a class="scroll-to-top-btn" href="#"><i class="icon-arrow-up"></i></a>
    <!-- Backdrop-->
    <div class="site-backdrop"></div>
    <!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
    <script src="js/vendor.min.js"></script>
    <script src="js/scripts.min.js"></script>
  </body>
</html>