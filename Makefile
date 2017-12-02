#all:
#	export LD_LIBRARY_PATH="."
#	g++ -o SCBT_Edge SalientClosedBoundaryTracking_Edge.cpp EDLib.a libopencv_imgproc.so.2.4.5 libopencv_core.so.2.4.5


#clean:
#	rm -rf SCBT_Edge core


# definitions
objRRC = SCBT_Edge.o CommonFunctions.o
srcRRC = SCBT_Edge.cpp CommonFunctions.cpp

#linker to use
lnk = g++
#compiler to use
cc = gcc
#uncomment for debugging
dbg = -g -Wall

# MAKE it happen

all: SCBT_Edge

SCBT_Edge: $(objRRC)
	$(lnk) $(dbg) -o SCBT_Edge $(objRRC) EDLib.a `pkg-config --libs opencv`

$(objRRC): $(srcRRC)
	$(cc) $(dbg) `pkg-config --cflags opencv` -c $(srcRRC)

clean:
	@rm -f $(objRRC) SCBT_Edge
