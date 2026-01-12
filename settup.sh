clear

# empieza el bucle, hasta que el usuario seleccione la opcion numero 1 el menu se va a repetir

until [ "$opcion" = "0" ]
do

# menu de opciones para seleccionar la accion que se desea llevar a cabo

echo ""
echo -e "\033[33m[-] Menu de opciones:\033[0m"
echo ""
echo "[1] Ingresar el nombre del archivo cpp"
echo "[2] Ingresar el nombre de el archivo temporal"
echo "[3] Inciar"
echo "[0] Salir"
echo ""

read -p $'\e[31m[-] Elige una opcion: \e[0m ' opcion

# empieza el menu de casos segun la opcion que se haya tomado

case $opcion in

	"1")
        echo ""
+        read -p $'\e[32m[-] Ingresa el nombre de el archivo CPP:\e[0m ' cpp
        clear
		;;

	"2")
        echo ""
        read -p $'\e[31m[-] Ingresa el nombre de el archivo temporal:\e[0m ' tempa
        clear
		;;

    "3")
        echo ""
        g++ $cpp -o $tempa ./{$tempa}
        ;;

	"0")
		echo ""
		echo -e "\033[32m[!] Saliendo de el programa ¡Gracias por usar Nethack!\033[0m"
		echo ""
	;;
	
	*)
		clear
		echo -e "\033[31m[!] Opcion invalida, repita denuevo.\033[0m"
	;;

# Termina el menu de casos
esac	

# termina el bucle de el menu principal
done
