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
import watch from '../../assets/img/hero/watch.png';

// Component
class Home extends React.Component {

    //*** Component Lifecycle ***//

    // componentDidMount() {

    //     // Component styles
    //     require('./Modal.scss');
    // }

    //*** Template ***//

    render() {
        return (
            <div className="slider-area ">
                <div className="slider-active">
                    <div className="single-slider slider-height d-flex align-items-center slide-bg">
                        <div className="container">
                            <div className="row justify-content-between align-items-center">
                                <div className="col-xl-8 col-lg-8 col-md-8 col-sm-8">
                                    <div className="hero__caption">
                                        <h1 data-animation="fadeInLeft" data-delay=".4s" data-duration="2000ms">Select Your New Perfect Style</h1>
                                        <p data-animation="fadeInLeft" data-delay=".7s" data-duration="2000ms">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat is aute irure.</p>
                                        <div className="hero__btn" data-animation="fadeInLeft" data-delay=".8s" data-duration="2000ms">
                                            <a href="industries.html" className="btn hero-btn">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div className="col-xl-3 col-lg-3 col-md-4 col-sm-4 d-none d-sm-block">
                                    <div className="hero__img" data-animation="bounceIn" data-delay=".4s">
                                        <img src={watch} alt="" className=" heartbeat">
                                        </img>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
            <div className="video-area">
                <div className="container-fluid">
                    <div className="row align-items-center">
                        <div className="col-lg-12">
                        <div className="video-wrap">
                            <div className="play-btn "><a className="popup-video" href="https://www.youtube.com/watch?v=KMc6DyEJp04"><i className="fas fa-play"></i></a></div>
                        </div>
                        </div>
                    </div>
                    <div className="thumb-content-box">
                        <div className="thumb-content">
                            <h3>Next Video</h3>
                            <a href="#"> <i className="flaticon-arrow"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        );
    }
}


export default Home;