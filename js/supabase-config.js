// Supabase Configuration
const SUPABASE_URL = 'https://bbrvjanvocpyhblvqqxm.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJicnZqYW52b2NweWhibHZxcXhtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzM3Mjg0MzUsImV4cCI6MjA4OTMwNDQzNX0.sIyfUfvw89G0LH4I_ZFt6XIoeGJXs9-5fo6Bthv_Bg8';

const supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
