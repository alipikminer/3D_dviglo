uses GraphAbc,ABCButtons;





var cubex1,cubex2,cubey1,cubey2,cubex3,cubex4,cubey3,cubey4: integer;
var cubux1,cubux2,cubuy1,cubuy2:real;
var dalnost,sel,scale:integer;
var i,ii: integer;


procedure everythyng();
var i:integer;
begin
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

line(501,1,501,501,clBlack);
line(1,501,501,501,clBlack);
line(501,120,650,120,clBlack);
line(650,120,650,1,clBlack);

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
textOut(512,90,'Position: x:'+cubux1+';               y:'+cubuy1);
sleep(100);
//until 2=3;

  //goto updute;
end;

procedure button_scale_minus();
begin
  scale:=scale-1;
  everythyng;
end;
procedure button_scale_plus();
begin
  scale:=scale+1;
  everythyng;
end;
procedure button_x_plus();
begin
  cubux1:=cubux1+1;
  everythyng;
  end;
procedure button_x_minus();
begin
  cubux1:=cubux1-1;
  everythyng;
end;
procedure button_y_plus();
begin
  cubuy1:=cubuy1+1;
everythyng;
end;
procedure button_y_minus();
begin
  cubuy1:=cubuy1-1;
  everythyng;
end;
procedure button_z_plus();
begin
  dalnost:=dalnost+1;
  everythyng;
end;
procedure button_z_minus();
begin
  dalnost:=dalnost-1;
  everythyng;
end;
var b1,b2,b3,b4,b5,b6,b7,b8:buttonABC;

begin

cubux1:=50;
cubuy1:=50;
scale:=50;
dalnost:=50;
b1 := new buttonABC(547, 70, 15, 15, '+',clGray);
b2 := new buttonABC(561, 70, 15, 15, '-',clGray);
b3 := new buttonABC(557, 90, 15, 15, '+',clGray);
b4 := new buttonABC(571, 90, 15, 15, '-',clGray);
b5 := new buttonABC(607, 90, 15, 15, '+',clGray);
b6 := new buttonABC(621, 90, 15, 15, '-',clGray);
b7 := new buttonABC(547, 50, 15, 15, '+',clGray);
b8 := new buttonABC(561, 50, 15, 15, '-',clGray);
  b1.OnClick := button_scale_plus;
  b2.OnClick := button_scale_minus;
  b3.OnClick := button_x_plus;
  b4.OnClick := button_x_minus;
  b5.OnClick := button_y_plus;
  b6.OnClick := button_y_minus;
  b7.OnClick := button_z_plus;
  b8.OnClick := button_z_minus;
end.
