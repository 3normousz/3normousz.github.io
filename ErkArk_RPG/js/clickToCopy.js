function copyToClipBoard() {
    var copyText = document.getElementById("serverIP");
    copyText.select();
    document.execCommand("copy");
  }