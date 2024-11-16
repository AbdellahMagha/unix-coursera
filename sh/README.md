# Makefile to generate README.md

# Define variables
SCRIPT = guessinggame.sh
README = README.md
DATE = $(shell date "+%Y-%m-%d %H:%M:%S")
LINES = $(shell wc -l < $(SCRIPT))

# Target to create the README.md
all: $(README)

$(README): 
	echo "# Guessing Game" > $(README)
	echo "Date and Time: $(DATE)" >> $(README)
	echo "Number of lines in $(SCRIPT): $(LINES)" >> $(README)

# Clean up
clean:
	rm -f $(README)
