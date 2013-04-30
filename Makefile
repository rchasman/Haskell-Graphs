HC = ghc
HCFLAGS =
EXECUTABLES = main

main: Main.hs Graph.hs GraphGen.hs GraphPhysics.hs GraphDraw.hs Point.hs
	$(HC) $(HCFLAGS) main.hs

.PHONY : all
all: $(EXECUTABLES)

.PHONY : clean
clean:
	/bin/rm -f *.hi *.o $(EXECUTABLES)
