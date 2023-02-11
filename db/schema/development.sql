INSERT INTO products (name, brand, description, product_code, quantity)
  VALUES
  ('Blender', 'Kitchen Gadgets', 'A small hand blender.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 10),
  ('Mixer', 'Kitchen Gadgets', 'A large stand mixer used to mix ingredients in a bowl.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 5),
  ('Chefs Knife', 'Chef Steel', 'A large kitchen knife.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 15),
  ('Bread Knife', 'Chef Steel', 'A large, serrated knife used for cutting bread.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 14),
  ('Steak Knife', 'Chef Steel', 'A small, serrated knife used for cutting meat.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 22),
  ('Fillet Knife', 'Chef Steel', 'A small, curved pairing knife used to peel the skin of off fish fillets.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 4),
  ('Stainless Steel Set', 'Cookery', 'A set of stainless steel skillets and pots.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 8),
  ('Cast Iron Pan Set', 'Cookery', 'A set of cast iron pans and skillets.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 3),
  ('Non-Stick Set', 'Cookery', 'A set of non-stick skillets and pots.', substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 6),
  ('Dutch Oven', 'Cookery', 'A clay-molded, cast iron pot.',substr(concat(md5(random()::text), md5(random()::text)), 0, 5), 2);