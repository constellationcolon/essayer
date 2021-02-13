function expandRight() { this.style.width = this.value.length + "ch"; }
function expandDown() {
  this.style.height = "auto";
  this.style.height = this.scrollHeight + "px";
  this.scrollTop = this.scrollHeight;
  window.scrollTo(window.scrollLeft,(this.scrollTop+this.scrollHeight));
}

var elemsER = document.querySelectorAll('.expand-right');
for ( var i = 0; i < elemsER.length; i++ ) {
  e = elemsER[i];
  e.style.width = e.placeholder.length + "ch";
  e.addEventListener("input", expandRight);
}

var elemsED = document.querySelectorAll('.expand-down');
for ( var i = 0; i < elemsED.length; i++ ) {
  e = elemsED[i]
  e.addEventListener("input", expandDown);
}

function redirectFn() {
    if ( submitted ) { window.location = '/essayer/contacted.html' };
}
var submitted = false;
var redirectIframe = document.createElement("iframe");
redirectIframe.setAttribute("name", "redirect");
redirectIframe.setAttribute("onload", "redirectFn()");
document.body.appendChild(redirectIframe);
