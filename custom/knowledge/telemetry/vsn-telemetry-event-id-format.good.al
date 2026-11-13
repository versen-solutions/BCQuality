codeunit 50100 "VSN Rating Telemetry"
{
    Access = Internal;

    procedure LogRatingStarted()
    begin
        Session.LogMessage('VSN0001', 'Customer rating started', Verbosity::Normal, DataClassification::SystemMetadata, TelemetryScope::All, 'Category', 'VSNRating');
    end;

    procedure LogRatingFinished()
    begin
        Session.LogMessage('VSN0002', 'Customer rating finished', Verbosity::Normal, DataClassification::SystemMetadata, TelemetryScope::All, 'Category', 'VSNRating');
    end;
}
