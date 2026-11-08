BUILD_DIR ?= ./build
BUILD_BOOK_DIR := $(BUILD_DIR)/lilypond/book
BUILD_DIST_DIR := $(BUILD_DIR)/dist
BUILD_DIST_MIDI_DIR := $(BUILD_DIST_DIR)/MIDI
BUILD_DIST_SHEETS_DIR := $(BUILD_DIST_DIR)/Sheet Music
BUILD_SHEETS_DIR := $(BUILD_DIR)/lilypond/sheets

SRC_BOOK := src/book/scottjoplin-ragtimes.ly
SRC_SHEETS_DIR := src/sheets

# Discover all .ly files in SRC_SHEETS_DIR and extract the sheet names.
SHEETS := $(patsubst $(SRC_SHEETS_DIR)/%.ly, %, $(wildcard $(SRC_SHEETS_DIR)/*.ly))

LILYPOND ?= lilypond
LILYPOND_VERSION := 2.26.0
LILYPOND_CMD := "$(LILYPOND)" \
	-dwarning-as-error \
	-dno-point-and-click \
	-I "$$(pwd)" \
	-I "$$(pwd)/vendor/lilypond/ekmelily/ly" \
	-I "$$(pwd)/vendor/lilypond/esmuflily/ly"

# Required external commands.
DEPENDENCIES := "$(LILYPOND)" \
	zip \
	sha256sum

# Disable parallel execution, even when make is invoked with -j.
.NOTPARALLEL:

.PHONY: default
default: build-book build-sheets dist

.PHONY: build-book
build-book: check-deps
	@mkdir -p "$(BUILD_BOOK_DIR)"
	@$(LILYPOND_CMD) -o "$(BUILD_BOOK_DIR)" "$(SRC_BOOK)"

.PHONY: build-sheet
build-sheet: check-deps
	$(if $(filter $(SHEET),$(SHEETS)),,$(error Unknown SHEET '$(SHEET)'. Available sheets: $(SHEETS)))
	@mkdir -p "$(BUILD_SHEETS_DIR)"
	@$(LILYPOND_CMD) -o "$(BUILD_SHEETS_DIR)" "$(SRC_SHEETS_DIR)/$(SHEET).ly"

.PHONY: build-sheets
build-sheets: check-deps
	@mkdir -p "$(BUILD_SHEETS_DIR)"
	@$(foreach sheet,$(SHEETS),$(LILYPOND_CMD) -o "$(BUILD_SHEETS_DIR)" "$(SRC_SHEETS_DIR)/$(sheet).ly" &&) :

.PHONY: check-deps
check-deps:
	@printf 'Checking dependencies...\n'

	@status=0; \
	for dependency in $(DEPENDENCIES); do \
		if dependency_path=$$(command -v "$$dependency"); then \
			printf '  ✓ %s found: %s\n' "$$dependency" "$$dependency_path"; \
		else \
			printf '  ✗ %s not found\n' "$$dependency"; \
			status=1; \
		fi; \
	done; \
	\
	version=$$("$$(command -v "$(LILYPOND)")" --version | sed -n '1s/.*LilyPond \([0-9][0-9.]*\).*/\1/p'); \
	if [ "$$version" = "$(LILYPOND_VERSION)" ]; then \
		printf '  ✓ LilyPond version: %s\n' "$$version"; \
	else \
		printf '  ✗ LilyPond version: expected $(LILYPOND_VERSION), got %s\n' "$${version:-unknown}"; \
		status=1; \
	fi; \
	\
	exit "$$status"

.PHONY: clean
clean:
	@rm -rf "$(BUILD_DIR)"

.PHONY: dist
dist: check-deps
	@mkdir -p "$(BUILD_DIST_DIR)"
	@cp "$(BUILD_BOOK_DIR)"/*.pdf "$(BUILD_DIST_DIR)/"

	@mkdir -p "$(BUILD_DIST_SHEETS_DIR)"
	@cp "$(BUILD_SHEETS_DIR)"/*.pdf "$(BUILD_DIST_SHEETS_DIR)/"
	@cd "$(BUILD_DIST_SHEETS_DIR)" && zip -r "../Sheet Music.zip" *.pdf

	@mkdir -p "$(BUILD_DIST_MIDI_DIR)"
	@cp "$(BUILD_SHEETS_DIR)"/*.mid "$(BUILD_DIST_MIDI_DIR)/"
	@cd "$(BUILD_DIST_MIDI_DIR)" && zip -r "../MIDI.zip" *.mid

	@cd "$(BUILD_DIST_DIR)" && \
		find . -type f ! -path './SHA256SUMS' -print0 \
			| LC_ALL=C sort -z \
			| xargs -0 sha256sum \
			| sed 's| \./| |' > SHA256SUMS

.PHONY: help
help:
	@printf '%s\n' \
		'USAGE' \
		'  make                             Build and package the book, all sheet music and MIDI files (default)' \
		'  make build-book                  Build the "Scott Joplin: Ragtimes" book' \
		'  make build-sheet SHEET=<name>    Build one sheet' \
		'  make build-sheets                Build all sheets' \
		'  make check-deps                  Check required dependencies' \
		'  make clean                       Remove build output' \
		'  make dist                        Package existing book, sheet music and MIDI files' \
		'  make help                        Show this help message' \
		'  make list-sheets                 List available sheets' \
		'' \
		'OPTIONS' \
		'  BUILD_DIR=<path>                 Specify the build directory (default: ./build)' \
		'  LILYPOND=<path>                  Specify a LilyPond executable (default: lilypond)' \
		'' \
		'EXAMPLES' \
		'  make LILYPOND=/opt/homebrew/bin/lilypond' \
		'  make build-book LILYPOND=/opt/homebrew/bin/lilypond' \
		'  make build-sheet SHEET=bethena' \
		'' \
		'AVAILABLE SHEETS'
	@printf '  %s\n' $(SHEETS)

.PHONY: list-sheets
list-sheets:
	@printf '%s\n' $(SHEETS)
