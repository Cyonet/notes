/**
 * 扩展requestAnimationFrame 扩展raf使其tab页隐藏后还能正常执行
 */
const root = window;
const setTimeout = root.setTimeout;
const clearTimeout = root.clearTimeout;
const requestAnimationFrame = root.requestAnimationFrame;
const cancelAnimationFrame = root,cancelAnimationFrame;
const ANIMATION_FRAME_TIMEOUT = 100;
let rAFTimeoutID;
let rAFID;
export default function raf(callback){
    rAFID = requestAnimationFrame(function(){
       clearTimeout(rAFTimeoutID);
       callback();
    });
    rAFTimeoutID = setTimeout(function(){
      cancelAnimationFrame(rAFID);
      callback();
    }, ANIMATION_FRAME_TIMEOUT)
}