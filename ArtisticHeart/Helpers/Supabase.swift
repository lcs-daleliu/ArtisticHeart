//
//  Supabase.swift
//  ArtisticHeart
//
//  Created by Yiren LIU on 2024-06-13.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://ivgirfrnviasdehesahf.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml2Z2lyZnJudmlhc2RlaGVzYWhmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNDM1MTYsImV4cCI6MjAzMzgxOTUxNn0.QDe2VAFvu2WU_0PAdBmcMAGCRXqd8YNXt1zG25L9dSU"
)
