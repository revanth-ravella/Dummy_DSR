-- Run this in Supabase SQL Editor (https://supabase.com/dashboard → SQL Editor)

-- Create contacts table
CREATE TABLE IF NOT EXISTS contacts (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL,
  subject TEXT,
  message TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable Row Level Security
ALTER TABLE contacts ENABLE ROW LEVEL SECURITY;

-- Allow anonymous inserts (for the contact form)
CREATE POLICY "Allow anonymous inserts" ON contacts
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Allow authenticated users to read all contacts
CREATE POLICY "Allow authenticated reads" ON contacts
  FOR SELECT
  TO authenticated
  USING (true);

-- ===== Payments Table =====
CREATE TABLE IF NOT EXISTS payments (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  payer_name TEXT NOT NULL,
  payer_phone TEXT NOT NULL,
  payer_email TEXT NOT NULL,
  purpose TEXT,
  amount DECIMAL(10,2) NOT NULL,
  note TEXT,
  utr TEXT,
  status TEXT DEFAULT 'pending',
  created_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE payments ENABLE ROW LEVEL SECURITY;

-- Allow anonymous inserts (for payment records)
CREATE POLICY "Allow anonymous payment inserts" ON payments
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Allow authenticated users to read payments
CREATE POLICY "Allow authenticated payment reads" ON payments
  FOR SELECT
  TO authenticated
  USING (true);
