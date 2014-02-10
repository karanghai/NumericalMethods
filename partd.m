%   IL WI  PU   MI  OSU
A=[-1 , 1 , 0 , 0 , 0 ;
   -1 , 0 , 1 , 0 , 0 ;
   -1 , 0 , 0 , 1 , 0 ;
    0 , 0 , 1 ,-1 , 0 ;
    0 , 0 , 0 ,-1 , 1 ;
    0 , 1 , 0 ,-1 , 0 ;
    0 , 0 ,-1 , 0 , 1 ;
    0 ,-1 , 0 , 0 , 1 ;
    0 ,-1 , 1 , 0 , 0 ;];
b=[ 23 ; 7 ; 17 ; 16 ; 26 ; 1 ;10 ; 9; 13 ];

ATA = transpose(A)*A;
first=cond(ATA)
size1=size(ATA);
new_ATA = ATA(2:size1(1), 2:size1(2));
modified=cond(new_ATA)
ATb = transpose(A)*b;
Temp = ATb;
Temp(1) =[];
x = (new_ATA)\Temp;
x=x*100/max(x)