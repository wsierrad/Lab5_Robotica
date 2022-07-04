# Laboratorio 5 Robotica

## Código en RAPID del módulo utilizado para el desarrollo de la práctica.

## Vídeo: Simulación en Robotstudio 

## Vídeo: Implementación de la práctica

## Descripción de la solución planteada
En este aparte se procede a hacer una descripción más a fondo de cada una de las soluciones planteadas en el desarrollo del laboratorio. En primer lugar, para la modificación del laboratorio 4, se tienen ambas rutinas y trayectorias ya definidas. Por lo tanto, se proceden a crear las señales de entradas digitales, para cada uno de los pulsadores. Se definen siguiendo la nomenclatura del controlador físico, y que al ser activadas se ejecute cada una de las rutinas. De igual manera, se ejecuta esto dentro de un while, para que se mantenga activo durante toda la ejecución. En la imagen, se observa las señales creadas, cada uno correspondiente a un pulsador, que a su vez inicia cada una de las rutinas de escritura.
![image](https://user-images.githubusercontent.com/36159469/177079178-93a915f3-d787-4d53-9aef-5d9db496744d.png)


Para el segundo punto, aparte de los códigos ya expuestos, es necesario comentar también la lógica del programa. En primer lugar, los pulsadores 1,2 y 3, cada uno corresponden a una pieza. Cuando la herramienta, en este caso, fue escogida una ventosa, entra en contacto con la pieza, se genera un vínculo entre ellas. Posteriormente, los pulsadores, 4, 5, 6, 7, 8 y 9, corresponden cada uno a una posición en el estante. Están contadas de izquierda a derecha y de arriba abajo, como se muestra en la siguiente imagen. 

Una vez que le ha sido asignada la posición, el robot hace el movimiento hasta la posición asignada, y tras entrar en contacto con una pieza invisible, en la posición deseada, se realiza el soltado de la pieza. Esto finaliza con el robot volviendo a home, listo para recibir la siguiente instrucción. 
Por último, para poder devolver las piezas a su lugar en la simulación, se crea una señal, que permite reposicionarlas, en sus lugares originales. Todo esto se ve condensado en la siguiente imagen:

![image](https://user-images.githubusercontent.com/36159469/177079161-ead83cb2-f181-46cd-84e8-a11a267e18b0.png)


