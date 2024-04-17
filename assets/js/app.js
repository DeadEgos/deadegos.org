// If you want to use Phoenix channels, run `mix help phx.gen.channel`
// to get started and then uncomment the line below.
// import "./user_socket.js"

// You can include dependencies in two ways.
//
// The simplest option is to put them in assets/vendor and
// import them using relative paths:
//
//     import "../vendor/some-package.js"
//
// Alternatively, you can `npm install some-package --prefix assets` and import
// them using a path starting with the package name:
//
//     import "some-package"
//

// Include phoenix_html to handle method=PUT/DELETE in forms and buttons.
import "phoenix_html"
// Establish Phoenix Socket and LiveView configuration.
import {Socket} from "phoenix"
import {LiveSocket} from "phoenix_live_view"
import topbar from "../vendor/topbar"

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content")
let liveSocket = new LiveSocket("/live", Socket, {params: {_csrf_token: csrfToken}})

// Show progress bar on live navigation and form submits
topbar.config({barColors: {0: "#29d"}, shadowColor: "rgba(0, 0, 0, .3)"})
window.addEventListener("phx:page-loading-start", _info => topbar.show(300))
window.addEventListener("phx:page-loading-stop", _info => topbar.hide())

// connect if there are any LiveViews on the page
liveSocket.connect()

// expose liveSocket on window for web console debug logs and latency simulation:
// >> liveSocket.enableDebug()
// >> liveSocket.enableLatencySim(1000)  // enabled for duration of browser session
// >> liveSocket.disableLatencySim()
window.liveSocket = liveSocket


// scrolling for the nav
let lastScrollTop = 0;
const navElement = document.getElementById('main_nav');

window.addEventListener('scroll', function() {
  // Get the current scroll position
  let scrollTop = window.pageYOffset || document.documentElement.scrollTop;
  
  // Check if the current scroll is up or down compared to the last scroll position
  if (scrollTop > lastScrollTop){
    // Scrolling down
    navElement.classList.add('-translate-y-80');
    navElement.classList.remove('-translate-y-0');

  } else {
    // Scrolling up
    navElement.classList.remove('-translate-y-80');
    navElement.classList.add('-translate-y-0');
  }
  // Update the last scroll position to the current position
  lastScrollTop = scrollTop;
});