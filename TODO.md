medir la anchura de los headers que van al micro
poner un conector de bateria
medir caida de tension en los pines de la bateria sin la bateria conectada para saber si es viable meter un diodo o no. La bateria es de 3.8V y la caida del diodo es de 0.2V (siendo un shottky, forward voltage = caida de voltage en polarizacion directa)
usar un diodo schottky como este https://www.digikey.es/es/products/detail/microchip-technology/LSM115JE3-TR13/1634473
quitar el plano de tierra, no es necesario
dimensionar correctamente las pistas a un ancho adecuado (500mV)
