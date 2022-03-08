const initCarousel = () => {
  console.log('yeooo');
  const slidePages = document.getElementsByClassName('slide-page');
  const rightArrowEl = document.querySelector('.right-arrow');
  let currentIndex = 0;
  rightArrowEl.addEventListener('click', () => {
    if (currentIndex == slidePages.length - 1) return
    currentIndex++
    slidePages[currentIndex].scrollIntoView()
    console.log('you clicked the right arrow boiiiiiiii', slidePages);
  })

  const leftArrowEl = document.querySelector('.left-arrow');
  leftArrowEl.addEventListener('click', () => {
    if (currentIndex == 0) return
    currentIndex--
    slidePages[currentIndex].scrollIntoView()
    console.log('you clicked the left arrow boiiiiiiii', slidePages);
  })
}

export default initCarousel;
