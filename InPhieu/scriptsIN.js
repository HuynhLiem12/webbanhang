function startTimers(){InTimer=window.setInterval("InPhieu()",1e4)}function stopTimers(){window.clearInterval(InTimer),InTimer=""}function Leave(){stopTimers()}function InPhieu(){PageMethods.InPhieu(OnSuccess,OnSuccessError)}function OnSuccess(){}function OnSuccessError(){alert(ref)}var InTimer="";startTimers()