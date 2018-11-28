
all: config known_hosts

config: $(filter-out config.d/default, $(wildcard config.d/*)) config.d/default
	-chmod 600 $@
	cat $^ > $@
	chmod 400 $@

known_hosts: $(wildcard known_hosts.d/*)
	-chmod 600 $@
	cat $^ > $@
	chmod 400 $@

