# Laboratorio 5 Robotica

## Integrantes:

Fabian Steven Galindo Peña  
Brian Alejandro Vásquez González  
William Arturo Sierra Díaz  


## Código en RAPID del módulo utilizado para el desarrollo de la práctica.

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

## Vídeo: Simulación en Robotstudio 

Simulacion tarea 1:  
[![Practica 5: Simulación](https://img.youtube.com/vi/GLgyGINd8CE/0.jpg)](https://youtu.be/GLgyGINd8CE)  
Simulacion tarea 2:  
[![Practica 5: Simulación](https://img.youtube.com/vi/ZEzRyouUXVY/0.jpg)](https://youtu.be/ZEzRyouUXVY)  

## Vídeo: Implementación de la práctica

[![Practica 5: Implementación](https://img.youtube.com/vi/IqijvEmYyDo/0.jpg)](https://youtu.be/IqijvEmYyDo)  

## Descripción de la solución planteada
