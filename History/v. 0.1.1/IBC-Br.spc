#IBC-Br
transform{ 
    function = log
}
arima{
  model = (2 1 0)(0 1 2)
}
outlier{ 
    span = (2015.Jan, )
}
regression{ 
    variables = (lpyear LS2008.Oct LS2008.Nov TC2008.Dec)
	tcrate = 0.90
	user = (seg ter qua qui sex sab)
	usertype = td
	file = 'C:\Users\Eduardo\Desktop\RJDemetra\RegressoresDessazIBCBR.txt'
	format = datevalue
}
estimate{ }
x11{ 
	seasonalma = x11default
	calendarsigma = all
	final = user
	save=(d11 d12 d13)
}