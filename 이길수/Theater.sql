CREATE TABLE 극장 (
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    region TEXT
);

CREATE TABLE 고객 (
    id INTEGER NOT NULL PRIMARY KEY,
    name TEXT NOT NULL,
    gender VARCHAR(20)
);

CREATE TABLE 예약 (
    num INT NOT NULL PRIMARY KEY,
    theater_id INTEGER,
    customer_id INTEGER ,
    FOREIGN KEY(theater_id) REFERENCES 극장(id),
    FOREIGN KEY(customer_id) REFERENCES 고객(id)
);

INSERT INTO 극장 (id, name, region)
VALUES (1, 'CGV', '용산아이파크몰'),
       (2, '씨네Q', '신도림'),
       (3, 'CGV', '영등포'),
       (4, '롯데시네마', '부천');

INSERT INTO 고객 (id, name, gender)
VALUES (1, '홍길동', '남'),
       (2, '이한수', '남'),
       (3, '박지수', '여'),
       (4, '김지은', '여');

INSERT INTO 예약 (num, theater_id, customer_id)
VALUES (1, 2, 1),
       (2, 3, 3),
       (3, 1, 2),
       (4, 4, 4);

SELECT *
FROM 예약
JOIN 극장
ON 예약.theater_id=극장.id
JOIN 고객
ON 예약.customer_id=고객.id