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
!***********************************************************
    !
    ! Módulo:  Module1
    !
    ! Descripción:
    !   <Introduzca la descripción aquí>
    !
    ! Autor: willi
    !
    ! Versión: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedimiento Main
    !
    !   Este es el punto de entrada de su programa
    !
    !***********************************************************
    PROC main()
     VAR bool A := TRUE;
       WHILE A=TRUE DO
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
       IF DI_02=1 THEN
            Path_20;
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
       IF DI_03=1 THEN
            Path_30;
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
       ENDWHILE   
    ENDPROC
    PROC Path_10()
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_20,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_90,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
    ENDPROC
    PROC Path_30()
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_100,v200,z10,VaccumOne\WObj:=wobj0;
        MoveL Target_10,v200,z10,VaccumOne\WObj:=wobj0;
    ENDPROC
    PROC Path_40()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_30,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
    PROC Path_50()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_40,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
    PROC Path_60()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_50,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
    PROC Path_70()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_60,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
    PROC Path_80()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_70,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
    PROC Path_90()
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_80,v200,z10,VaccumOne\WObj:=Estante;
        MoveL Target_110,v200,z10,VaccumOne\WObj:=Estante;
    ENDPROC
ENDMODULE