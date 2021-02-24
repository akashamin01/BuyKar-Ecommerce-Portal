//Imports
import React from 'react';
// Required components
import '../../assets/css/bootstrap.min.css';
import '../../assets/css/flaticon.css';
import '../../assets/css/slicknav.css';
import '../../assets/css/animate.min.css';
import '../../assets/css/magnific-popup.css';
import '../../assets/css/fontawesome-all.min.css';
import '../../assets/css/themify-icons.css';
import '../../assets/css/slick.css';
import '../../assets/css/nice-select.css';
import '../../assets/css/style.css';

// Component
class Header extends React.Component {

    //*** Component Lifecycle ***//

    // componentDidMount() {

    //     // Component styles
    //     require('./Modal.scss');
    // }

    //*** Template ***//

    render() {
        return (
            <div class="header-area">
                <div class="main-header header-sticky">
                    <div class="container-fluid">
                        <div class="menu-wrapper">
                            <div class="logo">
                                <a href="index.html">
                                    <h1>BuyKar</h1>
                                </a>
                            </div>
                            <div class="main-menu d-none d-lg-block">
                                <nav>                                                
                                    <ul id="navigation">  
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="about.html">about</a></li>
                                        <li><a href="shop.html">shop</a>
                                            <ul class="submenu">
                                                <li><a href="shop.html"> Product list</a></li>
                                                <li><a href="product_details.html"> Product Details</a></li>
                                            </ul>
                                        </li>
                                        <li class="hot"><a href="#">Deals</a></li>
                                        <li><a href="#">Pages</a>
                                            <ul class="submenu">
                                                <li><a href="login.html">Login</a></li>
                                                <li><a href="cart.html">Cart</a></li>
                                                <li><a href="elements.html">Element</a></li>
                                                <li><a href="confirmation.html">Confirmation</a></li>
                                                <li><a href="checkout.html">Product Checkout</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.html">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="header-right">
                                <ul>
                                    <li>
                                        <div class="nav-search search-switch">
                                            <span class="flaticon-search"></span>
                                        </div>
                                    </li>
                                    <li> <a href="login.html"><span class="flaticon-user"></span></a></li>
                                    <li><a href="cart.html"><span class="flaticon-shopping-cart"></span></a> </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

/**
 * Exports
 */
export default Header;