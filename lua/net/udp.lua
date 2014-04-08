local function udp_listen(local_addr,cb)
	local callbackobj = { recvfinish = cb }
	return clisten(local_addr,IPPROTO_UDP,SOCK_DGRAM,callbackobj)	
end

local function udp_connect(remote_addr,local_addr)
	return cconnect(remote_addr,local_addr,IPPROTO_UDP,SOCK_DGRAM)
end

return {
	udp_listen = udp_listen,
	udp_connect = udp_connect
}
