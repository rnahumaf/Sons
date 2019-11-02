library(tuneR)
library(seewave)

#make a simple sine wave and play
t = seq(0, 3, 1/8000)                   #times in seconds if sample for 3 seconds at 8000Hz
u = (2^15-1)*sin(2*pi*440*t)            #440 Hz sine wave that lasts t length seconds (here, 3 seconds) 
w = Wave(u, samp.rate = 8000, bit=16)   #make the wave variable 
play(w)                                 #play the wave data by the default player 

s1 <- sin(2*pi*440*seq(0,1,length=8000))# 440 = number of sine waves per whole number
listen(s1, f=8000)  #f = n. of samples  #play 1-column matrix, data.frame, time series or Sample object

# Random noise
s2 <- matrix(rnorm(8000, 0.5, 0.1))
listen(s2, f=8000*1/2)

# Sem vibração, portanto sem som (subida linear no auto-falante)
s3 <- matrix(seq(0, 1, 1/8000))
listen(s3, f=8000*1/2)

# Picos aleatórios
aleat <- sample(c(0,1,2), 8000, prob = c(100, 1,2), replace = T)
s4 <- matrix(aleat)
listen(s4, f=8000*1/2)
