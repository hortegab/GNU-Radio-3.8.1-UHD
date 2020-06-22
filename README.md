# INTRODUCCION
Este por ahora es un intento para la instalación de los drivers UHD necesarios en GNURadio 3.8.1 sobre Ubuntu 20.04 para USRPs como el E-310.

El proceso no está bien probado pero se basa en experiencias que ya hemos tenido con GNU Radio v 2.7.1 y recomendaciones que hemos ido encontrando

## Actualización del sistema
Como siempre, cualquier instalación comienza por actualizar el sistema

$ sudo apt update
$ sudo at upgrade

# PREQUISITOS (DEPENDENCIAS)
## Aclaraciones previas
- Lo siguiente es tomado de https://wiki.gnuradio.org/index.php/InstallingGR cuando se aborda la instalación de drives UHD
- Al parecere es una experiencia que se tiene cuando se usa Ubunto 18.04 con GNU Radio 3.8.1, pero quizá siga siendo válido para Ubuntu 20.04
- No hemos incluido dependencias que ya están incluidas en la instalación del OOT E3TRadio. Por lo tanto, la instalación del OOT E3TRadio es uno de los prerrequisitos y se explica en: https://github.com/hortegab/comdig_Lib_OOT_E3TRadio.3.8

## Instalacion de las dependencias
$ sudo apt install g++ swig doxygen libboost-all-dev libgmp-dev libfftw3-dev libsdl1.2-dev libgsl-dev libqwt-qt5-dev libqt5opengl5-dev liblog4cpp5-dev libzmq3-dev 
$ sudo apt install python3-numpy-dbg python3-docutils python3-dev python3-opengl python3-cheetah python3-tk python3-requests python3-zmq python3-six python3-gps

## comandos con problemas
Los siguiente comandos no aparecen en https://wiki.gnuradio.org/index.php/InstallingGR sino en la lista de Luis Miguel. Tienen problemas quizá por algun error o porque son para otras versiones de python

$ sudo apt install python3-numpy-doc # así como está no se instala pero sí como numpydoc
$ python3-gtk2 # tenemos problemas con este paquete en python3.8.2. Quizá no sea necesario o quiza haya que instalasr gtk+3 como: $ sudo apt-get install gtk+3

## Posible instalación adicional

Suponemos que con lo anterior es suficiente como prerrequisto para la instalación de UHD, pero queremos dejar constancia que en GNURadio v2.7 instalábamos también lo siguiente:

$ sudo apt-get -y install wget ncurses-bin automake autoconf gtk2-engines-pixbuf r-base-dev fort77  gpsd gpsd-clients libfftw3-bin libfftw3-doc libncurses5 libncurses5-dev libfontconfig1-dev libxrender-dev libpulse-dev libtool libfftw3-dev libcppunit-dev libusb-dev libusb-1.0-0-dev ccache  libusb-1.0-0-dev libqwtplot3d-qt5-dev libxi-dev  liborc-0.4-0 liborc-0.4-dev libasound2-dev libzmq5 libcomedi-dev libgps-dev

### Los siguientes paquetes presentan problema de instalacion en python 3.8.2
$ sudo apt-get libqwt6abi1 libncurses5-dbg libqwt-dev libgps23


# LA INSTALACION DE LOS DRIVER
Desde una terminal de Ubuntu corra el script UHD_GNURadio.sh así:
$ sh UHD_GNURadio.sh

## Nota 1
- el anterior es exactamente el script hecho por Ing Luis Miguel Diaz y que usabamos en la UIS con GNU Radio 2.7.1. Suponemos que no hay que adaptarle nada. Pero es importante indagar si ha salido alguna nueva recomendación o facilidad para GNU Radio 3.8.1. Este es el enlace a la guia de Luis Miguel Diaz: https://docs.google.com/document/d/1raiWydL7Au4Hb7n1cWYVSUKQ-CGyP1_92F5MMZbBNvc/edit?usp=sharing

## Nota 2
- Existe un script para GNURadio 3.8.1 solo que al parecer ha sido probado en Ubuntu 18.04, mientras que nosotros nos orientamos a Ubuntu 20.01: https://wiki.gnuradio.org/index.php/InstallingGR

## Nota 3
- Si la ejecución del sh se detiene en ":" le damos q y eso hace que continúe
- Este proceso lo aplicamos con GNU Radio 3.8.1 y Python 3.8.2 y parece que hay muchas fallas, muchas cosas por corregir y es posible que esté relacionado con el uso de las carpetas




