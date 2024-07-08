$(".menu > li").mouseover(function () {
    $(this).children(".sub").stop().slideDown();
});

$(".menu > li").mouseleave(function () {
    $(this).children(".sub").stop().slideUp();
});

document.addEventListener('DOMContentLoaded', () => {
    const slides = document.querySelector('.slides');
    const images = document.querySelectorAll('.slides img');

    let index = 0;
    const totalImages = images.length;

    function showSlide(idx) {
        if (idx >= totalImages) {
            index = 0;
        } else if (idx < 0) {
            index = totalImages - 1;
        } else {
            index = idx;
        }
        slides.style.transform = `translateX(${-index * 100}%)`;
    }
    setInterval(() => {
        showSlide(index + 1);
    }, 3000);
});

document.addEventListener('DOMContentLoaded', () => {
    slides = document.querySelector('.main-slides');
    images = document.querySelectorAll('.main-slides img');
    prevButton = document.querySelector('.prev');
    nextButton = document.querySelector('.next');
    let index = 0;
    totalImages = images.length;

    function showSlide(idx) {
        if (idx >= totalImages) {
            index = 0;
        } else if (idx < 0) {
            index = totalImages - 1;
        } else {
            index = idx;
        }
        slides.style.transform = `translateX(${-index * 100}%)`;
    }

    prevButton.addEventListener('click', () => {
        showSlide(index - 1);
    });

    nextButton.addEventListener('click', () => {
        showSlide(index + 1);
    });
    setInterval(() => {
        showSlide(index + 1);
    }, 9000);
});