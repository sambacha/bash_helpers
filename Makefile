#!/usr/bin/make

# exclude switches are useful for git and vim users. Other may apply here.
test: shellcheck.check
	grep -rIl '^#![[:blank:]]*/bin/\(bash\|sh\|zsh\)' \
	  --exclude-dir=.git --exclude=*.sw? \
	  | xargs shellcheck

# .check targets just tests for a command to be available on your PATH.
.PHONY: %.check
%.check:
	@which $*
