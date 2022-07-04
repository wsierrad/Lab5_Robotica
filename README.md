# Laboratorio 5 Robotica

## Código en RAPID del módulo utilizado para el desarrollo de la práctica.
Se definen las constamtes del modulo 1
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
Se define para cada pulsador 1, 2 y 3 la entrada el path de las 3 diferentes piezas, a cada una. Por ejemplo, cuando se utiliza el boton 1 entra en el if del pulsador 1, aqui el programa realiza el movimiento guardado en el path 10 (dependiendo del pulsador seleccionado) donde va a la posición de la pieza, coge la pieza 1 y la lleva al Home, despues espera que se pulse un pulsador entre los pulsadores 4 al 9, una vez pulsados realiza la colocación de la pieza con los paths configurados, en una posición especifica del estante, y vuelve al Home. Sin importar la pieza que se seleccione se puede posicionar en cualquier lugar del estante relacionado a cada pulsador.
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

## Vídeo: Implementación de la práctica

## Descripción de la solución planteada
