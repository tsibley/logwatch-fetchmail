PREFIX := /etc/logwatch
BIN  := scripts/services/fetchmail
CONF := conf/services/fetchmail.conf
FILES := $(BIN) $(CONF)

install: install-dirs
	@for file in $(BIN); do \
		install -pv $$file $(PREFIX)/$$file; \
	done
	@for file in $(CONF); do \
		install -pv --mode=0644 $$file $(PREFIX)/$$file; \
	done

install-dirs:
	@for file in $(FILES); do \
		install -v -d `dirname $(PREFIX)/$$file`; \
	done
