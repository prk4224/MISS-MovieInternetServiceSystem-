const slides = document.querySelector('.slides');
const slideImg = document.querySelectorAll('.slides li');
let currentIdx = 0;
const slideCount = slideImg.length;
const prev = document.querySelector('#prev');
const next = document.querySelector('#next');
const slideWidth = 330;
const slideMargin = 50;

slides.getElementsByClassName.width = (slideWidth + slideMargin) * slideCount + 'px';

function moveSlide(num){
    slides.style.left = -num * 690 + 'px';
    currentIdx = num;
    if(currentIdx == 0){
        prev.style.display = 'none';
    }else{
        prev.style.display = 'block';
    }
    if(currentIdx == slideCount - 2){
        next.style.display = 'none';
    }else{
        next.style.display = 'block';
    }
}

prev.addEventListener('click', function(){
    if(currentIdx != 0){
        moveSlide(currentIdx - 1);
    }
});

next.addEventListener('click', function(){
    if(currentIdx != slideCount - 2){
        moveSlide(currentIdx + 1);
    }
})