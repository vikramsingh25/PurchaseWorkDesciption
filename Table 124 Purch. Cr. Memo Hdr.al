tableextension 50003 "TableExt 124 PurchCrMemoHead" extends "Purch. Cr. Memo Hdr."
{
    fields
    {
        field(50000; "ISPL Work Description"; Blob)
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