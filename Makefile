# repo-exec - from therepoclub
# See LICENSE file for copyright and license details.

include config.mk

install: all
	mkdir -p $(DESTDIR)$(PREFIXOPT)/repowm
	cp -f opt/repowm/preferences.json $(DESTDIR)$(PREFIXOPT)/repowm

	mkdir -p $(DESTDIR)$(PREFIXOPT)/repomenu
	cp -f opt/repomenu/preferences.json $(DESTDIR)$(PREFIXOPT)/repomenu

	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f repo-exec $(DESTDIR)$(PREFIX)/bin

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/repo-exec\
		$(DESTDIR)$(PREFIXOPT)/repowm\
		$(DESTDIR)$(PREFIXOPT)/repomenu

.PHONY: all install uninstall
