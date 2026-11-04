BUILD_DIR ?= ./build
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
default: build-sheets

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

.PHONY: help
help:
	@printf '%s\n' \
		'Usage:' \
		'  make                             Build all sheets (default)' \
		'  make build-sheet SHEET=<name>    Build one sheet' \
		'  make build-sheets                Build all sheets' \
		'  make clean                       Remove build output' \
		'  make help                        Show this help message' \
		'  make list-sheets                 List available sheets' \
		''
	@printf 'Available sheets:\n'
	@printf '  %s\n' $(SHEETS)

.PHONY: list-sheets
list-sheets:
	@printf '%s\n' $(SHEETS)
