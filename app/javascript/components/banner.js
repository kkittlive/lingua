import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find your local language tutor"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
