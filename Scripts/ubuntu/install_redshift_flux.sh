install_flux()
{
	#instalando dependencias
	sudo apt-get install git python-appindicator python-xdg python-pexpect python-gconf python-gtk2 python-glade2 libxxf86vm1 -y

	#realizando download do flux
	cd /tmp && git clone "https://github.com/xflux-gui/xflux-gui.git" && cd xflux-gui && 

	#executando instalacao
	sudo python download-xflux.py && 
	sudo python setup.py install && 
	sudo python setup.py install --user
}

uninstall_flux()
{
	sudo rm -rf /usr/local/lib/python2.7/dist-packages/{fluxgui/,f.lux_indicator*} && sudo rm /usr/local/share/icons/hicolor/scalable/apps/fluxgui.* && sudo rm /usr/local/share/applications/fluxgui.desktop && sudo rm /usr/local/bin/{xflux,fluxgui} && rm -rf ~/.gconf/apps/fluxgui/
}

install_redshift()
{
	sudo apt-get install redshift gtk-redshift -y
}

remove_redshift()
{
	sudo apt-get remove redshift gtk-redshift -y
}