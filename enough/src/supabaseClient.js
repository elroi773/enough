// src/supabaseClient.js


import { createClient } from '@supabase/supabase-js'

// Vite env vars (set these in .env.local as VITE_SUPABASE_URL and VITE_SUPABASE_ANON_KEY)
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY

export const supabase = createClient(supabaseUrl, supabaseAnonKey)
