uses GraphAbc;

var cubex1,cubex2,cubey1,cubey2,cubex3,cubex4,cubey3,cubey4: integer;
var cubux1,cubux2,cubuy1,cubuy2:real;
var dalnost:integer;
begin

cubux1:=50;
cubux2:=150;
cubuy1:=50;
cubuy2:=150;
repeat
readln(dalnost);
cubex1:=round(int(cubux1/10));
cubex2:=round(int(cubux2/10));
cubey1:=round(int(cubuy1/10));
cubey2:=round(int(cubuy2/10));
cubex3:=round(int((cubux1/10)+dalnost));
cubex4:=round(int((cubux2/10)+dalnost));
cubey3:=round(int((cubuy1/10)+dalnost));
cubey4:=round(int((cubuy2/10)+dalnost));
{
cubex1:=cubux1;
cubex2:=cubux2;
cubey1:=cubuy1;
cubey2:=cubuy2;
}
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
until 2=3;

end.