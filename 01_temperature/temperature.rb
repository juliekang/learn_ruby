def ftoc(tempf)
  tempc = (tempf - 32.0) * 5.0 / 9.0
  tempc
end

def ctof(tempc)
  tempf = (tempc * 9.0 / 5.0) + 32.0
  tempf
end