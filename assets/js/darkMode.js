const darkToggleMap = { "false": true, "true": undefined, undefined: false };
const prefersDarkScheme =
    window.matchMedia("(prefers-color-scheme: dark)").matches;
function darkMode(state) {
  document.body.classList.toggle("light-mode", !state);
  document.body.classList.toggle("dark-mode", state);
  try { darkCharts(state); } catch (e) { }
}
function toggleDarkMode() {
  var newDark = darkToggleMap[localStorage.dark];
  if (newDark !== undefined) {
    localStorage.dark = newDark.toString();
  } else {
    delete localStorage.dark;
  }
  darkMode(newDark === undefined ? prefersDarkScheme : newDark);
  document.getElementById("dark-toggle")
          .classList.toggle("disable", newDark === undefined);
}
const dark =
    (!("dark" in localStorage) && prefersDarkScheme)
    || (localStorage.dark === "true");
document.getElementById("dark-toggle")
        .classList.toggle("disable", !("dark" in localStorage));
darkMode(dark);