# Run Ansible with Docker

This repository provides a Docker-based setup for running Ansible.

## Additional Components Besides Ansible

* [ansible-uptime-kuma](https://github.com/lucasheld/ansible-uptime-kuma)

## Usage

The easiest way you can run `docker-ansible` is using `zx`. For example:

```
npx zx https://raw.githubusercontent.com/ygpark80/docker-ansible/main/docker-ansible.mjs ansible-playbook
```

This command will download and run the `docker-ansible` script from the provided URL, and then run the `ansible-playbook` command inside a Docker container.

Alternatively, you can create an alias for `ansible-playbook` to run it inside the Docker container:

```
alias ansible-playbook='docker run --network host -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles --rm ygpark80/docker-ansible:latest ansible-playbook'
```

With this alias, you can run `ansible-playbook` commands as if you were running them directly on your machine.

That's it. Enjoy using `docker-ansible`! 😊
