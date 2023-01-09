# Edge Salute Demo

## Prerequisites

* RHEL 9.1 minimal install registered with customer portal in order to access RPM content.
* Ensure local user can run sudo without a password
* Create the vault.yml file:
  * `cp vars/vault.yml.example vars/vault.yml`
  * edit vars/vault.yml and add your organization ID and activation key
  * `ansible-vault encrypt vars/vault.yml`
* Edit vars/demo\_vars.yml as needed

## Building out the demo environment

### Quick Start

Run the bootstrap script as a normal user with sudo privileges:

* `./bootstrap.sh`
* will use sudo and ansible become as needed, but requires access to ansible facts generated for the normal user and not the root user

Run the configure-fdo-node.yml playbook:

* `ansible-playbook configure-fdo-node.yml --ask-vault-pass`
* alternately, run the individual playbooks referenced in configure-demo-node.yml for more fine-grained control

Run the build-edge-node.yml playbook:

* `ansible-playbook build-edge-node.yml`
* alternately, run the individual playbooks referenced in build-edge-node.yml for more fine-grained control

