var dlts = {};
document.querySelector("body").classList.add("io-loading");
dlts.$v = document.querySelector("iframe.viewer");
dlts.$header = document.querySelector(".contain-header");
if (!window.location.hash) {
  window.location.hash = 1;
}

function updateWrapperPage(p) {
  window.location.hash = p;
  dlts.$v.dataset.sequence = p;
}

function hideSiblings() {
  dlts.$header.classList.add("hidden");
}

function showSiblings() {
  dlts.$header.classList.remove("hidden");
}

function hashHandler() {
  reloadIframe();
}

function reloadIframe() {
  if (window.location.hash) {
    dlts.p = window.location.hash.substring(1);
    //console.log("dlts.p " + dlts.p);
    //console.log("dlts.$v.dataset.sequence " + dlts.$v.dataset.sequence);
    if (dlts.p !== dlts.$v.dataset.sequence) {
      //console.log("not same");
      dlts.$v.src = dlts.$v.src.replace(/\/([0-9]+)/, "/" + dlts.p);
      document.querySelector("body").classList.add("io-loading");
    } 
  }
}
window.addEventListener('hashchange', hashHandler, false);

window.addEventListener("message", function(event) {
  if (event.origin !== dlts.$v.dataset.baseviewerurl) return;
  var thisData = decodeURIComponent(event.data);
  //console.log('thisData received:  ' + thisData);
  var vars = thisData.split("&");
  var params = {};
  for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    params[pair[0]] = decodeURIComponent(pair[1]);
  }
  var result = JSON.parse(params.message);
  if (result.fire) {
    //console.log("Fire! " + result.fire);
    if (result.fire == "button:button-fullscreen:on") {
      hideSiblings();
    } else if (result.fire == "display:load") {
      document.querySelector("body").classList.remove("io-loading");
    } else {
      showSiblings();
    }
  }
  if (typeof result.data !== 'undefined') {
    //console.log("New page number " + result.data.sequence);
    updateWrapperPage(result.data.sequence);
  }
}, false);