create database dbms;
use dbms;
CREATE TABLE Manufacturer (
    manufacturer_id INT PRIMARY KEY,
    manufacturer_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create Medicine table
CREATE TABLE Medicine (
    medicine_id INT PRIMARY KEY,
    medicine_name VARCHAR(100) NOT NULL,
    manufacturer_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

-- Create MedicalInstrument table
CREATE TABLE MedicalInstrument (
    instrument_id INT PRIMARY KEY,
    instrument_name VARCHAR(100) NOT NULL,
    manufacturer_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (manufacturer_id) REFERENCES Manufacturer(manufacturer_id)
);

-- Create Item table
CREATE TABLE Item (
    item_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Create Customer table
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15),
    address VARCHAR(255)
);
-- Create Bill table
CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10, 2),
    bill_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
-- Create Pharmacist table
CREATE TABLE Pharmacist (
    pharmacist_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create Pharmacy table
CREATE TABLE Pharmacy (
    pharmacy_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255)
);

-- Create Prescription table
CREATE TABLE Prescription (
    prescription_id INT PRIMARY KEY,
    customer_id INT,
    pharmacist_id INT,
    prescription_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (pharmacist_id) REFERENCES Pharmacist(pharmacist_id)
);

-- Create Supplier table
CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create Stock table
CREATE TABLE Stock (
    stock_id INT PRIMARY KEY,
    item_id INT,
    supplier_id INT,
    quantity INT,
    expiry_date DATE,
    FOREIGN KEY (item_id) REFERENCES Item(item_id),
    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id)
);

-- Create Sale table
CREATE TABLE Sale (
    sale_id INT PRIMARY KEY,
    item_id INT,
    pharmacy_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (item_id) REFERENCES Item(item_id),
    FOREIGN KEY (pharmacy_id) REFERENCES Pharmacy(pharmacy_id)
);
INSERT INTO Manufacturer (manufacturer_id, manufacturer_name, contact_number, address)
VALUES
    (1, 'ABC Pharmaceuticals', '123-456-7890', 'sector19 haware splendor'),
    (2, 'XYZ Medical Devices', '987-654-3210', 'kharghar sector6'),
    (3, 'Indian Pharma Ltd.', '123-456-7890', 'Delhi, India'),
    (4, 'Mumbai Medical Supplies', '987-654-3210', 'Mumbai, India'),
    (5, 'Bangalore Pharma Inc.', '123-456-7890', 'Bangalore, India'),
    (6, 'Hyderabad Medical Devices', '987-654-3210', 'Hyderabad, India'),
    (7, 'Chennai Pharmaceuticals', '123-456-7890', 'Chennai, India'),
    (8, 'Pune Medical Instruments', '987-654-3210', 'Pune, India'),
    (9, 'Kolkata Pharma Solutions', '123-456-7890', 'Kolkata, India'),
    (10, 'Ahmedabad Medical Tech', '987-654-3210', 'Ahmedabad, India'),
    (11, 'Jaipur Pharma Services', '123-456-7890', 'Jaipur, India'),
    (12, 'Lucknow Medical Solutions', '987-654-3210', 'Lucknow, India'),
    (13, 'Chandigarh Pharmaceuticals', '123-456-7890', 'Chandigarh, India'),
    (14, 'Indore Medical Instruments', '987-654-3210', 'Indore, India'),
    (15, 'Surat Pharma Ltd.', '123-456-7890', 'Surat, India'),
    (16, 'Visakhapatnam Medical Devices', '987-654-3210', 'Visakhapatnam, India'),
    (17, 'Nagpur Pharmaceuticals', '123-456-7890', 'Nagpur, India'),
    (18, 'Agra Medical Supplies', '987-654-3210', 'Agra, India'),
    (19, 'Varanasi Pharma Inc.', '123-456-7890', 'Varanasi, India'),
    (20, 'Patna Medical Devices', '987-654-3210', 'Patna, India');
    
    INSERT INTO Medicine (medicine_id, medicine_name, manufacturer_id, price) VALUES
    (1, 'Paracetamol', 1, 50.00),
    (2, 'Ibuprofen', 2, 70.00),
    (3, 'Aspirin', 1, 40.00),
    (4, 'Amoxicillin', 3, 100.00),
    (5, 'Ciprofloxacin', 4, 120.00),
    (6, 'Lisinopril', 5, 60.00),
    (7, 'Simvastatin', 6, 90.00),
    (8, 'Atorvastatin', 7, 110.00),
    (9, 'Metformin', 8, 50.00),
    (10, 'Albuterol', 9, 80.00),
    (11, 'Omeprazole', 10, 85.00),
    (12, 'Losartan', 11, 65.00),
    (13, 'Amlodipine', 12, 95.00),
    (14, 'Gabapentin', 13, 75.00),
    (15, 'Hydrocodone', 14, 125.00),
    (16, 'Levothyroxine', 15, 110.00),
    (17, 'Metoprolol', 16, 85.00),
    (18, 'Prednisone', 17, 70.00),
    (19, 'Azithromycin', 18, 105.00),
    (20, 'Acetaminophen', 19, 45.00);
    INSERT INTO MedicalInstrument (instrument_id, instrument_name, manufacturer_id, price) VALUES
    (1, 'Digital Thermometer', 1, 500.00),
    (2, 'Blood Pressure Monitor', 2, 1500.00),
    (3, 'Pulse Oximeter', 3, 800.00),
    (4, 'Glucometer', 4, 700.00),
    (5, 'Stethoscope', 5, 250.00),
    (6, 'Otoscope', 6, 600.00),
    (7, 'Sphygmomanometer', 7, 1000.00),
    (8, 'Electrocardiograph', 8, 2000.00),
    (9, 'Nebulizer', 9, 1200.00),
    (10, 'Defibrillator', 10, 3000.00),
    (11, 'Ultrasound Machine', 11, 5000.00),
    (12, 'X-ray Machine', 12, 10000.00),
    (13, 'MRI Machine', 13, 15000.00),
    (14, 'CT Scanner', 14, 20000.00),
    (15, 'Endoscope', 15, 1800.00),
    (16, 'Doppler Ultrasound', 16, 3500.00),
    (17, 'Infusion Pump', 17, 900.00),
    (18, 'Oxygen Concentrator', 18, 2500.00),
    (19, 'Fetal Monitor', 19, 2800.00),
    (20, 'ECG Machine', 20, 1800.00);
    INSERT INTO Item (item_id, name, category, price) VALUES
    (1, 'Syringes', 'Medical Supplies', 50.00),
    (2, 'Gauze Pads', 'Medical Supplies', 30.00),
    (3, 'Adhesive Bandages', 'Medical Supplies', 20.00),
    (4, 'Cotton Swabs', 'Medical Supplies', 10.00),
    (5, 'Antiseptic Solution', 'Medical Supplies', 15.00),
    (6, 'Scissors', 'Medical Supplies', 25.00),
    (7, 'Tweezers', 'Medical Supplies', 12.00),
    (8, 'Thermometer Covers', 'Medical Supplies', 8.00),
    (9, 'Sterile Gloves', 'Medical Supplies', 40.00),
    (10, 'First Aid Tape', 'Medical Supplies', 18.00),
    (11, 'Hand Sanitizer', 'Personal Care', 5.00),
    (12, 'Toothpaste', 'Personal Care', 3.00),
    (13, 'Shampoo', 'Personal Care', 7.00),
    (14, 'Toilet Paper', 'Personal Care', 2.00),
    (15, 'Facial Tissues', 'Personal Care', 4.00),
    (16, 'Disposable Razors', 'Personal Care', 6.00),
    (17, 'Soap', 'Personal Care', 1.00),
    (18, 'Deodorant', 'Personal Care', 9.00),
    (19, 'Hairbrush', 'Personal Care', 10.00),
    (20, 'Lip Balm', 'Personal Care', 3.00);
    INSERT INTO Customer (customer_id, name, contact_number, address) VALUES
    (1, 'Anadi Sharma', '555-123-4567', 'Mumbai, India'),
    (2, 'srushti Mishri', '555-987-6543', 'Delhi, India'),
    (3, 'Anshul Shinde', '555-234-5678', 'Bangalore, India'),
    (4, 'Devanshi aggarwal', '555-876-5432', 'Chennai, India'),
    (5, 'vrishank wadekar', '555-345-6789', 'Kolkata, India'),
    (6, 'Yash Shrivastava', '555-765-4321', 'Hyderabad, India'),
    (7, 'Anvi Desai', '555-456-7890', 'Pune, India'),
    (8, 'Reyansh Yadav', '555-654-3210', 'Ahmedabad, India'),
    (9, 'Zara Joshi', '555-567-8901', 'Jaipur, India'),
    (10, 'Arnav Gupta', '555-543-2109', 'Lucknow, India'),
    (11, 'Saanvi Kumar', '555-678-9012', 'Chandigarh, India'),
    (12, 'Kabir Patel', '555-432-1098', 'Indore, India'),
    (13, 'Ira Choudhary', '555-789-0123', 'Surat, India'),
    (14, 'Ayaan Singh', '555-321-0987', 'Visakhapatnam, India'),
    (15, 'Advait Tiwari', '555-890-1234', 'Nagpur, India'),
    (16, 'Anvi Sharma', '555-210-9876', 'Agra, India'),
    (17, 'Kiaan Singh', '555-678-1230', 'Varanasi, India'),
    (18, 'Sara Khanna', '555-987-0123', 'Patna, India'),
    (19, 'Aarush Shah', '555-234-5678', 'Bhopal, India'),
    (20, 'Myra Gupta', '555-876-5432', 'Guwahati, India');
    INSERT INTO Pharmacist (pharmacist_id, name, contact_number, address) VALUES
    (1, 'Dr. Arjun Gupta', '555-123-4567', 'Mumbai, India'),
    (2, 'Dr. Neha Patel', '555-987-6543', 'Delhi, India'),
    (3, 'Dr. Vikram Sharma', '555-234-5678', 'Bangalore, India'),
    (4, 'Dr. Aarti Desai', '555-876-5432', 'Chennai, India'),
    (5, 'Dr. Raj Singh', '555-345-6789', 'Kolkata, India'),
    (6, 'Dr. Priya Reddy', '555-765-4321', 'Hyderabad, India'),
    (7, 'Dr. Anand Deshpande', '555-456-7890', 'Pune, India'),
    (8, 'Dr. Nisha Yadav', '555-654-3210', 'Ahmedabad, India'),
    (9, 'Dr. Riya Joshi', '555-567-8901', 'Jaipur, India'),
    (10, 'Dr. Sanjay Gupta', '555-543-2109', 'Lucknow, India'),
    (11, 'Dr. Tanvi Kumar', '555-678-9012', 'Chandigarh, India'),
    (12, 'Dr. Rohan Patel', '555-432-1098', 'Indore, India'),
    (13, 'Dr. Pooja Choudhary', '555-789-0123', 'Surat, India'),
    (14, 'Dr. Rishi Singh', '555-321-0987', 'Visakhapatnam, India'),
    (15, 'Dr. Ananya Tiwari', '555-890-1234', 'Nagpur, India'),
    (16, 'Dr. Rohit Sharma', '555-210-9876', 'Agra, India'),
    (17, 'Dr. Aarav Singh', '555-678-1230', 'Varanasi, India'),
    (18, 'Dr. Trisha Khanna', '555-987-0123', 'Patna, India'),
    (19, 'Dr. Sameer Shah', '555-234-5678', 'Bhopal, India'),
    (20, 'Dr. Sneha Gupta', '555-876-5432', 'Guwahati, India');
ALTER TABLE Pharmacy
ADD COLUMN opening_time TIME,
ADD COLUMN closing_time TIME;
INSERT INTO Pharmacy (pharmacy_id, name, address, opening_time, closing_time) 
VALUES
    (1, 'Healthy Pharmacy', 'Mumbai, India', '08:00:00', '22:00:00'),
    (2, 'Wellness Pharmacy', 'Delhi, India', '09:00:00', '21:00:00'),
    (3, 'Care Pharmacy', 'Bangalore, India', '07:30:00', '20:30:00'),
    (4, 'Healing Pharmacy', 'Chennai, India', '08:30:00', '21:30:00'),
    (5, 'Hope Pharmacy', 'Hyderabad, India', '08:00:00', '22:00:00'),
    (6, 'MediPlus Pharmacy', 'Kolkata, India', '08:00:00', '21:00:00'),
    (7, 'LifeCare Pharmacy', 'Pune, India', '09:30:00', '20:30:00'),
    (8, 'WellCare Pharmacy', 'Ahmedabad, India', '08:00:00', '22:00:00'),
    (9, 'Unity Pharmacy', 'Jaipur, India', '07:00:00', '20:00:00'),
    (10, 'Cure Pharmacy', 'Lucknow, India', '08:30:00', '21:30:00'),
    (11, 'Grace Pharmacy', 'Chandigarh, India', '08:00:00', '22:00:00'),
    (12, 'HealthyLife Pharmacy', 'Indore, India', '09:00:00', '20:00:00'),
    (13, 'Sunrise Pharmacy', 'Surat, India', '08:30:00', '21:30:00'),
    (14, 'GreenLife Pharmacy', 'Visakhapatnam, India', '08:00:00', '22:00:00'),
    (15, 'WellBeing Pharmacy', 'Nagpur, India', '08:00:00', '22:00:00'),
    (16, 'BlueCare Pharmacy', 'Agra, India', '09:00:00', '20:30:00'),
    (17, 'Sunshine Pharmacy', 'Varanasi, India', '08:30:00', '21:30:00'),
    (18, 'GoodHealth Pharmacy', 'Patna, India', '08:00:00', '22:00:00'),
    (19, 'Comfort Pharmacy', 'Bhopal, India', '07:30:00', '20:30:00'),
    (20, 'NatureCare Pharmacy', 'Gurgaon, India', '08:00:00', '22:00:00');
    INSERT INTO Prescription (prescription_id, customer_id, pharmacist_id, prescription_date) 
VALUES
    (1, 1, 1, '2023-01-15'),
    (2, 2, 2, '2023-02-20'),
    (3, 3, 3, '2023-03-25'),
    (4, 4, 4, '2023-04-30'),
    (5, 5, 5, '2023-05-10'),
    (6, 6, 6, '2023-06-15'),
    (7, 7, 7, '2023-07-20'),
    (8, 8, 8, '2023-08-25'),
    (9, 9, 9, '2023-09-30'),
    (10, 10, 10, '2023-10-05'),
    (11, 11, 11, '2023-11-10'),
    (12, 12, 12, '2023-12-15'),
    (13, 13, 13, '2024-01-20'),
    (14, 14, 14, '2024-02-25'),
    (15, 15, 15, '2024-03-30'),
    (16, 16, 16, '2024-04-05'),
    (17, 17, 17, '2024-05-10'),
    (18, 18, 18, '2024-06-15'),
    (19, 19, 19, '2024-07-20'),
    (20, 20, 20, '2024-08-25');
    INSERT INTO Supplier (supplier_id, supplier_name, contact_number, address) 
VALUES
    (1, 'MediCorp Solutions', '987-654-3210', '123 Health Street, Mumbai'),
    (2, 'CareMeds Inc.', '987-123-4567', '456 Wellness Avenue, Bangalore'),
    (3, 'PharmaNet Distributors', '789-456-1230', '789 Cure Road, Delhi'),
    (4, 'MediWorld Enterprises', '789-123-4567', '321 Medical Lane, Kolkata'),
    (5, 'HealthGlobe Suppliers', '654-321-0987', '567 Medical Center, Chennai'),
    (6, 'LifeLine Pharma', '654-789-1230', '901 Wellness Plaza, Hyderabad'),
    (7, 'MediTech Solutions', '123-456-7890', '234 Health Lane, Pune'),
    (8, 'CarePlus Distributors', '789-123-4560', '345 Care Street, Ahmedabad'),
    (9, 'PharmaCare Inc.', '456-789-0123', '456 Pharma Square, Jaipur'),
    (10, 'HealWell Supplies', '321-654-9870', '567 Health Circle, Lucknow'),
    (11, 'MediServe Solutions', '654-987-3210', '678 Cure Avenue, Chandigarh'),
    (12, 'PharmaLink Distributors', '789-321-6540', '890 Medical Road, Nagpur'),
    (13, 'CareFirst Suppliers', '987-654-3210', '123 Care Center, Indore'),
    (14, 'LifeCare Pharma', '654-789-0123', '234 Wellness Road, Surat'),
    (15, 'MediPlus Enterprises', '321-654-9870', '345 Cure Lane, Varanasi'),
    (16, 'PharmaPro Distributors', '789-012-3456', '456 Health Avenue, Patna'),
    (17, 'HealthMed Solutions', '012-345-6789', '567 Medical Square, Bhopal'),
    (18, 'LifeMeds Inc.', '345-678-9012', '678 Cure Plaza, Pune'),
    (19, 'CareWell Pharma', '678-901-2345', '789 Health Street, Hyderabad'),
    (20, 'MediLife Distributors', '901-234-5678', '890 Cure Center, Delhi');
    INSERT INTO Stock (stock_id, item_id, supplier_id, quantity, expiry_date) 
VALUES
    (1, 1, 1, 100, '2024-12-31'),
    (2, 2, 2, 50, '2025-06-30'),
    (3, 3, 3, 80, '2024-10-15'),
    (4, 4, 4, 120, '2025-03-20'),
    (5, 5, 5, 70, '2024-08-25'),
    (6, 6, 6, 90, '2025-01-10'),
    (7, 7, 7, 60, '2024-11-05'),
    (8, 8, 8, 110, '2025-05-15'),
    (9, 9, 9, 75, '2024-09-30'),
    (10, 10, 10, 95, '2025-02-28'),
    (11, 11, 11, 85, '2024-07-12'),
    (12, 12, 12, 105, '2025-04-18'),
    (13, 13, 13, 65, '2024-12-22'),
    (14, 14, 14, 115, '2025-06-08'),
    (15, 15, 15, 55, '2024-10-05'),
    (16, 16, 16, 125, '2025-03-10'),
    (17, 17, 17, 45, '2024-08-15'),
    (18, 18, 18, 135, '2025-01-20'),
    (19, 19, 19, 105, '2024-11-30'),
    (20, 20, 20, 145, '2025-05-25');
    INSERT INTO Sale (sale_id, item_id, pharmacy_id, quantity, sale_date) 
VALUES
    (1, 1, 1, 10, '2023-01-01'),
    (2, 2, 2, 5, '2023-01-02'),
    (3, 3, 3, 8, '2023-01-03'),
    (4, 4, 4, 12, '2023-01-04'),
    (5, 5, 5, 7, '2023-01-05'),
    (6, 6, 6, 9, '2023-01-06'),
    (7, 7, 7, 6, '2023-01-07'),
    (8, 8, 8, 11, '2023-01-08'),
    (9, 9, 9, 14, '2023-01-09'),
    (10, 10, 10, 4, '2023-01-10'),
    (11, 11, 11, 8, '2023-01-11'),
    (12, 12, 12, 10, '2023-01-12'),
    (13, 13, 13, 5, '2023-01-13'),
    (14, 14, 14, 15, '2023-01-14'),
    (15, 15, 15, 3, '2023-01-15'),
    (16, 16, 16, 16, '2023-01-16'),
    (17, 17, 17, 7, '2023-01-17'),
    (18, 18, 18, 18, '2023-01-18'),
    (19, 19, 19, 10, '2023-01-19'),
    (20, 20, 20, 20, '2023-01-20');
    INSERT INTO Bill (bill_id, customer_id, total_amount, bill_date) 
VALUES 
    (1, 1, 150.75, '2023-01-05'),
    (2, 2, 100.25, '2023-01-10'),
    (3, 1, 75.50, '2023-01-15'),
    (4, 2, 200.00, '2023-01-20'),
    (5, 1, 45.80, '2023-01-25'),
    (6, 2, 60.20, '2023-02-01'),
    (7, 1, 80.50, '2023-02-05'),
    (8, 2, 55.75, '2023-02-10'),
    (9, 1, 95.25, '2023-02-15'),
    (10, 2, 70.00, '2023-02-20'),
    (11, 1, 120.00, '2023-03-05'),
    (12, 2, 90.25, '2023-03-10'),
    (13, 1, 60.75, '2023-03-15'),
    (14, 2, 150.00, '2023-03-20'),
    (15, 1, 85.50, '2023-03-25'),
    (16, 2, 40.25, '2023-04-01'),
    (17, 1, 110.00, '2023-04-05'),
    (18, 2, 75.75, '2023-04-10'),
    (19, 1, 65.25, '2023-04-15'),
    (20, 2, 180.50, '2023-04-20');
    select * from manufacturer;
    SELECT m.medicine_name, ma.manufacturer_name, m.price
FROM Medicine m
JOIN Manufacturer ma ON m.manufacturer_id = ma.manufacturer_id;
SELECT name
FROM Customer
WHERE customer_id IN (
    SELECT customer_id
    FROM Bill
    WHERE total_amount > 100
);
select * from bill;
SELECT medicine_name
FROM Medicine
WHERE price > (
    SELECT AVG(price)
    FROM Medicine
);
SELECT name 
FROM Customer 
WHERE customer_id IN (SELECT DISTINCT customer_id FROM Bill WHERE bill_date >= '2023-01-15');
SELECT name 
FROM Pharmacy 
WHERE address LIKE '%Mumbai%';
SELECT medicine_name 
FROM Medicine 
WHERE price > 100.00;
SELECT COUNT(*) 
FROM Prescription 
WHERE pharmacist_id = 1;
SELECT SUM(quantity) 
FROM Sale 
WHERE sale_date = '2023-01-05';
SELECT name 
FROM Customer 
WHERE address LIKE '%Hyderabad%';
-- Find the names of customers who made purchases on or after '2023-01-01'
SELECT name
FROM Customer
WHERE customer_id IN (
    SELECT customer_id
    FROM Bill
    WHERE bill_date >= '2023-01-01'
);
-- Retrieve the names of medicines manufactured by 'ABC Pharmaceuticals':
SELECT medicine_name
FROM Medicine
WHERE manufacturer_id = (
    SELECT manufacturer_id
    FROM Manufacturer
    WHERE manufacturer_name = 'ABC Pharmaceuticals'
);
-- Find the names of pharmacists who served customers with bills over Rs100:
SELECT name
FROM Pharmacist
WHERE pharmacist_id IN (
    SELECT pharmacist_id
    FROM Prescription
    WHERE customer_id IN (
        SELECT customer_id
        FROM Bill
        WHERE total_amount > 100
    )
);
 -- Retrieve the names of customers along with their corresponding pharmacists.
SELECT c.name AS customer_name, ph.name AS pharmacist_name
FROM Customer c
JOIN Prescription p ON c.customer_id = p.customer_id
JOIN Pharmacist ph ON p.pharmacist_id = ph.pharmacist_id;
-- Find all medicines along with their manufacturers' contact numbers.
SELECT m.medicine_name, ma.contact_number AS manufacturer_contact_number
FROM Medicine m
JOIN Manufacturer ma ON m.manufacturer_id = ma.manufacturer_id;
-- List all items in stock along with their respective suppliers.
SELECT i.name AS item_name, s.supplier_name
FROM Stock st
JOIN Item i ON st.item_id = i.item_id
JOIN Supplier s ON st.supplier_id = s.supplier_id;
-- Retrieve the names and contact numbers of all customers.
SELECT name, contact_number
FROM Customer;
 -- Find the total number of items in stock.
 SELECT SUM(quantity) AS total_items_in_stock
FROM Stock;
-- List the names of all pharmacies.
SELECT name
FROM Pharmacy;
-- Retrieve the names of pharmacies where the average quantity of items in stock exceeds 50.
SELECT name
FROM Pharmacy
WHERE pharmacy_id IN (
    SELECT pharmacy_id
    FROM Stock
    GROUP BY pharmacy_id
    HAVING AVG(quantity) > 50
);
-- Find all medicines along with their manufacturers' contact numbers.
SELECT m.medicine_name, ma.contact_number AS manufacturer_contact_number
FROM Medicine m
JOIN Manufacturer ma ON m.manufacturer_id = ma.manufacturer_id;
-- Retrieve the names of customers who made purchases along with the total amount of each bill.
SELECT c.name AS customer_name, b.total_amount
FROM Customer c
JOIN Bill b ON c.customer_id = b.customer_id;
-- Find the names of manufacturers located in India:
SELECT manufacturer_name 
FROM Manufacturer 
WHERE manufacturer_id IN (SELECT manufacturer_id FROM Manufacturer WHERE address LIKE '%India%');
-- Find the names of medicines manufactured by companies located in Delhi:
SELECT medicine_name 
FROM Medicine 
WHERE manufacturer_id IN (SELECT manufacturer_id FROM Manufacturer WHERE address LIKE '%Delhi%');
-- Find the total amount of the most expensive bill:
SELECT MAX(total_amount) 
FROM Bill;
-- Find the names of customers who made prescriptions:
SELECT name 
FROM Customer 
WHERE customer_id IN (SELECT DISTINCT customer_id FROM Prescription);
