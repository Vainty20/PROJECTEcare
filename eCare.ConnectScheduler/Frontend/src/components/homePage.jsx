import React, { Component } from "react";
import DOCTOR from "./photos/bg03.jpg";
import HOSPITAL from "./photos/bg02.jpg";
import TREATMENT from "./photos/bg01.jpg";
import "./homePage.css";

class HomePage extends Component {
  componentDidMount() {
    this.showSlides(0);
    this.flag = 0;
  }

  componentWillUnmount() {
    this.showSlides(0);
    this.flag = 1;
  }
  showSlides = (slideIndex) => {
    if (this.flag) {
      // console.log("exit");
      return;
    }
    var i;
    var slides = document.getElementsByClassName("slide");
    for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
      slideIndex = 1;
    }
    slides[slideIndex - 1].style.display = "block";

    setTimeout(() => {
      this.showSlides(slideIndex);
    }, 5000); // Change image every 2 seconds
  };
  render() {
    return (
      <div id="carousel">
        <div className="slides">
          <div className="slide">
            <img src={DOCTOR} alt="doc" />
            <h1 className="text">"Put your health first and book online."</h1>
          </div>
          <div className="slide">
            <img src={HOSPITAL} alt="hospital" />
            <h1 className="text">Book Appointments 24/7..!</h1>
          </div>
          <div className="slide">
            <img src={TREATMENT} alt="treatment" />
            <h1 className="text">Choose the best from the best...</h1>
          </div>
        </div>
      </div>
    );
  }
}

export default HomePage;
