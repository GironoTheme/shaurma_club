CREATE TABLE posts (
    id INTEGER PRIMARY KEY,
    name_posts VARCHAR(50) NOT NULL
);

CREATE TABLE schedules (
    id INTEGER PRIMARY KEY,
    name_schedule VARCHAR(50) NOT NULL
);

CREATE TABLE workers (
    id INTEGER PRIMARY KEY,
    fio VARCHAR(50) NOT NULL,
    phone VARCHAR(18) NOT NULL,
    email VARCHAR(50) NOT NULL,
    pass_data VARCHAR(10) NOT NULL
    FOREIGN KEY (posts_id) REFERENCES posts(id)
        ON DELETE SET NULL ON UPDATE NO ACTION,
    FOREIGN KEY (schedules_id) REFERENCES schedules(id)
        ON DELETE SET NULL ON UPDATE NO ACTION
);

CREATE TABLE bayers (
    id INTEGER PRIMARY KEY,
    fio VARCHAR(50) NOT NULL,
    phone VARCHAR(18) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(50)
);

CREATE TABLE items (
    id INTEGER PRIMARY KEY,
    name_item VARCHAR(50) NOT NULL,
    brand VARCHAR(50),
    descript VARCHAR(100),
    price INTEGER(10),
    quantity INTEGER(5)
);

CREATE TABLE orders (
    id INTEGER PRIMARY KEY,
    units_items INTEGER(10),
    price_order INTEGER(10),
    FOREIGN KEY (item_id) REFERENCES items(id)
        ON DELETE SET NULL ON UPDATE NO ACTION,
    FOREIGN KEY (bayer_id) REFERENCES bayers(id)
        ON DELETE SET NULL ON UPDATE NO ACTION,
    FOREIGN KEY (worker_id) REFERENCES workers(id)
        ON DELETE SET NULL ON UPDATE NO ACTION
);


INSERT INTO posts(id, name_posts) VALUES (1, 'Директор');
INSERT INTO posts(id, name_posts) VALUES (2, 'Менеджер');
INSERT INTO posts(id, name_posts) VALUES (3, 'Продавец');

INSERT INTO schedules(id, name_schedule) VALUES (1, 'Установленный график');
INSERT INTO schedules(id, name_schedule) VALUES (2, 'Свободный график');

INSERT INTO workers(id, fio, phone, email, pass_data, posts_id, schedules_id) VALUES (1, 'Мальцева Мария Данииловна', '7(900)863-41-14', 'grirouffo@yopmail.com', '1818038406', 1, 1);
INSERT INTO workers(id, fio, phone, email, pass_data, posts_id, schedules_id) VALUES (2, 'Константинов Дмитрий Фёдорович', '7(988)276-58-98', 'uma-3086@yopmail.com', '1818038406', 2, 1);
INSERT INTO workers(id, fio, phone, email, pass_data, posts_id, schedules_id) VALUES (3, 'Егоров Константин Арсентьевич', '7(967)625-87-71', 'broi-7622@yopmail.com', '1818038406', 3, 1);
INSERT INTO workers(id, fio, phone, email, pass_data, posts_id, schedules_id) VALUES (4, 'Курочкина Камила Елисеевна', '7(911)083-81-14', 'nna-3772@yopmail.com', '1818038406', 3, 2);
INSERT INTO workers(id, fio, phone, email, pass_data, posts_id, schedules_id) VALUES (5, 'Алексеев Егор Иванович', '7(919)107-16-34', 'kelle-3137@yopmail.com', '1818038406', 3, 2);

INSERT INTO bayers(id, fio, phone, email, address) VALUES (1, 'Поляков Роман Иванович', '7(909)373-58-90', 'utetu-2492@yopmail.com', 'Бульвар Славы, 44');
INSERT INTO bayers(id, fio, phone, email, address) VALUES (2, 'Петров Максим Семёнович', '7(958)100-01-85', 'ou-8795@yopmail.com', 'ул. Ленина, 77');
INSERT INTO bayers(id, fio, phone, email, address) VALUES (3, 'Федотов Данила Андреевич', '7(921)306-01-55', 'oiho-1862@yopmail.com', 'пер. Бухарестская, 52');
INSERT INTO bayers(id, fio, phone, email, address) VALUES (4, 'Дружинин Фёдор Никитич', '7(965)681-31-22', 'ppatu-7852@yopmail.com', 'пер. Домодедовская, 33');
INSERT INTO bayers(id, fio, phone, email, address) VALUES (5, 'Карпов Максим Никитич', '7(900)881-47-30', 'lleva-8633@yopmail.com', 'ул. Будапештсткая, 11');
INSERT INTO bayers(id, fio, phone, email, address) VALUES (6, 'Шишкин Артемий Богданович', '7(958)264-30-29', 'iwi-8104@yopmail.com', 'пр. Сталина, 56');
INSERT INTO bayers(id, fio, phone, email, address) VALUES (7, 'Черкасова Софья Данииловна', '7(996)302-29-82', 'hulleu-3298@yopmail.com', 'пер. Гоголя, 64');

INSERT INTO items(id, name_item, brand, descript, price, quantity) VALUES (1, 'FSX315CTBS', 'YAMAHA', 'Электроакустическая гитара', 40290, 3);
INSERT INTO items(id, name_item, brand, descript, price, quantity) VALUES (2, 'F310', 'YAMAHA', 'Акустическая гитара', 22890, 5);
INSERT INTO items(id, name_item, brand, descript, price, quantity) VALUES (3, 'Aurora D1 C BK', 'ROCKDALE', 'Акустическая гитара', 9200, 11);
INSERT INTO items(id, name_item, brand, descript, price, quantity) VALUES (4, 'Stars Black Limited Edition HSS BK', 'ROCKDALE ', 'Электрогитара', 12700, 10);
INSERT INTO items(id, name_item, brand, descript, price, quantity) VALUES (5, 'GRX70QA-TRB', 'IBANEZ ', 'Электрогитара', 23800, 7);

INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (1, 1, 22890, 2, 4, 3);
INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (2, 1, 12700, 4, 7, 5);
INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (3, 1, 23800, 5, 1, 4);
INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (4, 1, 22890, 2, 6, 4);
INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (5, 1, 40290, 1, 3, 3);
INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (6, 1, 23800, 5, 5, 5);
INSERT INTO orders(id, units_items, price_order, item_id, bayer_id, worker_id) VALUES (7, 1, 40290, 1, 2, 3);
