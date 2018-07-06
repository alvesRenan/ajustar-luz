brightness_file="/sys/class/backlight/intel_backlight/brightness"
max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)

if [ $# -eq 0 ]; then
	echo -e "Usage: ajustar-luz [opção]\n\
  -s: nível de luz desejado (0-${max_brightness})\n\
  -c: mostra o nível de luz atual"
	exit
fi

while getopts cs: option
do
	case "${option}"
	in
		c)
			cat "${brightness_file}"
		;;

		s)
			if [ $OPTARG -gt $max_brightness ]; then
				echo "Argumento inválido. Escolha um valor entre 0 e ${max_brightness}"
			else
				sudo bash -c "echo ${OPTARG} > ${brightness_file}"
			fi
		;;
	esac
done
