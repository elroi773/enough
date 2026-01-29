// src/supabaseClient.js


import { createClient } from '@supabase/supabase-js'

const supabaseUrl = ''
const supabaseKey = ''

export const supabase = createClient(supabaseUrl, supabaseKey)  // 여기 변수명을 맞춰주세요!
