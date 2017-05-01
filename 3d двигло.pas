uses GraphAbc,ABCButtons;





var cubex1,cubex2,cubey1,cubey2,cubex3,cubex4,cubey3,cubey4:array[1..10] of integer;
var cubux1,cubux2,cubuy1,cubuy2:array[1..10] of real;
var dalnost,scale:array[1..10] of integer;
var i,ii,sel: integer;


procedure everythyng();
var i:integer;
begin
for i:=1 to 10 do
begin
cubux2[i]:=cubux1[i]+scale[i]*10;
cubuy2[i]:=cubux1[i]+scale[i]*10;
cubex1[i]:=round(int(cubux1[i]/10));
cubex2[i]:=round(int(cubux2[i]/10));
cubey1[i]:=round(int(cubuy1[i]/10));
cubey2[i]:=round(int(cubuy2[i]/10));
cubex3[i]:=round(int((cubux1[i]/10)+dalnost[i]));
cubex4[i]:=round(int((cubux2[i]/10)+dalnost[i]));
cubey3[i]:=round(int((cubuy1[i]/10)+dalnost[i]));
cubey4[i]:=round(int((cubuy2[i]/10)+dalnost[i]));
end;
for i:= 1 to 500 do
begin
line(i,0,i,500,clWhite);
end;

line(501,1,501,501,clBlack);
line(1,501,501,501,clBlack);
line(501,120,650,120,clBlack);
line(650,120,650,1,clBlack);
for i:=1 to 10 do
begin
line(cubex1[i],cubey1[i],cubex2[i],cubey1[i],clBlack);
line(cubex2[i],cubey1[i],cubex2[i],cubey2[i],clBlack);
line(cubex1[i],cubey2[i],cubex2[i],cubey2[i],clBlack);
line(cubex1[i],cubey1[i],cubex1[i],cubey2[i],clBlack);

line(cubex3[i],cubey3[i],cubex4[i],cubey3[i],clBlack);
line(cubex4[i],cubey3[i],cubex4[i],cubey4[i],clBlack);
line(cubex3[i],cubey4[i],cubex4[i],cubey4[i],clBlack);
line(cubex3[i],cubey3[i],cubex3[i],cubey4[i],clBlack);

line(cubex3[i],cubey3[i],cubex1[i],cubey1[i],clBlack);
line(cubex3[i],cubey4[i],cubex1[i],cubey2[i],clBlack);
line(cubex4[i],cubey3[i],cubex2[i],cubey1[i],clBlack);
line(cubex4[i],cubey4[i],cubex2[i],cubey2[i],clBlack);
end;
textOut(512,10,'Current selected :'+sel);
case sel of
1:textOut(512,30,'Z scale' );
2:textOut(512,30,'Scale');
3:textOut(512,30,'Position');

end;
textOut(512,50,'Z scale: '+dalnost[sel] );
textOut(512,70,'Scale: '+ scale[sel]);
textOut(512,90,'Position: x:'+cubux1[sel]+';               y:'+cubuy1[sel]);
sleep(100);
//until 2=3;

  //goto updute;
end;

procedure button_scale_minus();
begin
  scale[sel]:=scale[sel]-1;
  everythyng;
end;
procedure button_scale_plus();
begin
  scale[sel]:=scale[sel]+1;
  everythyng;
end;
procedure button_x_plus();
begin
  cubux1[sel]:=cubux1[sel]+10;
  everythyng;
  end;
procedure button_x_minus();
begin
  cubux1[sel]:=cubux1[sel]-10;
  everythyng;
end;
procedure button_y_plus();
begin
  cubuy1[sel]:=cubuy1[sel]+1;
everythyng;
end;
procedure button_y_minus();
begin
  cubuy1[sel]:=cubuy1[sel]-1;
  everythyng;
end;
procedure button_z_plus();
begin
  dalnost[sel]:=dalnost[sel]+1;
  everythyng;
end;
procedure button_z_minus();
begin
  dalnost[sel]:=dalnost[sel]-1;
everythyng;
end;

procedure sel_plus();
begin
sel:=sel+1;
if sel>=11 then sel:=10;
everythyng;
end;

procedure sel_minus();
begin
sel:=sel-1;
if sel>=0 then sel:=1;
everythyng;
end;

var b1,b2,b3,b4,b5,b6,b7,b8,b9,b10:buttonABC;

begin
sel:=1;
for i:=1 to 10 do
begin
cubux1[i]:=200;
cubuy1[i]:=200;
cubux2[i]:=250;
cubuy2[i]:=250;
scale[i]:=50;
dalnost[i]:=50;
end;
b1 := new buttonABC(547, 70, 15, 15, '+',clGray);
b2 := new buttonABC(561, 70, 15, 15, '-',clGray);
b3 := new buttonABC(557, 90, 15, 15, '+',clGray);
b4 := new buttonABC(571, 90, 15, 15, '-',clGray);
b5 := new buttonABC(607, 90, 15, 15, '+',clGray);
b6 := new buttonABC(621, 90, 15, 15, '-',clGray);
b7 := new buttonABC(547, 50, 15, 15, '+',clGray);
b8 := new buttonABC(561, 50, 15, 15, '-',clGray);
b9 := new buttonABC(547, 20, 15, 15, '+',clGray);
b10 := new buttonABC(561, 20, 15, 15, '-',clGray);
  b1.OnClick := button_scale_plus;
  b2.OnClick := button_scale_minus;
  b3.OnClick := button_x_plus;
  b4.OnClick := button_x_minus;
  b5.OnClick := button_y_plus;
  b6.OnClick := button_y_minus;
  b7.OnClick := button_z_plus;
  b8.OnClick := button_z_minus;
  b9.OnClick := sel_plus;
  b10.OnClick := sel_minus;
end.
