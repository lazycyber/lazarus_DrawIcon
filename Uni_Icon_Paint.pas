unit Uni_Icon_Paint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  T_IconPaint = class
  private
    { Private declarations }
    fIcon: TIcon;
    fIconWidth: integer;
    fIconHeight: integer;
    procedure SetIconWidth(NewIconWidth: integer);
    procedure SetIconHeight(NewIconHeight: integer);
  public
    { Public declarations }
    IconInfo: TIconInfo;
    InvisbleMask: TBitmap;
    IconMask: TBitmap;
    constructor Create;
    destructor Destroy; override;

    property IconWidth: integer read fIconWidth write SetIconWidth;
    property IconHeight: integer read fIconHeight write SetIconHeight;

    function GetIcon: TIcon;
    procedure SetIcon(Value: TIcon);
  end;

implementation

constructor T_IconPaint.Create;
begin
  inherited;
  //************
  fIcon := TIcon.Create;
  InvisbleMask := TBitmap.Create;
  IconMask := TBitmap.Create;

  fIconWidth := 32;
  fIconHeight := 32;

  InvisbleMask.Width := fIconWidth;
  InvisbleMask.Height := fIconHeight;

  IconMask.Width := fIconWidth;
  IconMask.Height := fIconHeight;


//  InvisbleMask.Canvas.Pen.Color := clWhite;//clBlack;
  InvisbleMask.Canvas.Brush.Color := clBlack;//clBlue;//clWhite;//
  InvisbleMask.Canvas.Pen.Color := InvisbleMask.Canvas.Brush.Color;
  InvisbleMask.Canvas.Rectangle(0, 0, fIconWidth, fIconHeight);

//  InvisbleMask.Canvas.Brush.Color := clBlack;//clWhite;//
//  InvisbleMask.Canvas.Pen.Color := InvisbleMask.Canvas.Brush.Color;
//  InvisbleMask.Canvas.Rectangle(20, 20, 30, 30);

  IconMask.Canvas.Brush.Color := clWhite;//clRed;//clBlack;//
  IconMask.Canvas.Pen.Color := IconMask.Canvas.Pen.Color;
  IconMask.Canvas.Rectangle(0, 0, fIconWidth, fIconHeight);

//  IconMask.Canvas.Brush.Color := clBlack;//clRed;//
//  //IconMask.Canvas.Brush.Color := clWhite;//clWhite;//
//  IconMask.Canvas.Pen.Color := IconMask.Canvas.Pen.Color;
//  IconMask.Canvas.Rectangle(10, 10, 20, 20);

  IconInfo.fIcon := true;
  IconInfo.xHotspot := 0;
  IconInfo.yHotspot := 0;
  IconInfo.hbmMask := InvisbleMask.Handle;
  IconInfo.hbmColor := IconMask.Handle;

  IconInfo.hbmMask := InvisbleMask.Handle;
  IconInfo.hbmColor := IconMask.Handle;

  fIcon.Handle := CreateIconIndirect(IconInfo);

  //Application.Icon := Icon;
end;

destructor T_IconPaint.Destroy;
begin
  DestroyIcon(fIcon.Handle);
  fIcon.Free;
  InvisbleMask.Free;
  IconMask.Free;
  //************
  inherited;
end;

function T_IconPaint.GetIcon: TIcon;
begin
  IconInfo.hbmMask := InvisbleMask.Handle;
  IconInfo.hbmColor := IconMask.Handle;

  DestroyIcon(fIcon.Handle);
  fIcon.Handle := CreateIconIndirect(IconInfo);

  Result := fIcon;
//  Icon.s.SaveToFile('TestIco.ico');

end;

procedure T_IconPaint.SetIcon(Value: TIcon);
begin
  IconInfo.hbmMask := InvisbleMask.Handle;
  IconInfo.hbmColor := IconMask.Handle;

  DestroyIcon(fIcon.Handle);
  fIcon.Handle := CreateIconIndirect(IconInfo);
  //Icon.Assign(Value);
  Value.Assign(fIcon);
end;

procedure T_IconPaint.SetIconWidth(NewIconWidth: integer);
begin
  fIconWidth := NewIconWidth;
  InvisbleMask.Width := fIconWidth;
  IconMask.Width := fIconWidth;
end;

procedure T_IconPaint.SetIconHeight(NewIconHeight: integer);
begin
  fIconHeight := NewIconHeight;
  InvisbleMask.Height := fIconHeight;
  IconMask.Height := fIconHeight;
end;

end.
