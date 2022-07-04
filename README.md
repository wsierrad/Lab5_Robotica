# Laboratorio 5 Robotica

## Integrantes:

Fabian Steven Galindo Peña  
Brian Alejandro Vásquez González  
William Arturo Sierra Díaz  


## Código en RAPID del módulo utilizado para el desarrollo de la práctica.

### Tarea 1
Para el desarrollo de la tarea 1 se partio desde el codigo explicado e implementado en la [guia de laboratorio 4](https://github.com/wsierrad/Lab4_Robotica/) asi se modifico el proc main teniendo en cuenta el uso de las entradas digitales
```
  PROC main()
       VAR bool A := TRUE;
       WHILE A=TRUE DO
         IF DL01=1 THEN
            Path_10;
            WaitTime(5);
       ENDIF   
       IF DL02=1 THEN
            Path_20;
            WaitTime(5);
       ENDIF   
       ENDWHILE
        
  ENDPROC
```
Teniendo asi un ciclo while que se ejecuta todo el tiempo y esta a la espera de una entrada digital, asi cuando recibe una entrada en DL01 realiza el ciclo programado en el procedimiento Path_10, que corresponde a la trayectoria en el plano horizontal y luego se da un tiempo de espera de 5 segundos antes de ejecutar otro procedimiento.  
De la misma forma se tiene que si recibe un valor true en la aentrado DL02 ejecutara el Path_20 que corresponde a la rutina en el plano inclinado terminando con un tiempo de espera de 5 segundos, estos tiempos muertos se ponen para evitar cambios abruptos y no afectan en nada la ejecuccion de las trayectorias  

### Tarea 2

Se definen las constantes del modulo 1.
````
MODULE Module1
    CONST robtarget Target_10:=[[552.499997675,18.5,548.499998507],[-0.000000007,0,1,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[500,200,10],[0,0,1,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[500,400,10],[0,0,1,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[200,500,10],[0,0,1,0],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110:=[[-37.500014289,318.499999254,-548.499994826],[1,0,0.000000004,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[30,30,-20],[1,0,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[30,85,-20],[1,0,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[30,140,-20],[1,0,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[85,140,-20],[1,0,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[85,85,-20],[1,0,0,0],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[85,30,-20],[1,0,0,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
````
Se define para cada pulsador 1, 2 y 3 la entrada el path de las 3 diferentes piezas, a cada una. Por ejemplo, cuando se utiliza el botón 1 entra en el if del pulsador 1, aquí el programa realiza el movimiento guardado en el path 10 (dependiendo del pulsador seleccionado) donde va a la posición de la pieza, coge la pieza 1 y la lleva al Home, después espera que se pulse un pulsador entre los pulsadores 4 al 9, una vez pulsados realiza la colocación de la pieza con los paths configurados, en una posición específica del estante, y vuelve al Home. Sin importar la pieza que se seleccione se puede posicionar en cualquier lugar del estante relacionado a cada pulsador.
El workobject de la ubicación de las piezas se encuentra en el workobject global, mientras que el lugar donde se colocan las piezas está definido en el workobject estante.
````
IF DI_01=1 THEN
            Path_10;
            WaitTime(5);
            IF DI_04=1 THEN
            Path_40;
            WaitTime(5);
            ENDIF
            IF DI_05=1 THEN
            Path_90;
            WaitTime(5);
            ENDIF
            IF DI_06=1 THEN
            Path_50;
            WaitTime(5);
            ENDIF
            IF DI_07=1 THEN
            Path_80;
            WaitTime(5);
            ENDIF
            IF DI_08=1 THEN
            Path_60;
            WaitTime(5);
            ENDIF
            IF DI_09=1 THEN
            Path_70;
            WaitTime(5);
            ENDIF
       ENDIF
````
````
PROC Path_10()
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_20,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
    ENDPROC
````
````
 PROC Path_40()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_30,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
````  

## Vídeo: Simulación en Robotstudio 

Simulacion tarea 1:  
[![Practica 5: Simulación](https://img.youtube.com/vi/GLgyGINd8CE/0.jpg)](https://youtu.be/GLgyGINd8CE)  
Simulacion tarea 2:  
[![Practica 5: Simulación](https://img.youtube.com/vi/ZEzRyouUXVY/0.jpg)](https://youtu.be/ZEzRyouUXVY)  

## Vídeo: Implementación de la práctica

[![Practica 5: Implementación](https://img.youtube.com/vi/IqijvEmYyDo/0.jpg)](https://youtu.be/IqijvEmYyDo)  

## Descripción de la solución planteada
En este aparte se procede a hacer una descripción más a fondo de cada una de las soluciones planteadas en el desarrollo del laboratorio. En primer lugar, para la modificación del laboratorio 4, se tienen ambas rutinas y trayectorias ya definidas. Por lo tanto, se proceden a crear las señales de entradas digitales, para cada uno de los pulsadores. Se definen siguiendo la nomenclatura del controlador físico, y que al ser activadas se ejecute cada una de las rutinas. De igual manera, se ejecuta esto dentro de un while, para que se mantenga activo durante toda la ejecución. En la imagen, se observa las señales creadas, cada uno correspondiente a un pulsador, que a su vez inicia cada una de las rutinas de escritura.
![image](https://user-images.githubusercontent.com/36159469/177079178-93a915f3-d787-4d53-9aef-5d9db496744d.png)


Para el segundo punto, aparte de los códigos ya expuestos, es necesario comentar también la lógica del programa. En primer lugar, los pulsadores 1,2 y 3, cada uno corresponden a una pieza. Cuando la herramienta, en este caso, fue escogida una ventosa, entra en contacto con la pieza, se genera un vínculo entre ellas. Posteriormente, los pulsadores, 4, 5, 6, 7, 8 y 9, corresponden cada uno a una posición en el estante. Están contadas de izquierda a derecha y de arriba abajo, como se muestra en la siguiente imagen. 

![image](https://user-images.githubusercontent.com/48021658/177080704-7a8e3a7d-c38f-4176-bc00-52fd483e6ec8.png)


Una vez que le ha sido asignada la posición, el robot hace el movimiento hasta la posición asignada, y tras entrar en contacto con una pieza invisible, en la posición deseada, se realiza el soltado de la pieza. Esto finaliza con el robot volviendo a home, listo para recibir la siguiente instrucción. 
Por último, para poder devolver las piezas a su lugar en la simulación, se crea una señal, que permite reposicionarlas, en sus lugares originales. Todo esto se ve condensado en la siguiente imagen:

![image](https://user-images.githubusercontent.com/36159469/177079161-ead83cb2-f181-46cd-84e8-a11a267e18b0.png)


