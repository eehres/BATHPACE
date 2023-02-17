CREATE TABLE IF NOT EXISTS product(
p_id VARCHAR(10) NOT NULL,
p_name  VARCHAR(20),
p_unitPrice INTEGER,
p_description TEXT,
p_manufacturer VARCHAR(20),
p_category VARCHAR(20),
p_perfume VARCHAR(5),
p_url VARCHAR(20),
p_fileName  VARCHAR(20),
PRIMARY KEY(p_id)
)default CHARSET=utf8;