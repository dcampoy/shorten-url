window.onload = function () {
  const copyToClipboardButton = document.getElementById('url-details__copy')
  copyToClipboardButton && copyToClipboardButton.addEventListener('click', function (target) {
    const shortenUrlInput = document.getElementById('url-details__input')
    shortenUrlInput.select()
    document.execCommand('copy')
    copyToClipboardButton.innerText = 'Copied!'
  })
}
