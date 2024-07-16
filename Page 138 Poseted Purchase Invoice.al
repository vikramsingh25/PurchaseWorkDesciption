pageextension 50004 "PageExt 138 PostPurchInv" extends "Posted Purchase Invoice"
{
    layout
    {
        addlast(General)
        {

            group("Work Description")
            {
                Caption = 'Work Description';
                field(GetWorkDescription; Rec.GetWorkDescription())
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    Importance = Additional;
                    MultiLine = true;
                    ShowCaption = false;
                }
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

}