codeunit 50000 "Purchase Work Description"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", OnBeforeInsertReceiptHeader, '', false, false)]
    local procedure "Purch.-Post_OnBeforeInsertReceiptHeader"(var PurchHeader: Record "Purchase Header"; var PurchRcptHeader: Record "Purch. Rcpt. Header"; var IsHandled: Boolean; CommitIsSuppressed: Boolean)
    begin
        PurchHeader.CalcFields("ISPL Work Description");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", OnBeforeInsertInvoiceHeader, '', false, false)]
    local procedure "Purch.-Post_OnBeforeInsertInvoiceHeader"(var PurchHeader: Record "Purchase Header"; var PurchInvHeader: Record "Purch. Inv. Header"; var IsHandled: Boolean; var Window: Dialog; var HideProgressWindow: Boolean; var SrcCode: Code[10]; var PurchCommentLine: Record "Purch. Comment Line"; var RecordLinkManagement: Codeunit "Record Link Management")
    begin
        PurchHeader.CalcFields("ISPL Work Description");
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Purch.-Post", OnBeforeInserCrMemoHeader, '', false, false)]
    local procedure "Purch.-Post_OnBeforeInserCrMemoHeader"(var PurchHeader: Record "Purchase Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var HideProgressWindow: Boolean; var Window: Dialog; var IsHandled: Boolean; SrcCode: Code[10]; PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr."; var PurchCommentLine: Record "Purch. Comment Line")
    begin
        PurchHeader.CalcFields("ISPL Work Description");
    end;

}