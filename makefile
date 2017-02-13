compile:
	coffee --compile --output . coffee
do: compile
	npm run test
clean:
	rm *.js
