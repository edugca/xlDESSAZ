#IBC-Br
series{
	period = 12
	decimals = 2
	format = datevalue
}
transform{ 
    function = log
}
arima{
  model = (1 1 0)(2 1 0)
}
outlier{ 
    span = (2022.Jan, )
	critical = 4.5
	types = all
}
regression{ 
    variables = (lpyear LS2008.Dec AO2018.May AO2020.Mar TC2020.Apr TC2021.Mar)
	user = (seg ter qua qui sex sab)
	usertype = td
	file = 'C:\Users\Eduardo\Google Drive\Meus Projetos\xlDESSAZ\RegressoresDessazIBCBR.txt'
	format = datevalue
}
estimate{ }
x11{ 
	seasonalma = x11default
	calendarsigma = all
	final = user
	save = d11
}