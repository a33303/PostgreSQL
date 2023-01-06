DROP TABLE IF EXISTS specificationtype;

CREATE TABLE specificationtype (
  spec_type VARCHAR(20) PRIMARY KEY,
  description VARCHAR(255) DEFAULT NULL
);

INSERT INTO specificationtype (spec_type, description) VALUES 
  ('ALTERNATIVE', 'замена'),
  ('DEFAULT', 'заводской'),
  ('TUNING', 'тюнинг');
