page 50100 "JNNItemTest"
{
    PageType = List;
    SourceTable = Item;
    
    layout
    {
        area(content)
        {
            repeater(books)
            {
                  field("No.";"No."){
                    ApplicationArea=All;
                }
            }
        }
    }
    
 
}