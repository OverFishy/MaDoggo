const SLIDE_DELAY = 350;

const initCarousel = () => {
  const addDogContainer = document.querySelector('.add-dog-container')
  if (!addDogContainer) {
    return
  }

  const slidePages = document.getElementsByClassName('slide-page');
  const currentPageIndicators = document.getElementsByClassName('o');
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
