export function getServerDate() {
  let xhr = null;
  if (window.XMLHttpRequest) {
    xhr = new window.XMLHttpRequest();
  } else {
    xhr = new ActiveObject("Microsoft")
  }
  // ie 使用get无法获取date
  xhr.open('HEAD', '/', false);
  xhr.send(null);
  const date = xhr.getResponseHeader('date');
  return date ? new Date(date) : new Date();
}
