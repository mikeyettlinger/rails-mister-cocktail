import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Welcome to My Bar", "Let's Get Drunk", "What Would You Like?"],
    typeSpeed: 100,
    loop: false
  });
}

export { loadDynamicBannerText };
