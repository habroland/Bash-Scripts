USAGE="Usage: output.pdf input1.pdf ... inputN.pdf"

if [ "$#" == "0" ]||[ "$#" == "1" ]; then
	echo "$USAGE"
	exit 1
fi

OUTPUT=$1
shift
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$OUTPUT $@