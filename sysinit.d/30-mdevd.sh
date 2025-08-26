if cmd mdevd mdevd-coldplug; then
    msg 'Starting mdevd and waiting for devices to settle...'
    nitroctl start mdevd
else
    msg_warn 'cannot find mdevd!'
fi
