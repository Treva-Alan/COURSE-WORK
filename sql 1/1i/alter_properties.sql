ALTER TABLE Properties
ADD CONSTRAINT chk_status CHECK (Status IN ('Available', 'Sold', 'Rented'));
