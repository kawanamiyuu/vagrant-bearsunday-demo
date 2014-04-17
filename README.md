# An example of running the BEAR.Sunday Demo.Sandbox app on Vagrant

- [BEAR.Sunday](http://bearsunday.github.io/)

## Environment

- Vagrant ```ver 1.5``` and above is required.

```bash
# VM boot and provisioning (may take some time).
[local] $ vagrant up
```

## Run the Application

```bash
# SSH into your VM
[local] $ vagrant ssh
```

```bash
# Start the Demo.Sandbox app (running the PHP built-in Web-Server)
[vagrant] $ /vagrant/bear/bin/bear.server /vagrant/bear/apps/Demo.Sandbox
```

Access ```http://192.168.33.10:8080``` in your browser,
