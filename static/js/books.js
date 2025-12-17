var dlts = {};
    document.querySelector("body").classList.add("io-loading");
    dlts.$v = document.querySelector("iframe.viewer");
    dlts.$header = document.querySelector(".contain-header");
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
        if (dlts.p !== dlts.$v.dataset.sequence) {
          dlts.$v.src = dlts.$v.src.replace(/\/([0-9]+)/, "/" + dlts.p);
          document.querySelector("body").classList.add("io-loading");
        }
      }
    }
    window.addEventListener("hashchange", hashHandler, false);
    window.addEventListener(
      "message",
      function (event) {
        var data = JSON.parse(event.data);
        try {
          if (data.fire) {
            switch (data.fire) {
              case "viewer:sequence:increase":
              case "viewer:sequence:decrease":
              case "viewer:sequence:change":
                updateWrapperPage(data.message.sequence);
                break;
              case "viewer:loaded":
                document.querySelector("body").classList.remove("io-loading");
                break;
            }
          }
        } catch (e) {
          console.log(e)
        }
      },
      false
    );
    if (window.location.hash) {
      reloadIframe()
    }


