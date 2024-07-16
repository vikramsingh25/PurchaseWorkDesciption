tableextension 50002 "TableExt 122 PurchInvHead" extends "Purch. Inv. Header"
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
        CalcFields("Work Description");
        "ISPL Work Description".CreateInStream(InStream, TEXTENCODING::UTF8);
        exit(TypeHelper.TryReadAsTextWithSepAndFieldErrMsg(InStream, TypeHelper.LFSeparator(), FieldName("Work Description")));
    end;

    var

}
