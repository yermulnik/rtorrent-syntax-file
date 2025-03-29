" Vim Syntax file for rtorrent.rc
" Author: Chris Carpita <ccarpita@gmail.com>
" Version: 0.2
" Revised: May, 2008
" Revised: Mar, 2025 by George Yermulnik <yermulnik _at_ gmail.com>

if !exists("main_syntax")
	let main_syntax='rtorrent'
endif

syn match rtorrentComment "#.*$"

syn keyword rtorrentSetting  min_peers max_peers min_peers_seed max_peers_seed max_uploads download_rate upload_rate directory session schedule schedule2 schedule_remove2 ip bind port_range port_random check_hash use_udp_trackers encryption dht dht_port peer_exchange hash_read_ahead hash_interval hash_max_tries encoding.add keys.layout.set import execute2 contained
syn match rtorrentSettingRe  "\(convert\|d\|dht\|directory\|execute\|f\|group2\?\|load\|method\|network\|p\|pieces\|protocol\|session\|system\|throttle\|t\|trackers\|view\)\(\.\w\+\)\+" contained

syn match rtorrentOp "=" contained

syn match rtorrentStatement "\s*\w\+\(\.\w\+\)*\s*=\s*.*$" contains=rtorrentSettingAttempt,rtorrentOp

syn match rtorrentSettingAttempt "^\s*\w\+\(\.\w\+\)*" contains=rtorrentSetting,rtorrentSettingRe contained

if !exists('HiLink')
	command! -nargs=+ HiLink hi link <args>
endif

HiLink rtorrentSettingAttempt	String
HiLink rtorrentStatement	Type
HiLink rtorrentComment		Comment
HiLink rtorrentSetting		Operator
HiLink rtorrentSettingRe	Operator
HiLink rtorrentOp		Special
