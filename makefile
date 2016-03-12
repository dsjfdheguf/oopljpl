clean:
	cd examples; make clean
	@echo
	cd exercises; make clean

config:
	git config -l

init:
	touch README
	git init
	git add README
	git commit -m 'first commit'
	git remote add origin git@github.com:gpdowning/oopljpl.git
	git push -u origin master

pull:
	@rsync -r -t -u -v --delete             \
    --include "Hello.py"                    \
    --include "Assertions.py"               \
    --include "UnitTests1.py"               \
    --include "UnitTests2.py"               \
    --include "UnitTests3.py"               \
    --include "Coverage1.py"                \
    --include "Coverage2.py"                \
    --include "Coverage3.py"                \
    --include "Exceptions.py"               \
    --include "Types.py"                    \
    --include "Operators.py"                \
    --exclude "*"                           \
    ../../../examples/python/ examples/
	@rsync -r -t -u -v --delete             \
    --include "IsPrime1.py"                 \
    --include "IsPrime1T.py"                \
    --include "FactorialT.py"               \
    --exclude "*"                           \
    ../../../exercises/python/ exercises/

#    --include "IsPrime2.py"                 \
#    --include "IsPrime2T.py"                \
#    --include "Factorial.py"                \
#    --include "Variables.py"                \
#    --include "Iteration.py"                \
#    --include "Yield.py"                    \
#    --include "Lambda.py"                   \
#    --include "Comprehensions.py"           \
#    --include "Iterables.py"                \
#    --include "CommandLine.py"              \
#    --include "FileInputOutput.py"          \
#    --include "FormattedOutput.py"          \
#    --include "GlobalVariables.py"          \
#    --include "ClassVariables.py"           \
#    --include "InstanceVariables.py"        \
#    --include "Closures.py"                 \
#    --include "Methods.py"                  \
#    --include "FunctionKeywords.py"         \
#    --include "FunctionDefaults.py"         \
#    --include "FunctionUnpacking.py"        \
#    --include "FunctionTuple.py"            \
#    --include "FunctionDict.py"             \
#    --include "Inheritance.py"              \
#    --include "Sequences.py"                \
#    --include "Lists.py"                    \
#    --include "Strings.py"                  \
#    --include "RegExps.py"                  \
#    --include "Sets.py"                     \
#    --include "Dicts.py"                    \
#
#    --include "Reduce.py"                   \
#    --include "ReduceT.py"                  \
#    --include "Map.py"                      \
#    --include "MapT.py"                     \
#    --include "RMSE.py"                     \
#    --include "RMSET.py"                    \
#    --include "Subtract.py"                 \
#    --include "SubtractT.py"                \
#    --include "StDev.py"                    \
#    --include "StDevT.py"                   \
#    --include "RangeIterator.py"            \
#    --include "RangeIteratorT.py"           \
#    --include "Range.py"                    \
#    --include "RangeT.py"                   \
#    --include "Complex.py"                  \
#    --include "ComplexT.py"                 \
#    --include "Reduce2.py"                  \
#    --include "Reduce2T.py"                 \
#    --include "Map2.py"                     \
#    --include "Map2T.py"                    \
#    --include "FortyTwo.py"                 \
#    --include "FortyTwoT.py"                \
#    --include "CollatzT.py"                 \

push:
	make clean
	@echo
	git add .travis.yml
	git add examples
	git add exercises
	git add makefile
	git commit -m "another commit"
	git push
	git status

status:
	make clean
	@echo
	git branch
	git remote -v
	git status

test:
	cd examples; make test
	@echo
	cd exercises; make test
