xc = c(0.5, 1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5)
w = c(11, 42, 65, 59, 19, 9, 5, 7)
statopiswaz=function(xc, w){data.frame(srednia=weighted.mean(xc, w), odschylstand=sqrt(weighted.mean((xc-weighted.mean(xc,w))^2, w)))}
statopiswaz(xc, w)