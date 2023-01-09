#!/bin/bash

sudo dnf install -y ansible-core python3-netaddr

ansible-galaxy collection install -r collections/requirements.yml

ansible-playbook 00-demo-bootstrap.yml
