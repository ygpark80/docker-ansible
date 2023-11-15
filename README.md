# Run Ansible with Docker

## Additional Components Besides Ansible

* [ansible-uptime-kuma](https://github.com/lucasheld/ansible-uptime-kuma)

## Usage

It's recommended to create an alias for Ansible commands. This will allow you to run the commands inside the Docker container as if you were running them directly.

```
alias ansible-playbook='docker run --network host -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles --rm ygpark80/docker-ansible:latest ansible-playbook'
```

That's it. 😊
