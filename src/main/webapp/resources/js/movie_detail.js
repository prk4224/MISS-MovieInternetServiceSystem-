const slides = document.querySelector('.slides');
const slideImg = document.querySelectorAll('.slides li');
let currentIdx = 0;
const slideCount = slideImg.length;
const prev = document.querySelector('#prev');
const next = document.querySelector('#next');
const slideWidth = 200;
const slideMargin = 50;

slides.getElementsByClassName.width = (slideWidth + slideMargin) * slideCount + 'px';

function moveSlide(num){
    slides.style.left = -num * 470 + 'px';
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

// 좋아요 기능 구현중/..
//const like1 = document.querySelector('.like1');
//const like2 = document.querySelector('.like2');

//like1.addEventListener('click', function(){
//    
//    if(like1.getAttribute('class') == 'like1 on'){
//        like1.setAttribute('class', 'like1 off');
//    }else if(like1.getAttribute('class') == 'like1 off'){
//        like1.setAttribute('class', 'like1 on');
//    }
//});
//like2.addEventListener('click', function(){
//	
//	if(like2.getAttribute('class') == 'like2 on'){
//		like2.setAttribute('class', 'like2 off');
//	}else if(like2.getAttribute('class') == 'like2 off'){
//		like2.setAttribute('class', 'like2 on');
//	}
//})