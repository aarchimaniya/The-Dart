import 'dart:io';

class Product {
 int pro_id;
 String pro_name;
 int pro_price;
 String cat_name;

 Product({required this.pro_id, required this.pro_name, required this.pro_price, required this.cat_name});
}

class Customer {
 int cust_id;
 String cust_name;
 String cust_contact;
 List<Map<String, dynamic>> cust_cart;

 Customer({required this.cust_id, required this.cust_name, required this.cust_contact, required this.cust_cart});

 void add_to_cart(Product product) {
   cust_cart.add({'pro_id': product.pro_id, 'pro_name': product.pro_name, 'pro_qty': 1, 'pro_price': product.pro_price});
 }

 double calculate_bill() {
   double total = 0;
   cust_cart.forEach((item) {
     total += item['pro_qty'] * item['pro_price'];
   });

   if (total >= 500 && total <= 1500) {
     total -= total * 0.1;
   } else if (total > 1500 && total <= 3500) {
     total -= total * 0.2;
   } else if (total > 3500 && total <= 6500) {
     total -= total * 0.25;
   } else if (total > 6500) {
     total -= total * 0.3;
   }

   return total;
 }

 void search_customer(int cust_id) {
   if (cust_cart.isNotEmpty) {
     cust_cart.forEach((item) {
       stdout.write('Product ID: ${item['pro_id']}, Product Name: ${item['pro_name']}, Product Quantity: ${item['pro_qty']}, Product Price: ${item['pro_price']}\n');
     });
     stdout.writeln('Total Bill: ${calculate_bill()}');
   } else {
     stdout.writeln('No products in cart');
   }
 }
}

class SuperMarket {
 List<Customer> customers;

 SuperMarket({required this.customers});

 void add_customer(Customer customer) {
   customers.add(customer);
 }

 void add_product_to_cart(int cust_id, Product product) {
   Customer? customer = customers.firstWhere((cust) => cust.cust_id == cust_id, orElse: () => null);
   if (customer != null) {
     customer.add_to_cart(product);
   } else {
     stdout.writeln('Customer not found');
   }
 }
}

void main() {
 SuperMarket superMarket = SuperMarket(customers: []); 

 superMarket.add_customer(Customer(cust_id: 1, cust_name: 'Kartik', cust_contact: '1234567890', cust_cart: []));

 List<Product> products = [
    Product(pro_id: 1, pro_name: 'Product 1', pro_price: 500, cat_name: 'Category 1'),
    Product(pro_id: 2, pro_name: 'Product 2', pro_price: 1000, cat_name: 'Category 2'),
    Product(pro_id: 3, pro_name: 'Product 3', pro_price: 3000, cat_name: 'Category 3'),
 ];

 superMarket.add_product_to_cart(1, products[0]);
 superMarket.add_product_to_cart(1, products[1]);
 superMarket.add_product_to_cart(1, products[2]);

 superMarket.customers[0].search_customer(1);
}