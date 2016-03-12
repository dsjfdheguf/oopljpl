FILES :=           \
    IsPrime1T      \
    IsPrime2T      \
    FactorialT     \

#    ReduceT        \
#    MapT           \
#    RMSET          \
#    SubtractT      \
#    StDevT         \
#    RangeIteratorT \
#    RangeT         \
#    ComplexT       \
#    Reduce2T

%.pyx: %.py
	coverage run --branch ./$<
	coverage report -m

clean:
	rm -f  .coverage
	rm -f  *.pyc
	rm -rf __pycache__

test: $(FILES:=.pyx)
