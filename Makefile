.PHONY: build install uninstall clean

BINARY_NAME=sshawk
INSTALL_PATH=/usr/local/bin
SERVICE_PATH=/etc/systemd/system
CONFIG_PATH=/etc/sshawk

build:
	go build -o $(BINARY_NAME) ./cmd/sshawk

install: build
	mkdir -p $(CONFIG_PATH)
	cp -f $(BINARY_NAME) $(INSTALL_PATH)/$(BINARY_NAME)
	cp -f configs/sshawk.config $(CONFIG_PATH)/sshawk.config
	cp -f sshawk.service $(SERVICE_PATH)/sshawk.service
	systemctl daemon-reload
	systemctl enable sshawk.service
	systemctl start sshawk.service

uninstall:
	systemctl stop sshawk.service
	systemctl disable sshawk.service
	rm -f $(INSTALL_PATH)/$(BINARY_NAME)
	rm -f $(SERVICE_PATH)/sshawk.service
	rm -rf $(CONFIG_PATH)
	systemctl daemon-reload

clean:
	rm -f $(BINARY_NAME)
