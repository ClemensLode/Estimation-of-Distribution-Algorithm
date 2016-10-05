NAME=eda9
OBJ=parameter.o result.o test.o individual.o nqueens_individual.o onemax_individual.o onemax2_individual.o haystack_individual.o $(NAME).o

CPPFLAGS =
FLAGS = -pg -O3 -pipe -ftracer -fmerge-all-constants -ffast-math -march=pentium4 -fmove-all-movables -fno-math-errno -funsafe-math-optimizations -ffinite-math-only -fno-trapping-math #--param max-crossjump-edges=2000 --param max-gcse-memory=209715200 --param max-gcse-passes=40 --param max-pending-list-length=1000 --param max-delay-slot-insn-search=2000 --param max-delay-slot-live-search=4000
#FLAGS = -O0 -pipe
#FLAGS = -fno-builtin -g3 -ggdb3 -ansi -Wall -W -Wmissing-braces -Wredundant-decls -Wundef -Wunused -Wconversion -Woverloaded-virtual -Wmissing-noreturn -Winline -Wdisabled-optimization -Wsign-promo -Wwrite-strings -Wlong-long -Woverloaded-virtual -Wfloat-equal -Wreturn-type -Wparentheses -Wchar-subscripts -Wimplicit  -Wtrigraphs  -Wendif-labels -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings -Wshadow 
#-Weffc++ 
#-pedantic-errors
#-Wold-style-cast
#-Wswitch-enum -Wpadded -Waggregate-return -Wunreachable-code -Wswitch -Wswitch-default 

#-fmerge-all-constants --param max-crossjump-edges=2000 --param max-gcse-memory=209715200 --param max-gcse-passes=40 --param max-pending-list-length=1000 --param max-delay-slot-insn-search=2000 --param max-delay-slot-live-search=4000
#-ffast-math
#-enable-stack-protector

CXXFLAGS = $(FLAGS) 
CXX = g++
INCLUDES =  

#CXXFLAGS = $(FLAGS) $(INCLUDES)
#CXX = g++
#LIBRARIES = $(INCLUDES)

.SUFFIXES: .o .cpp
release: $(OBJ)
	$(CXX) $(CXXFLAGS) -o $(NAME) $(INCLUDES) $(OBJ)

clean:
	@rm -vf ./*.o
	@rm -vf $(NAME)
	@echo "done."
