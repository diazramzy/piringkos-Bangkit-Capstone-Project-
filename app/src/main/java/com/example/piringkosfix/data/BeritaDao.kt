package com.example.piringkosfix.data

import androidx.room.Dao
import androidx.room.Query
import com.example.piringkosfix.Berita

@Dao
interface BeritaDao {
    @Query("SELECT * FROM berita")
    fun getAllBerita():List<Berita?>?
}