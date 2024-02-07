package main

import (
	"SSHawk/net"
	"SSHawk/net/tunnel"
	"fmt"
)

func main() {
	fmt.Println("SSHawk starting...")

	// Example of listing network connections
	if _, err := net.ListNetworkConnections(); err != nil {
		fmt.Println("Error listing network connections:", err)
	}

	// Example of discovering SSH tunnels
	tunnel.DiscoverSSHTunnels()
}
