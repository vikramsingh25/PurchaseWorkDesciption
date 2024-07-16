pageextension 50005 "PageExt 140 PostPurchCrMemo" extends "Posted Purchase Credit Memo"
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