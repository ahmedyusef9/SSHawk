
![SSHawk Logo](https://github.com/ahmedyusef9/SSHawk/blob/main/assets/logo_1.png "SSHawk Logo")


# SSHawk

SSHawk is a powerful tool designed for system administrators and security professionals to discover, monitor, and manage SSH tunnels on Linux and Windows systems. It offers essential insights into SSH traffic, allowing users to detect unauthorized or suspicious SSH activities directly through a command-line interface.

## Features

- **Discover SSH Tunnels**: Automatically identifies all active SSH tunnels on the system, detailing IP addresses, ports, and session durations.
- **Manage SSH Tunnels**: Provides capabilities for the manual or automatic termination of active tunnels to ensure network security.
- **Cross-Platform Compatibility**: Compatible with both Linux and Windows operating systems.

## Prerequisites

Before installing SSHawk, ensure your system meets the following requirements:

- Linux or Windows operating system
- Go 1.15 or higher
- Systemd (for Linux installations)
- Administrative or root privileges for installation

## Installation

Follow these steps to install SSHawk on your system:

### Using the Makefile

1. **Clone the Repository**
   ```bash
   git clone https://github.com/ahmedyusef9/SSHawk.git
   cd SSHawk
   ```

1. **Build the Project**
   ```bash
   make build
   ```

1. **Install**
   ```bash
   sudo make install
   ```

This will compile the SSHawk agent, install it to the appropriate directory, and set up the systemd service to manage the application.

## Installation

For manual installation steps, please refer to the installation guide.

## Command-Line Interface

To start the SSHawk agent:
    ```bash
       sudo systemctl start sshawk.service
    ```
To check the status of the SSHawk agent:
    ```bash
       sudo systemctl status sshawk.service
    ```
To discover active SSH tunnels:
    ```bash
       sshawk discover
    ```

## Configuration

SSHawk can be configured by editing the configuration file located at /etc/sshawk/sshawk.config.

## Acknowledgments
