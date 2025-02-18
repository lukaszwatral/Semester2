n = 1:20

an = (2^n)+1
#an[15]

#mean(an)
#sd(an)
i = sum(ifelse((an%%3)==0 & (an%%7)==0, 1, 0)) 