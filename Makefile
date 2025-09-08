install:
	install -Dm644 -t ${DESTDIR}/etc/nitro-rc/sysinit.d sysinit.d/*.sh
	install -Dm644 -t ${DESTDIR}/etc/nitro-rc/shutdown.d shutdown.d/*.sh
	install -Dm644 functions ${DESTDIR}/etc/nitro-rc/functions
	install -Dm755 -t ${DESTDIR}/etc rc.local rc.shutdown
	install -Dm644 login.local ${DESTDIR}/etc/login.local
	install -Dm755 services/SYS/setup ${DESTDIR}/etc/nitro/SYS/setup
	install -Dm755 services/SYS/final ${DESTDIR}/etc/nitro/SYS/final
	install -Dm755 services/SYS/fatal ${DESTDIR}/etc/nitro/SYS/fatal
	install -Dm755 services/agetty@/run ${DESTDIR}/etc/nitro/agetty@/run
	install -Dm755 services/agetty@/finish ${DESTDIR}/etc/nitro/agetty@/finish
	install -Dm755 services/mdevd/run ${DESTDIR}/etc/nitro/mdevd/run
	install -Dm644 services/mdevd/notification-fd ${DESTDIR}/etc/nitro/mdevd/notification-fd
	for n in 1 2 3 4 5 6; do \
		ln -sfn agetty@ ${DESTDIR}/etc/nitro/agetty@tty$$n; \
	done
	install -Dm755 services/sulogin/run ${DESTDIR}/etc/nitro.single/sulogin/run
	ln -sfn ../nitro/SYS ${DESTDIR}/etc/nitro.single/SYS
	ln -sfn ../nitro/mdevd ${DESTDIR}/etc/nitro.single/mdevd
