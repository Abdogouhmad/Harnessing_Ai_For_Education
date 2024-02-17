# Colors
RED=\033[0;31m
GREEN=\033[0;32m
MAGENTA=\033[0;35m
NC=\033[0m # No Color

# Default program
PROGRAM = main.tex

# @rm -f *.aux *.log *.out *.toc *.xdv *.fls *.fdb_latexmk  *.bbl *.blg  *.bcf *.xml >/dev/null 2>&1

# Compiler
CC = latexmk
XFLAGS = -f  -lualatex -halt-on-error
# BIB = biber
#BIBPRO = simple.bib
# Usage: make custom_build PROGRAM=<custom_program.tex>
build: $(PROGRAM)
	@printf "${MAGENTA}Building custom program...${NC}\n"
	@$(CC) $(XFLAGS) $(PROGRAM)
	# @$(BIB) main 
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Custom build completed${NC}\n"; \
	else \
		printf "${RED}Error in custom build!${NC}\n"; \
	fi

clean: 
	@printf "${RED}Cleaning...${NC}\n"
	@latexmk -c >/dev/null 2>&1
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Done!${NC}\n"; \
		sleep 1; \
		clear; \
	else \
		printf "${RED}Error!${NC}\n"; \
	fi

all: build clean

pdf:
	@printf "${MAGENTA}Remove The PDF...${NC}\n"
	@rm -f *.pdf >/dev/null 2>&1
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Done!${NC}\n"; \
	else \
		printf "${RED}Error!${NC}\n"; \
	fi
