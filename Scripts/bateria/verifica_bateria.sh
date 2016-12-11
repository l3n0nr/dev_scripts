#!/bin/bash
#
#  Copyright 2013 Sandro Marcell <smarcell@mail.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
PATH='/bin:/usr/bin:/usr/local/bin'

# Identificacao de sua bateria pelo S.O. 
# use: 'ls /sys/class/power_supply' para descobrir
bateria='BAT0'

if [ ! -d "/sys/class/power_supply/$bateria" ]; then
	echo "${bateria}: arquivo ou diretório não encontrado."
	exit 1
fi

exec 3< /sys/class/power_supply/${bateria}/energy_now; read -u3 capacidade_restante; exec 3<&-
exec 3< /sys/class/power_supply/${bateria}/energy_full; read -u3 capacidade_total; exec 3<&-
exec 3< /sys/class/power_supply/${bateria}/status; read -u3 estado_bateria; exec 3<&-
exec 3< /sys/class/power_supply/${bateria}/power_now; read -u3 taxa_bateria; exec 3<&-

((carga = capacidade_restante * 100 / capacidade_total))

# Tempo restante estimado de carga
if ((taxa_bateria != 0)); then
	horas=$(bc <<< "(1.0 * $capacidade_restante) / (1.0 * $taxa_bateria)")
	minutos=$(bc <<< "(60.0 * $capacidade_restante) / $taxa_bateria - ($horas * 60)")
fi

# Codigo UTF-8 para 'seta para cima' e 'seta para baixo'
seta_cima='\u2191'
seta_baixo='\u2193'

case "$estado_bateria" in
	'Full')
		status_bateria="\033[1m==\033[0m"
		info='Bateria recarregada';;
	'Charging')
		status_bateria="\033[1m${seta_cima}${seta_cima}\033[0m"
		info='Bateria recarregando...';;
	'Discharging')
		status_bateria="\033[1m${seta_baixo}${seta_baixo}\033[0m"
		info="Bateria descarregando... (tempo restante estimado = ${horas}h:${minutos}min)";;
	*)
		info='???'
esac

cor=32 # Codigo ANSI para cor verde
if ((carga < 15)); then
	cor=31 # Vermelho
elif ((carga <= 50)); then
	cor=33 # Amarelo
fi

# Mostra a barra
while ((i++ < carga)); do
	((i % 2 == 0)) && echo -ne "\033[7;${cor}m\040\033[0m"
done

echo -e " \033[1;${cor}m${carga}%\033[0m\n$status_bateria $info"
