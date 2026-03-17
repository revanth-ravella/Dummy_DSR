// Supabase Configuration
const SUPABASE_URL = 'https://bbrvjanvocpyhblvqqxm.supabase.co';
const SUPABASE_ANON_KEY = 'YOUR_ANON_KEY_HERE'; // Replace with your anon key from Supabase Dashboard → Settings → API

const supabase = window.supabase.createClient(SUPABASE_URL, SUPABASE_ANON_KEY);
