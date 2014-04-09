# Rkhunter MCollective Agent

A simple MCollective agent and client to help coordinate updates to the Rkhunter database across many nodes.

## Problem

Suppose you have a large environment with Rkhunter and configuration management. You add a package or change a configuration file that Rkhunter is watching. Rkhunter is going to be spamming you saying there was a change on all of your systems. Now you need to run `rkhunter --propupd` across hundreds of nodes.

Using this agent and client you can quickly run `rkhunter --propupd` across all of those nodes.

## Installation

1. Clone this repo
2. Run `mco plugin package`
3. Install the resulting packages on your nodes
4. Run `mco rkhunter propupd`.  Add any MCollective options or filters to further narrow the targeted nodes.

## License

See LICENSE.txt
