BLASR=blasr/common
LINKS= -lz -lpthread
BINARIES=screenInversions

all: $(BINARIES)

screenInversions: ScreenInversions.cpp InversionAlign.h
	g++ -O3 $< -o $@ -I $(BLASR) -lpthread

clean:
	rm -f $(BINARIES)
