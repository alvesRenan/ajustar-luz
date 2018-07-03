if [ $# -eq 0 ]; then
	echo -e "Usage: ajustar-luz [param]\n\
	param: nível de luz desejado (0-100)"
	exit
fi

sudo bash -c "echo $1 > /sys/class/backlight/intel_backlight/brightness"
