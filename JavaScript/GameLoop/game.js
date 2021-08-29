// Main variables
let DEBUG = true;
let canvas;
let context;
let cW;
let cH;

// FPS
let secondsPassed;
let oldTimeStamp;
let fps;

let dragging = false;

function mMove(e) {
  'use strict';

  if (dragging) {
    point.pX = e.offsetX * cW / canvas.clientWidth | 0;
    point.pY = e.offsetY * cH / canvas.clientHeight | 0;
  };
}

function mDown(e) {
  'use strict';

  dragging = true;
}

function mUp(e) {
  'use strict';

  dragging = false;
}

function clearContext() {
  'use strict';

  context.fillStyle = '#b27e56';
  context.fillRect(0, 0, cW, cH);
}

// Init
window.onload = function() {
  'use strict';

  canvas = document.getElementById('game');
  context = canvas.getContext('2d');
  cW = canvas.width;
  cH = canvas.height;

  canvas.style.height = window.innerHeight + "px";
  if (DEBUG) {
    console.log('Canvas set size to ' + window.innerHeight + 'px');
    console.log(canvas.getBoundingClientRect());
  };

  canvas.addEventListener('mousedown', mDown, false);
  canvas.addEventListener('mouseup', mUp, false);
  canvas.addEventListener('mousemove', mMove, false);

  canvas.addEventListener('touchstart', mDown, false);
  canvas.addEventListener('touchend', mUp, false);
  canvas.addEventListener('touchmove', mMove, false);

  window.requestAnimationFrame(gameLoop);
};

window.addEventListener('resize', function() {
  'use strict';

  let canvas = document.getElementById('game');
  canvas.style.height = window.innerHeight + "px";

  if (DEBUG) {
    console.log('Canvas resized to ' + window.innerHeight + 'px');
    console.log(canvas.getBoundingClientRect());
  };
}, true);

// GameLoop
function gameLoop(timeStamp) {
  'use strict';

  // fps counter
  secondsPassed = (timeStamp - oldTimeStamp) / 1000;
  oldTimeStamp = timeStamp;
  fps = Math.round(1 / secondsPassed);
  // end fps counter

  update();
  draw();

  if (DEBUG) {
    context.font = '15px Arial';
    context.fillStyle = '#101024';
    context.fillText('FPS: ' + fps, 10, 20);
  };

  window.requestAnimationFrame(gameLoop);
}

function update() {
  'use strict';

  //
}

function draw() {
  'use strict';

  clearContext();
}
