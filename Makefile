splashapp:
	g++ -std=c++0x -o splash Main.cpp ST.cpp Bucket.cpp MHash.cpp /usr/lib/x86_64-linux-gnu/libm.a

splashapp-mac:
	g++ -std=c++0x -o splash Main.cpp ST.cpp Bucket.cpp MHash.cpp

clean:
	rm probe splash *.o
	rm -rf *.dSYM

# this one is for the CLIC lab
probeapp:
	gcc -msse3 -o probe simd_probe.c /usr/lib/x86_64-linux-gnu/libm.a

probeapp-mac:
	gcc -g -msse3 -o probe simd_probe.c


