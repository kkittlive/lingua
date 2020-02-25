
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const navbar_content = document.querySelector('.nav-link');
  const logo = document.querySelector('.logo');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        console.log(navbar_content);
        navbar.classList.add('navbar-lewagon-white');
        navbar_content.classList.add('nav-item-black');
        logo.classList.add('logo-black');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        navbar_content.classList.remove('nav-item-black');
        logo.classList.remove('logo-black');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
