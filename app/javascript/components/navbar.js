
const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon.scroll');
  const navbar_contents = document.querySelectorAll('.nav-link.scroll');
  const logo = document.querySelector('.logo.scroll');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        navbar.classList.add('navbar-lewagon-white');
        logo.classList.add('logo-black');
        navbar_contents.forEach(content => content.classList.add('nav-item-black'));
      } else {
        navbar.classList.remove('navbar-lewagon-white');
        logo.classList.remove('logo-black');
        navbar_contents.forEach(content => content.classList.remove('nav-item-black'));
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
