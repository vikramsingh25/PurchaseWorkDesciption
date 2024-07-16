pageextension 50003 "PageExt 136 PostPurchRcpt" extends "Posted Purchase Receipt"
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