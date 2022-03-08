const SLIDE_DELAY = 350;
const initCarousel = () => {
  console.log('yeooo');
  const slidePages = document.getElementsByClassName('slide-page');
  const currentPageIndicators = document.getElementsByClassName('o');
  console.log(currentPageIndicators);
  const rightArrowEl = document.querySelector('.right-arrow');
  let prevIndex;
  let currentIndex = 0;
  rightArrowEl.addEventListener('click', () => {
    if (currentIndex == slidePages.length - 1) return
    // remove previous index active class
    prevIndex = currentIndex;
    currentIndex++
    // add to next one active class
    setTimeout(() => {
      currentPageIndicators[prevIndex].classList.remove('active');
      currentPageIndicators[currentIndex].classList.add('active');
    }, SLIDE_DELAY)
    slidePages[currentIndex].scrollIntoView({behavior: 'smooth'});
    console.log('you clicked the right arrow boiiiiiiii', slidePages);
  })

  const leftArrowEl = document.querySelector('.left-arrow');
  leftArrowEl.addEventListener('click', () => {
    if (currentIndex == 0) return
    // remove previous index active class
    prevIndex = currentIndex;
    currentIndex--
    // add to next one active class
    setTimeout(() => {
      currentPageIndicators[prevIndex].classList.remove('active');
      currentPageIndicators[currentIndex].classList.add('active');
    }, SLIDE_DELAY)
    slidePages[currentIndex].scrollIntoView({behavior: 'smooth'})
    console.log('you clicked the left arrow boiiiiiiii', slidePages);
  })
}

export default initCarousel;
