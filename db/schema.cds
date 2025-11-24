namespace order;
using {cuid} from '@sap/cds/common';

entity Order {
    key ID : UUID;
    customerID: String;
    orederdate: DateTime;
    TotalAmount: Decimal(10, 2); 
    items: Composition of many OrderItem on items.OrderID = $self;
}

entity OrderItem {
    key ID : UUID;
    OrderID: Association to Order;
    productName: localized String;
    quantity: Integer;
    UnitPrice: Decimal(10,2);
    TotalPrice: Decimal(10,2);
    
}

