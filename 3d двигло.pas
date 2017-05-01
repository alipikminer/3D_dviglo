uses GraphAbc;

var cubex1,cubex2,cubey1,cubey2,cubex3,cubex4,cubey3,cubey4: integer;
var cubux1,cubux2,cubuy1,cubuy2:real;
var dalnost,sel,scale:integer;
var i,ii: integer;
begin

cubux1:=50;
cubux2:=150;
cubuy1:=50;
cubuy2:=150;
repeat
readln(sel);
if sel=1 then readln(dalnost);
if sel=2 then
begin
 readln(scale);
cubux2:=cubux1+scale*10;
cubuy2:=cubux1+scale*10;
end;
if sel=3 then
begin
readln(cubux1);
readln(cubuy1);

end;
cubex1:=round(int(cubux1/10));
cubex2:=round(int(cubux2/10));
cubey1:=round(int(cubuy1/10));
cubey2:=round(int(cubuy2/10));
cubex3:=round(int((cubux1/10)+dalnost));
cubex4:=round(int((cubux2/10)+dalnost));
cubey3:=round(int((cubuy1/10)+dalnost));
cubey4:=round(int((cubuy2/10)+dalnost));

for i:= 1 to 500 do
begin
line(i,0,i,500,clWhite);
end;

line(cubex1,cubey1,cubex2,cubey1,clBlack);
line(cubex2,cubey1,cubex2,cubey2,clBlack);
line(cubex1,cubey2,cubex2,cubey2,clBlack);
line(cubex1,cubey1,cubex1,cubey2,clBlack);

line(cubex3,cubey3,cubex4,cubey3,clBlack);
line(cubex4,cubey3,cubex4,cubey4,clBlack);
line(cubex3,cubey4,cubex4,cubey4,clBlack);
line(cubex3,cubey3,cubex3,cubey4,clBlack);

line(cubex3,cubey3,cubex1,cubey1,clBlack);
line(cubex3,cubey4,cubex1,cubey2,clBlack);
line(cubex4,cubey3,cubex2,cubey1,clBlack);
line(cubex4,cubey4,cubex2,cubey2,clBlack);
textOut(512,10,'Current selected :');
case sel of
1:textOut(512,30,'Z scale' );
2:textOut(512,30,'Scale');
3:textOut(512,30,'Position');

end;
textOut(512,50,'Z scale: '+dalnost );
textOut(512,70,'Scale: '+ scale);
textOut(512,90,'Position: '+cubux1+';'+cubuy1);
until 2=3;

end.