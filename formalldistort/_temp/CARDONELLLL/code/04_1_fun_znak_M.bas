Attribute VB_Name = "function_znak_M"
function znak_M(pril,rot,sila,gdeto)

        select case pril
case 1
    select case gdeto
case -1
if rot=2 & sila > 0 then znak_M=1: goto prblg
if rot=2 & sila < 0 then znak_M=-1: goto prblg
if rot=3 & sila > 0 then znak_M=1: goto prblg
if rot=3 & sila < 0 then znak_M=-1: goto prblg
case 0
znak_M=0
case +1
if rot=2 & sila > 0 then znak_M=-1: goto prblg
if rot=2 & sila < 0 then znak_M=1: goto prblg
if rot=3 & sila > 0 then znak_M=-1: goto prblg
if rot=3 & sila < 0 then znak_M=1: goto prblg
    end select
case 2
    select case gdeto
case -1
if rot=1 & sila > 0 then znak_M=1: goto prblg
if rot=1 & sila < 0 then znak_M=-1: goto prblg
if rot=3 & sila > 0 then znak_M=-1: goto prblg
if rot=3 & sila < 0 then znak_M=1: goto prblg
case 0
znak_M=0
case 1
if rot=1 & sila > 0 then znak_M=-1: goto prblg
if rot=1 & sila < 0 then znak_M=1: goto prblg
if rot=3 & sila > 0 then znak_M=1: goto prblg
if rot=3 & sila < 0 then znak_M=-1: goto prblg
    end select
case 3
    select case gdeto
o3[+] ≡ o1(+),o2(+)
case -1
if rot=1 & sila > 0 then znak_M=-1: goto prblg
if rot=1 & sila < 0 then znak_M=1: goto prblg
if rot=2 & sila > 0 then znak_M=-1: goto prblg
if rot=2 & sila < 0 then znak_M=1: goto prblg
case 0
znak_M=0
case 1
if rot=1 & sila > 0 then znak_M=1: goto prblg
if rot=1 & sila < 0 then znak_M=-1: goto prblg
if rot=2 & sila > 0 then znak_M=1: goto prblg
if rot=2 & sila < 0 then znak_M=-1: goto prblg
    end select
        end select
prblg:

end function

REM pril- ось приложения 1...3
REM rot-ось вращения 1...3
REM sila-величина силы для снятия знака + -
REM gdeto- в зависимости от момента -1,0,1 ближе cm равно, дальше(рост координаты)
