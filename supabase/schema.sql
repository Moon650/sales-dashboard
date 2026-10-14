-- Schema for the Supabase "sales" table used by index.html.
-- Run this in the Supabase SQL editor to recreate the table and load the sample rows.

create table public.sales (
  id bigint generated always as identity primary key,
  sale_date date not null,
  region text not null,
  product text not null,
  category text,
  sales_channel text not null,
  unit_price numeric(12,2) not null,
  revenue numeric(14,2) not null,
  cost numeric(14,2) not null,
  profit numeric(14,2) generated always as (revenue - cost) stored
);

create index sales_sale_date_idx on public.sales (sale_date);

alter table public.sales enable row level security;

-- Anyone with the public key may read. No insert, update or delete policies exist, so writes are denied.
create policy "Public can read sales"
  on public.sales for select
  to anon, authenticated
  using (true);

-- Sample rows (illustrative figures)
insert into public.sales (sale_date, region, product, category, sales_channel, unit_price, revenue, cost) values
('2026-01-05','North America','Wireless Mouse','Computers & Accessories','Online',25,3750,2250),
('2026-01-12','Europe','Mechanical Keyboard','Computers & Accessories','Retail Store',89,8010,5340),
('2026-01-19','Asia Pacific','USB-C Hub','Computers & Accessories','Online',39,5850,3510),
('2026-01-26','Latin America','27" Monitor','Computers & Accessories','Distributor',229,13740,10300),
('2026-02-02','North America','Laptop Stand','Computers & Accessories','Online',45,4500,2700),
('2026-02-09','Europe','Noise-Cancelling Headphones','Audio','Retail Store',179,10740,7160),
('2026-02-16','Asia Pacific','Webcam 1080p','Computers & Accessories','Online',59,5310,3540),
('2026-02-23','Middle East','Bluetooth Speaker','Audio','Distributor',69,6210,4140),
('2026-03-02','North America','External SSD 1TB','Computers & Accessories','Online',119,11900,8330),
('2026-03-09','Europe','Smartwatch','Wearables','Retail Store',249,14940,10460),
('2026-03-16','Asia Pacific','Wireless Earbuds','Audio','Online',99,9900,6240),
('2026-03-23','Africa','Portable Power Bank','Power','Distributor',35,4200,2520),
('2026-03-30','North America','Gaming Chair','Furniture & Lighting','Retail Store',299,14950,10470),
('2026-04-06','Latin America','LED Desk Lamp','Furniture & Lighting','Online',32,3840,2110),
('2026-04-13','Europe','Tablet 10"','Computers & Accessories','Online',329,19740,14800),
('2026-04-20','Asia Pacific','Wi-Fi 6 Router','Computers & Accessories','Retail Store',129,10320,7230),
('2026-04-27','Middle East','Smart Home Camera','Cameras & Media','Online',79,7110,4740),
('2026-05-04','North America','Fitness Tracker','Wearables','Distributor',69,8280,5380),
('2026-05-11','Europe','Ergonomic Office Chair','Furniture & Lighting','Retail Store',349,17450,12220),
('2026-05-18','Asia Pacific','Standing Desk','Furniture & Lighting','Online',499,24950,18710),
('2026-05-25','Africa','Solar Charger','Power','Distributor',55,4950,3220),
('2026-06-01','North America','Portable Projector','Cameras & Media','Online',219,13140,9190),
('2026-06-08','Latin America','E-Reader','Cameras & Media','Retail Store',139,9730,6490),
('2026-06-15','Europe','Action Camera','Cameras & Media','Online',189,11340,7940);
