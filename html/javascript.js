function openWin(url, name) {
  window.open(url, name, '').focus();
  return false;
}

function openIncineratourApp(url, name) {
  var options = 'location=0,statusbar=0,menubar=0,width=400,height=520';
  window.open(url, name, options).focus();
  return false;
}

