-- 1. ARTISTS
INSERT INTO artists (name, country) VALUES
('Miles Davis', 'USA'),
('John Coltrane', 'USA'),
('Charlie Parker', 'USA'),
('Wayne Shorter', 'USA'),
('Art Blakey', 'USA'),
('Thelonious Monk', 'USA'),
('Charles Mingus', 'USA'),
('Chet Baker', 'USA'),
('Dave Brubeck', 'USA'),
('Sonny Rollins', 'USA'),
('Wes Montgomery', 'USA'),
('Bill Evans', 'USA'),
('Casiopea', 'Japan'),
('Masayoshi Takanaka', 'Japan'),
('Jiro Inagaki', 'Japan'),
('Masabumi Kikuchi', 'Japan'),
('Himiko Kikuchi', 'Japan'),
('Tom Jobim', 'Brazil');

-- 2. ALBUMS
INSERT INTO albums (title, artist_id, release_year, genre, unit_price, stock_quantity) VALUES
('Kind of Blue', 1, 1959, 'Modal Jazz', 24.99, 7),
('In a Silent Way', 1, 1969, 'Jazz Fusion', 21.99, 5),
('Bitches Brew', 1, 1970, 'Jazz Fusion', 27.99, 4),
('My Favorite Things', 2, 1961, 'Modal Jazz', 23.99, 6),
('A Love Supreme', 2, 1965, 'Spiritual Jazz', 21.99, 7),
('Charlie Parker With Strings', 3, 1950, 'Cool Jazz', 14.99, 12),
('Speak No Evil', 4, 1966, 'Post-Bop', 21.99, 7),
('Art Blakey and The Jazz Messengers', 5, 1959, 'Hard Bop', 17.99, 10),
('The Big Beat', 5, 1960, 'Hard Bop', 17.99, 8),
('Monk''s Dream', 6, 1963, 'Hard Bop', 20.99, 4),
('Mingus Ah Um', 7, 1959, 'Post-Bop', 21.99, 3),
('The Black Saint and the Sinner Lady', 7, 1963, 'Avant-Garde Jazz', 21.99, 7),
('Chet Baker Sings', 8, 1954, 'Cool Jazz', 14.99, 12),
('Chet', 8, 1959, 'Cool Jazz', 14.99, 9),
('Time Out', 9, 1959, 'Cool Jazz', 17.99, 5),
('Saxophone Colossus', 10, 1957, 'Hard Bop', 19.99, 6),
('The Incredible Jazz Guitar of Wes Montgomery', 11, 1960, 'Hard Bop', 17.99, 8),
('Portrait in Jazz', 12, 1960, 'Cool Jazz', 17.99, 11),
('Explorations', 12, 1961, 'Cool Jazz', 18.99, 7),
('Casiopea', 13, 1979, 'Jazz Fusion', 17.99, 12),
('Super Flight', 13, 1979, 'Jazz Fusion', 14.99, 9),
('Mint Jams', 13, 1982, 'Jazz Fusion', 21.99, 14),
('Seychelles', 14, 1976, 'Jazz Fusion', 17.99, 8),
('An Insatiable High', 14, 1977, 'Jazz Fusion', 17.99, 6),
('Brasilian Skies', 14, 1978, 'Jazz Fusion', 17.99, 9),
('In the Groove', 15, 1973, 'Jazz Fusion', 14.99, 3),
('Funky Stuff', 15, 1975, 'Jazz Fusion', 15.99, 6),
('Matrix', 16, 1969, 'Modal Jazz', 14.99, 6),
('Flying Beagle', 17, 1987, 'Jazz Fusion', 17.99, 11),
('Wave', 18, 1967, 'Bossa nova', 14.99, 7),
('Stone Flower', 18, 1970, 'Bossa nova', 14.99, 10),
('Elis & Tom', 18, 1974, 'Bossa nova', 14.99, 5);

-- 3. CUSTOMERS
INSERT INTO customers (first_name, last_name, email) VALUES
('Isolda', 'Hampton', 'izzyh@gmail.com'),
('Sebastian', 'Santoro', 'sebstoro@gmail.com'),
('Peregrine', 'Wetherby', 'perry_wetherby@wcapital.com'),
('Archibald', 'Wetherby', 'archie.wetherby@lse.com'),
('Marigold', 'Wetherby', 'mariwetherby@icloud.com'),
('Imogen', 'Henderson', 'immyh@gmail.com'),
('Lord Cedric', 'Wetherby', 'cedric_percival@lords.com'),
('Hamza', 'Hossain', 'hamzahoss7@gmail.com'),
('Lucrezia', 'Fittipaldi', 'lucre_fitti@wcapital.com'),
('Francesca', 'Michielin', 'francesca_cheeks@gmail.com'),
('Valentina', 'Maglietti', 'valen.mg2@gmail.com'),
('Nigel', 'Townsend', 'nigel.townsend@rokosc.com');

--4. SALES
INSERT INTO sales (customer_id, sale_date, payment_method) VALUES
(1, '2026-05-10', 'Credit Card'),
(12, '2026-05-10', 'Credit Card'),
(2, '2026-05-10', 'Debit Card'),
(2, '2026-05-11', 'Debit Card'),
(5, '2026-05-11', 'Transfer'),
(6, '2026-05-11', 'Credit Card'),
(4, '2026-05-12', 'Cash'),
(8, '2026-05-13', 'Cash'),
(2, '2026-05-14', 'Debit Card'),
(3, '2026-05-15', 'Credit Card'),
(5, '2026-05-15', 'Transfer'),
(7, '2026-05-15', 'Cash'),
(11, '2026-05-15', 'Credit Card'),
(9, '2026-05-16', 'Credit Card'),
(6, '2026-05-17', 'Credit Card'),
(2, '2026-05-17', 'Debit Card'),
(10, '2026-05-17', 'Credit Card');

-- 5. SALE_ITEMS
INSERT INTO sale_items (sale_id, album_id, quantity, unit_price) VALUES
(1, 15, 1, 17.99), -- (sale_item_id) Sale_id, album_id, quantity, unit_price
(2, 14, 1, 14.99),
(2, 21, 1, 14.99),
(3, 21, 1, 14.99),
(3, 22, 2, 21.99), -- Two Mint Jams copies purchased by Sebastian Santoro on Sunday 2026-05-10
(4, 11, 1, 21.99),
(4, 7, 1, 21.99),
(5, 13, 1, 14.99), -- Chet Sings for Marigold
(6, 27, 1, 15.99),
(6, 30, 1, 14.99),
(7, 1, 1, 24.99 ),
(8, 19, 1, 18.99),
(9, 28, 1, 14.99),
(9, 29, 1, 17.99),
(9, 16, 1, 19.99),
(9, 15, 1, 17.99),
(10, 23, 1, 17.99),
(11, 1, 1, 24.99),
(12, 1, 1, 24.99),
(13, 6, 1, 14.99),
(13, 2, 1, 21.99),
(14, 17, 1, 17.99),
(14, 20, 1, 17.99),
(15, 1, 1, 24.99),
(16, 12, 1, 21.99),
(17, 4, 1, 23.99);



