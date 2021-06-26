### Installation

This project is an assignment of 42 Tokyo.

WordPress service structured by docker-compose.

For the assignment's requirements, you need to make a few directories under /home/ and modify /etc/hosts.

```Makefile
...
set_up: volume add_host extract_wp
	docker-compose -f $(YML) up -d --build

# need to be root
volume:
	mkdir -p /home/ynakamot/data/mariadb
	mkdir -p /home/ynakamot/data/wordpress

# need to be root
add_host:
	echo "127.0.0.1 $(DOMAIN)" >> /etc/hosts
extract_wp:
...
```

Then, please execute `make set_up` with sudo in the first setup.


```shell
sudo make set_up
```

Except for this step, this makefile doesn't need root.
