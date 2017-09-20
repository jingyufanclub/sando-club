window.onload = function (){

  const tl = new TimelineMax();
  const main = document.querySelector('.welcome');
  const tagline = document.querySelector('#club-tagline');
  const signup = document.querySelector('#signup-link');
  const conjuction = document.querySelector('#conjuction');
  const login = document.querySelector('#login-link');
  const mascot = document.querySelector('#mascot');
  const x = window.innerWidth;
  const y = window.innerHeight;

  tl.set(main, {autoAlpha:1})
    .from(tagline, 0.7, { ease: Bounce.easeOut, y: -y })
    .from(signup, 0.8, { x: -x }, '-=0.2')
    .from(conjunction, 0.2, { scale: 0})
    .from(login, 0.4, { x: x })
    .fromTo(mascot, 4.5, { x: -x/2-200 }, { x: x/2+200, rotation: 360, ease: SteppedEase.config(16), repeat: -1, yoyo: true }, '+=0.2');
}
