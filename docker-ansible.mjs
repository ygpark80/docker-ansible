const cmd = `docker`
const args = [
    "run",
    "--network", "host",
    `-v`, `${process.env.PWD}:/work:ro`,
    "-v", `${os.homedir()}/.ansible/roles:/root/.ansible/roles`,
    "--rm", "ygpark80/docker-ansible:latest",
]
$`${cmd} ${[...args, ...process.argv.slice(3)]}`.nothrow()
