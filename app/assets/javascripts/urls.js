window.onload = function () {
  var copyToClipboardButton = document.getElementById('url-details__copy')
  copyToClipboardButton && copyToClipboardButton.addEventListener('click', function (target) {
    var shortenUrlInput = document.getElementById('url-details__input')
    shortenUrlInput.select()
    document.execCommand('copy')
    copyToClipboardButton.innerText = 'Copied!'
  })
}
