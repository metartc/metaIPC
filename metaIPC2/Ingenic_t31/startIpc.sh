dirname=/root/metaIPC2
export LD_LIBRARY_PATH=${dirname}:$LD_LIBRARY_PATH
${dirname}/metaipc2_hd -c /root/config -l /root/log -t test1001 &
