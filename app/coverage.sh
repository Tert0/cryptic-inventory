#!/bin/sh

if coverage run -m unittest discover -v tests
then
    coverage xml
	coverage report
	coverage erase
else
	coverage erase
	exit 1
fi

