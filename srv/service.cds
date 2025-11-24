using order from '../db/schema';

service OrderManagmentService {

    entity Order as projection on order.Order;
    entity OrderItem as projection on order.OrderItem;


}

