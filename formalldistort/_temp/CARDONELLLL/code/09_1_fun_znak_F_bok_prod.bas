Attribute VB_Name = "function_znak_F_bok_prod"
function znak_F_bok_prod(XdS,AdS,BdS,CdS,Xko,Xop)

dim XLdS#,T#

if CdS > 0 then: T=1000
elseif CdS < 0 then: T=-1000
end if
XLdS = XdS+T*AdS

if (XLdS > XdS) & (Xop > Xko) then
if acos(abs(cosLL(AdS,BdS,CdS,1,0,0)))>acos(abs(cosLL(A1,B1,C1,1,0,0))) then znak_F_bok_prod=-1: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,1,0,0)))=acos(abs(cosLL(A1,B1,C1,1,0,0))) then znak_F_bok_prod=0: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,1,0,0)))<acos(abs(cosLL(A1,B1,C1,1,0,0))) then znak_F_bok_prod=1: goto prblg
end if

if (XLdS > XdS) & (Xop = Xko) then znak_F_bok_prod=1: goto prblg

if (XLdS > XdS) & (Xop < Xko) then znak_F_bok_prod=1: goto prblg

if (XLdS = XdS) & (Xop > Xko) then znak_F_bok_prod=-1: goto prblg

if (XLdS = XdS) & (Xop = Xko) then znak_F_bok_prod=0: goto prblg

if (XLdS = XdS) & (Xop < Xko) then znak_F_bok_prod=1: goto prblg

if (XLdS < XdS) & (Xop > Xko) then znak_F_bok_prod=-1: goto prblg

if (XLdS < XdS) & (Xop = Xko) then znak_F_bok_prod=-1: goto prblg

if (XLdS < XdS) & (Xop < Xko) then
if acos(abs(cosLL(AdS,BdS,CdS,1,0,0)))>acos(abs(cosLL(A1,B1,C1,1,0,0))) then znak_F_bok_prod=1: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,1,0,0)))=acos(abs(cosLL(A1,B1,C1,1,0,0))) then znak_F_bok_prod=0: goto prblg
if acos(abs(cosLL(AdS,BdS,CdS,1,0,0)))<acos(abs(cosLL(A1,B1,C1,1,0,0))) then znak_F_bok_prod=-1: goto prblg
end if
prblg:

end function


