# Colors
RED=\033[0;31m
GREEN=\033[0;32m
MAGENTA=\033[0;35m
NC=\033[0m # No Color

# Default program
PROGRAM = main.tex

# Compiler
CC = xelatex
XFLAGS = -file-line-error
BIB = bibtex
BIBPRO = ts

# Usage: make custom_build PROGRAM=<custom_program.tex>
build: $(PROGRAM)
	@printf "${MAGENTA}Building custom program...${NC}\n"
	@$(CC) $(XFLAGS) $(PROGRAM) 
	@$(CC) $(XFLAGS) $(PROGRAM) > /dev/null 2>&1
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Custom build completed${NC}\n"; \
	else \
		printf "${RED}Error in custom build!${NC}\n"; \
	fi


clean: build
	@printf "${RED}Cleaning...${NC}\n"
	@rm -f *.aux *.log *.out *.toc *.xdv *.fls *.fdb_latexmk  *.bbl *.blg  *.bcf *.xml >/dev/null 2>&1
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Done!${NC}\n"; \
		sleep 1; \
		clear; \
	else \
		printf "${RED}Error!${NC}\n"; \
	fi


pdf:
	@printf "${MAGENTA}Remove The PDF...${NC}\n"
	@rm -f *.pdf >/dev/null 2>&1
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Done!${NC}\n"; \
	else \
		printf "${RED}Error!${NC}\n"; \
	fi
