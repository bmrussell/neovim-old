" GUI ----------------------------------------------------------------------
if has("gui_running")
	set lines=43 columns=120
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
	elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		set guifont=Cascadia\ Code\ PL:h11:cANSI
	endif
endif


