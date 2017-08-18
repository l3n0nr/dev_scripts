remove_flux()
{
	sudo rm -rf /usr/local/lib/python2.7/dist-packages/{fluxgui/,f.lux_indicator*} && sudo rm /usr/local/share/icons/hicolor/scalable/apps/fluxgui.* && sudo rm /usr/local/share/applications/fluxgui.desktop && sudo rm /usr/local/bin/{xflux,fluxgui} && rm -rf ~/.gconf/apps/fluxgui/
}

remove_redshift()
{
	sudo apt-get remove redshift gtk-redshift -y
}