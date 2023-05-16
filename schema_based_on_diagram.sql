CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name varchar,
    date_of_birth date
);

CREATE TABLE medical_histories(
    id SERIAL PRIMARY KEY,
    admitted_at timestamp,
    patient_id int REFERENCES patients(id),
    status varchar
);

CREATE TABLE treatments(
    id SERIAL PRIMARY KEY,
    type varchar,
    name varchar
);

CREATE TABLE medical_history_treatments(
    medical_history_id int REFERENCES medical_histories(id),
    treatments_id int REFERENCES treatments(id)
);

CREATE TABLE invoices(
    id SERIAL PRIMARY KEY,
    total_amount decimal,
    generated_at timestamp,
    paid_at timestamp,
    medical_history_id int REFERENCES medical_histories(id)
);

CREATE TABLE invoice_items(
    id SERIAL PRIMARY KEY,
    unit_price decimal,
    quantity int,
    total_price decimal,
    invoice_id int REFERENCES invoices(id),
    treatment_id int REFERENCES treatments(id)
);
