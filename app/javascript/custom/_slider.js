var rangeSlider = function(){

    // var slider = $('.range-slider'),
        const range = document.querySelector('.range-slider__range');
        const value = document.querySelector('.range-slider__value');

        range.addEventListener("input", (event) => {
          value.innerText = range.value;
        }); 
  };
  
  export{rangeSlider}