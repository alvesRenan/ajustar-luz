brightness_file="/sys/class/backlight/intel_backlight/brightness"

if [ $# -eq 0 ]; then
	echo -e "Usage: ajustar-luz [opção]\n\
  -s: nível de luz desejado (0-100)\n\
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
			sudo bash -c "echo ${OPTARG} > ${brightness_file}"
		;;
	esac
done
