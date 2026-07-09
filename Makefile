tree:
	find . -maxdepth 3 -type f | sort
check:
	@echo "Repository structure check"
	@test -f README.md
	@test -f CITATION.cff
	@test -f LICENSE
	@test -d papers
	@test -d diagrams
	@test -d mathematics
	@test -d experiments
	@test -d engineering
	@test -d future-research
	@test -d references
	@test -d assets
	@echo "OK"
