page 70000 "Customer Vendor Staging"
{

    ApplicationArea = All;
    Caption = 'Customer Vendor Staging';
    PageType = List;
    SourceTable = "CustVend Staging";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EntryNo; Rec.EntryNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Entry No.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Status';
                }
                field("Message / Error"; Rec."Message / Error")
                {
                    ApplicationArea = All;
                    ToolTip = 'Message / Error';
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer / Vendor';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer / Vendor Name';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Phone No.';
                }
                field("Posting Group"; Rec."Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer / Vendor Posting Group';
                }

            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(ImportExcel)
            {
                ApplicationArea = All;
                ToolTip = 'Import an Excel File.';
                Caption = 'Excel Import';
                Image = ImportExcel;
                RunObject = codeunit "Import To Staging";
            }
        }
    }
}
