BUILD_DIR ?= ./build
BUILD_DIST_DIR := $(BUILD_DIR)/dist
BUILD_DIST_MIDI_DIR := $(BUILD_DIST_DIR)/MIDI
BUILD_DIST_SHEETS_DIR := $(BUILD_DIST_DIR)/Sheet Music
BUILD_SHEETS_DIR := $(BUILD_DIR)/lilypond/sheets

SRC_SHEETS_DIR := src/sheets

# Discover all .ly files in SRC_SHEETS_DIR and extract the sheet names.
SHEETS := $(patsubst $(SRC_SHEETS_DIR)/%.ly, %, $(wildcard $(SRC_SHEETS_DIR)/*.ly))

LILYPOND_CMD := lilypond \
	-dwarning-as-error \
	-dno-point-and-click \
	-I "$$(pwd)" \
	-I "$$(pwd)/vendor/lilypond/ekmelily/ly" \
	-I "$$(pwd)/vendor/lilypond/esmuflily/ly"

# Disable parallel execution, even when make is invoked with -j.
.NOTPARALLEL:

.PHONY: default
default: dist

.PHONY: build-sheet
build-sheet:
	$(if $(filter $(SHEET),$(SHEETS)),,$(error Unknown SHEET '$(SHEET)'. Available sheets: $(SHEETS)))
	@mkdir -p "$(BUILD_SHEETS_DIR)"
	@$(LILYPOND_CMD) -o "$(BUILD_SHEETS_DIR)" "$(SRC_SHEETS_DIR)/$(SHEET).ly"

.PHONY: build-sheets
build-sheets:
	@mkdir -p "$(BUILD_SHEETS_DIR)"
	@$(foreach sheet,$(SHEETS),$(LILYPOND_CMD) -o "$(BUILD_SHEETS_DIR)" "$(SRC_SHEETS_DIR)/$(sheet).ly" &&) :

.PHONY: clean
clean:
	@rm -rf "$(BUILD_DIR)"

.PHONY: dist
dist: build-sheets
	@mkdir -p "$(BUILD_DIST_SHEETS_DIR)"
	@cp "$(BUILD_SHEETS_DIR)"/*.pdf "$(BUILD_DIST_SHEETS_DIR)/"
	@cd "$(BUILD_DIST_SHEETS_DIR)" && zip -r "../Sheet Music.zip" *.pdf

	@mkdir -p "$(BUILD_DIST_MIDI_DIR)"
	@cp "$(BUILD_SHEETS_DIR)"/*.mid "$(BUILD_DIST_MIDI_DIR)/"
	@cd "$(BUILD_DIST_MIDI_DIR)" && zip -r "../MIDI.zip" *.mid

.PHONY: help
help:
	@printf '%s\n' \
		'Usage:' \
		'  make                             Build and package all sheets (default)' \
		'  make build-sheet SHEET=<name>    Build one sheet' \
		'  make build-sheets                Build all sheets' \
		'  make clean                       Remove build output' \
		'  make dist                        Build and package all sheets' \
		'  make help                        Show this help message' \
		'  make list-sheets                 List available sheets' \
		''
	@printf 'Available sheets:\n'
	@printf '  %s\n' $(SHEETS)

.PHONY: list-sheets
list-sheets:
	@printf '%s\n' $(SHEETS)
