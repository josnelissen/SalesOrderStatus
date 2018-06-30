codeunit 50100 "JNNSalesOrderStatus"
{
 
 [Scope('Personalization')] 
 
  procedure GetOrderStatus(OrderNo: Code[20];CustomerName:text):Text;
  var
      SalesOrder: Record "Sales Header";
  begin
    if SalesOrder.Get(SalesOrder."Document Type"::Order, OrderNo)  then begin;
        if StrPos(UpperCase(SalesOrder."Sell-to Customer Name"),UpperCase(CustomerName)  ) > 0 then
            exit(Format(SalesOrder.Status))
        else
            exit('This is not your order');    
    end else
        exit('NoOrder');

  end;

}