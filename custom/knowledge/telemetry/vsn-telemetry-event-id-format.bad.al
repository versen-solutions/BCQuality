codeunit 50100 "VSN Rating Telemetry"
{
    Access = Internal;

    procedure LogRatingStarted()
    begin
        Session.LogMessage('CR0001', 'Customer rating started', Verbosity::Normal, DataClassification::SystemMetadata, TelemetryScope::All, 'Category', 'VSNRating');
    end;

    procedure LogRatingFinished()
    begin
        Session.LogMessage('CR0001', 'Customer rating finished', Verbosity::Normal, DataClassification::SystemMetadata, TelemetryScope::All, 'Category', 'VSNRating');
    end;
}
