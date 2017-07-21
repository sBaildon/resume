BUILD_DIR=_build
SOURCE=resume.tex

all: $(BUILD_DIR)/resume.pdf

$(BUILD_DIR)/resume.pdf: $(SOURCE)
	mkdir -p $(BUILD_DIR)
	pdflatex \
		-output-directory=$(BUILD_DIR) \
		-output-formt=pdf \
		-halt-on-error \
		$(SOURCE)

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)

