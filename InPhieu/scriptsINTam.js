﻿function startTimers() { InTimer = window.setInterval("InPhieuTamTinh()", 3e3), InTimer2 = window.setInterval("InPhieu()", 3e3) } function stopTimers() { window.clearInterval(InTimer), InTimer = "", window.clearInterval(InTimer2), InTimer2 = "" } function Leave() { stopTimers() } function InPhieuTamTinh() { PageMethods.InPhieuTamTinh(OnSuccess, OnSuccessError) } function InPhieu() { PageMethods.InPhieu(OnSuccess, OnSuccessError) } function OnSuccess() { } function OnSuccessError() { alert(ref) } window.onbeforeunload = function () { alert("R\u1edcI KH\u1eceI TRANG IN PHI\u1ebeU T\u1ea0M\nB\u1ea0N S\u1ebc B\u1eca L\u1ed6I M\u00c1Y IN"), history.go(0) }, window.onunload = Leave; var InTimer = ""; startTimers()