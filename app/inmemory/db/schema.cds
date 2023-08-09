namespace guitarstore;

entity Product {
  key ID: UUID;
  productName: String(200);
  productDescription: String(500);
  price: Decimal(10,2);
  targetAudience: Association to Audience;
  warehouse: Association to Warehouse;
  discount: Association to Discount;
}

entity Audience {
  key ID: UUID;
  audienceName: String(200);
  pitch: String(500);
  products: Association to many Product on products.targetAudience = $self;
}

entity Warehouse {
  key ID: UUID;
  warehouseLocation: String(200);
  stock: Integer;
  products: Association to many Product on products.warehouse = $self;
}

entity Discount {
  key ID: UUID;
  discountCode: String(50);
  discountAmount: Decimal(5,2);
  products: Association to many Product on products.discount = $self;
}

