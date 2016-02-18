unit BaseTestU;

interface

uses
  DUnitX.TestFramework, BOs;

type

  [TestFixture]
  TBaseTest = class(TObject)
  private
    FSubscriber: TSubscriber;
    procedure SetSubscriber(const Value: TSubscriber);
  public
    property Subscriber: TSubscriber read FSubscriber write SetSubscriber;
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

uses
  System.SysUtils, EventBus;

{ TBaseTest }

procedure TBaseTest.SetSubscriber(const Value: TSubscriber);
begin
  FSubscriber := Value;
end;

procedure TBaseTest.Setup;
begin
end;

procedure TBaseTest.TearDown;
begin
  // TEventBus.GetDefault.Free;
end;

end.
