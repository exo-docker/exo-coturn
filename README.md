# Coturn Docker image <!-- omit in toc -->

<!-- markdownlint-disable MD014 -->

- [prerequisites](#prerequisites)
- [usage](#usage)

This image provide a ready to run [Coturn](https://github.com/coturn/coturn) server.

| Docker image                 | Coturn version |
| ---------------------------- | -------------- |
| exoplatform/coturn:latest    | 4.5.0.7        |
| exoplatform/coturn:4.5.0.7_0 | 4.5.0.7        |

## prerequisites

- Docker daemon

## usage

```bash
$ docker run --rm -p 3478:3478 exoplatform/coturn -v --log-file stdout -X xxx.xxx.xxx.xxx
```

If your coturn sever is behind a NAT you must provide your public IP with the `-x` parameter :

```bash
$ docker run --rm -p 3478:3478 exoplatform/coturn -v --log-file stdout -X xxx.xxx.xxx.xxx
```

For all coturn server option :

```bash
$ docker run --rm exoplatform/coturn -h

0:
RFC 3489/5389/5766/5780/6062/6156 STUN/TURN Server
Version Coturn-4.5.0.7 'dan Eider'
0:
Max number of open files/sockets allowed for this process: 1048576
0:
Due to the open files/sockets limitation,
max supported number of TURN Sessions possible is: 524000 (approximately)
0:

==== Show him the instruments, Practical Frost: ====

0: TLS supported
0: DTLS supported
0: DTLS 1.2 supported
0: TURN/STUN ALPN supported
0: Third-party authorization (oAuth) supported
0: GCM (AEAD) supported
0: OpenSSL compile-time version: OpenSSL 1.1.0g  2 Nov 2017 (0x1010007f)
0:
0: SQLite supported, default database location is /var/lib/turn/turndb
0: Redis supported
0: PostgreSQL supported
0: MySQL supported
0: MongoDB is not supported
0:
0: Default Net Engine version: 3 (UDP thread per CPU core)

=====================================================


Usage: turnserver [options]
Options:
 -d, --listening-device	<device-name>		Listener interface device (NOT RECOMMENDED. Optional, Linux only).
 -p, --listening-port		<port>		TURN listener port (Default: 3478).
            Note: actually, TLS & DTLS sessions can connect to the "plain" TCP & UDP port(s), too,
            if allowed by configuration.

...
```
