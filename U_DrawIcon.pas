unit U_DrawIcon;

{
  Draw tray icon.
}

interface

uses
  Graphics;

procedure DrawIcon1();

implementation

uses
  Unit1,

  SysUtils,

  Forms,
  Classes,

  Uni_Icon_Paint;

var
  IP16: T_IconPaint;

 // вырвал из другого фреймворка (Rnd.getInt) - потом их объединим...
  function getInt(valMin: integer=0; valMax: integer=255): integer;
  begin
    if valMin<valMax then begin
      Result := valMin +Random(valMax-valMin+1);
    end else begin
      Result := valMax +Random(valMin-valMax+1);
    end;
  end;

procedure DrawIcon1();
var
  iconText1: String;
begin

  IP16.IconMask.Canvas.Brush.Style := bsSolid;
  IP16.IconMask.Canvas.Brush.Color := clNavy;//getInt(clWhite, clBlack);//$660066;//

  IP16.IconMask.Canvas.FillRect(Rect(0,0,16,16));

  IP16.IconMask.Canvas.Pen.Color := clGray;//clLime;//clGray;//clBlue;//clRed;//clWhite;//clNavy;//clGray;//clGreen;//$000077;//

  IP16.IconMask.Canvas.MoveTo(1, 8);
  IP16.IconMask.Canvas.LineTo(15, 8);

  IP16.IconMask.Canvas.Brush.Style := bsClear;

  IP16.IconMask.Canvas.Font.Color := $bbbbFF;

  IP16.IconMask.Canvas.Font.Size := 7;
  iconText1 := IntToStr(getInt(100, 999));//'000';
  IP16.IconMask.Canvas.TextOut(2, 0, iconText1);

  IP16.IconMask.Canvas.Font.Color := clYellow;

  iconText1 := IntToStr(getInt(100, 999));//'000';
  IP16.IconMask.Canvas.Font.Size := 7;
  IP16.IconMask.Canvas.TextOut(2, 8, iconText1);

  Application.Icon := IP16.GetIcon;
  Form1.TrayIcon1.Icon := Application.Icon;
  Form1.Icon := Application.Icon;
  Form1.Image1.Picture.Icon := Application.Icon;
end;

initialization
  IP16 := T_IconPaint.Create;
  IP16.IconWidth := 16;
  IP16.IconHeight := 16;

finalization
  IP16.Free;

end.
