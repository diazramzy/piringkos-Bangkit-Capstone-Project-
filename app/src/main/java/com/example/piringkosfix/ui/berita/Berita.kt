package com.example.piringkosfix

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "berita")
class Berita(
    var img: String,
    var tittle: String,
    var desc : String,
    var category : String
) {
    @JvmField
    @PrimaryKey(autoGenerate = true)
    var uid = 0
}
