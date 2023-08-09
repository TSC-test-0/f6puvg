using { guitarstore } from '../db/schema.cds';

service guitarstoreSrv {
  entity Product as projection on guitarstore.Product;
  entity Audience as projection on guitarstore.Audience;
  entity Warehouse as projection on guitarstore.Warehouse;
  entity Discount as projection on guitarstore.Discount;
}