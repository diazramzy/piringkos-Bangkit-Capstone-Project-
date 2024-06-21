package com.example.piringkosfix.data.favorite

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "favoriteRecipe")
data class FavoriteRecipe(
    @PrimaryKey(autoGenerate = true)
    val id: Int = 0,
    val recipeId : Int
)
