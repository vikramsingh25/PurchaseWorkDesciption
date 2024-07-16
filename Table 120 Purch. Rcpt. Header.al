tableextension 50001 "TableExt 120 PurchRcptHead" extends "Purch. Rcpt. Header"
{
    fields
    {
        field(50000; "Work Description"; Blob)
        {
            DataClassification = ToBeClassified;
            Caption = 'Work Description';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    procedure GetWorkDescription() WorkDescription: Text
    var
        TypeHelper: Codeunit "Type Helper";
        InStream: InStream;
    begin
        CalcFields("ISPL Work Description");
        "ISPL Work Description".CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("ISPL Work Description")));
    end;

    var

}
