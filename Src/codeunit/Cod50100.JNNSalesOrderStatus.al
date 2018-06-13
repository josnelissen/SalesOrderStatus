codeunit 50100 "JNNSalesOrderStatus"
{
 
 [Scope('Personalization')] 
 
  procedure GetOrderStatus(OrderNo: Code[20]):Text;
  var
      SalesOrder: Record "Sales Header";
  begin
    if SalesOrder.Get(SalesOrder."Document Type"::Order, OrderNo)  then
        exit(Format(SalesOrder.Status))
    else
        exit('NoOrder');

  end;


  

}