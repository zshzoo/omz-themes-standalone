.DEFAULT_GOAL := help

.PHONY: prompts
prompts:
	./bin/gen_prompt_setup_files.zsh

.PHONY: help
help:
	@echo "Usage:  make <command>"
	@echo ""
	@echo "Commands:"
	@echo "  help     shows this message"
	@echo "  prompts  make prompt setup files"
