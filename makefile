all: run

compile:
	fst-compiler-utf8 $(FILE) exe.a

run: compile 
	fst-mor exe.a

run2: compile
	fst-infl exe.a $(FILE2) >> result.txt


clean:
	rm exe.a


