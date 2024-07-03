# Colors
RED=\033[0;31m
GREEN=\033[0;32m
MAGENTA=\033[0;35m
NC=\033[0m # No Color

# Default program
PROGRAM = src/main.tex

# Compiler
CC = latexmk
XFLAGS = -pdf -jobname=AI_For_HE -f -lualatex -halt-on-error -bibtex

# Usage: make custom_build PROGRAM=<custom_program.tex>
build: $(PROGRAM)
	@printf "${MAGENTA}Building custom program...${NC}\n"
	@$(CC) $(XFLAGS) $(PROGRAM)
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Custom build completed${NC}\n"; \
	else \
		printf "${RED}Error in custom build!${NC}\n"; \
	fi

clean:
	@printf "${RED}Cleaning...${NC}\n"
	@latexmk -c >/dev/null 2>&1 || true
	@rm -f *.aux *.log *.out *.toc *.xdv *.fls *.fdb_latexmk *.bbl *.blg *.bcf *.xml *.lof *.lot >/dev/null 2>&1 || true
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Done!${NC}\n"; \
	else \
		printf "${RED}Error!${NC}\n"; \
	fi

done:
	@rm -f *.aux *.log *.out *.toc *.xdv *.fls *.fdb_latexmk *.bbl *.blg *.bcf *.xml *.lof *.lot >/dev/null 2>&1 || true

all: build clean done

pdf:
	@printf "${MAGENTA}Removing the PDF...${NC}\n"
	@rm -f AI_For_HE.pdf >/dev/null 2>&1 || true
	@if [ $$? -eq 0 ]; then \
		printf "${GREEN}Done!${NC}\n"; \
	else \
		printf "${RED}Error!${NC}\n"; \
	fi
