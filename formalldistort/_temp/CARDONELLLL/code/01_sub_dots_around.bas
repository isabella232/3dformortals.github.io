Attribute VB_Name = "Sub_dots_around"
Sub dots_around(X(),Y(),Z(),A(),B(),C(),R())
dim tra#(4,3),contra#(4),contraA#(4),D_P#,n#,i#,j#,k#,D0_tra_P_ko#,D_tra_P_ko#

for k = 1 to n_ko
    for n = 1 to 4
        contra(n)=-1
        contraA(n)=-1
    next n
    
    for j int(Y(k)-POLE(k)) to int(Y(k)+POLE(k))
         for i int(X(k)-POLE(k)) to int(X(k)+POLE(k))
        
            tra(1,1)=i: tra(1,2)=j: tra(1,3)=Z_tra(i)
            tra(2,1)=i: tra(2,2)=j+1: tra(2,3)=Z_tra(i)
            tra(3,1)=i+1: tra(3,2)=j+1: tra(3,3)=Z_tra(i+1)
            tra(4,1)=i+1: tra(4,2)=j: tra(4,3)=Z_tra(i+1)
            
            for n = 1 to 4
                if D_dot_line(tra(n,1),tra(n,2),tra(n,3),X(k),Y(k),Z(k),A(k),B(k),C(k))<R(k) then contra(n)=1
            next n
            
            call parall_P_dist(X(k),Y(k),Z(k),A(k),B(k),C(k),znak_dY_ko(X(k),Y(k),Z(k),A(k),B(k),C(k),A2,B2,C2,D2,POLE(k)),XD,YD,ZD,DX,DY,DZ)
            
            for n = 1 to 4
                for D_P = 0 to dik8(ko_n)
                    XD=X(k)+DX*D_P
                    YD=Y(k)+DY*D_P
                    ZD=Z(k)+DZ*D_P
                    D_tra_P_ko=D_dot_plane(tra(n,1),tra(n,2),tra(n,3),A(k),B(k),C(k),parall_P_dist_D(XD,YD,ZD,A(k),B(k),C(k)))
                    if D_tra_P_ko<=0.5 then
                        contraA(n)=1
                        exit for
                    end if
                    if D_P>0 & D0_tra_P_ko<D_tra_P_ko then exit for
                    D0_tra_P_ko=D_tra_P_ko
                next D_P
            next n
            for n = 1 to 4
                if (contra(n)+contraA(n))=2 then contra(n)=2
            next n
            if contra(1)=2 & contra(2)=2 & contra(3)=2 & contra(4)=2 then
             call dS_kon_plus(tra(1,1),tra(1,2),tra(1,3),tra(2,1),tra(2,2),tra(2,3),tra(3,1),tra(3,2),tra(3,3))
             call dS_kon_plus(tra(1,1),tra(1,2),tra(1,3),tra(3,1),tra(3,2),tra(3,3),tra(4,1),tra(4,2),tra(4,3))
            elseif contra(1)<2 & contra(2)=2 & contra(3)=2 & contra(4)=2 then
             call dS_kon_plus(tra(4,1),tra(4,2),tra(4,3),tra(2,1),tra(2,2),tra(2,3),tra(3,1),tra(3,2),tra(3,3))
            elseif contra(1)=2 & contra(2)<2 & contra(3)=2 & contra(4)=2 then
             call dS_kon_plus(tra(1,1),tra(1,2),tra(1,3),tra(3,1),tra(3,2),tra(3,3),tra(4,1),tra(4,2),tra(4,3))
            elseif contra(1)=2 & contra(2)=2 & contra(3)<2 & contra(4)=2 then
             call dS_kon_plus(tra(1,1),tra(1,2),tra(1,3),tra(2,1),tra(2,2),tra(2,3),tra(4,1),tra(4,2),tra(4,3))
            elseif contra(1)=2 & contra(2)=2 & contra(3)=2 & contra(4)<2 then
             call dS_kon_plus(tra(1,1),tra(1,2),tra(1,3),tra(2,1),tra(2,2),tra(2,3),tra(3,1),tra(3,2),tra(3,3))
            end if
        
         next i
    next j

next k
end sub

REM ______

REM k - ����� ������
REM i,j - ���������� ����� ������ ������� ���� �����
REM X,Y,Z - ���������� ����� ko ����� ���� ������
REM A,B,C - ������������ ������������� ������� ������
REM R - ������ ���� [mm]
REM D_P - �������� ��������� ��� ��������� [mm]
REM dik8 - ������ ���� [mm]
