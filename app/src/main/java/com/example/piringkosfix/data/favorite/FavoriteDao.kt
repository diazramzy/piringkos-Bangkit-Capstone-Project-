package com.example.piringkosfix.data.favorite

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import kotlinx.coroutines.flow.Flow

@Dao
interface FavoriteDao {
    @Query("SELECT * FROM favoriteRecipe")
    fun getAllFavoriteRecipes(): Flow<List<FavoriteRecipe>>
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertFavoriteRecipe(favoriteRecipe: FavoriteRecipe)
    @Delete
    suspend fun deleteFavoriteRecipe(favoriteRecipe: FavoriteRecipe)
    @Query("SELECT COUNT(*) FROM favoriteRecipe WHERE recipeId = :recipeId")
    suspend fun isFavoriteRecipeExist(recipeId: Int): Int

    @Query("SELECT * FROM favoriteRecipe WHERE recipeId = :recipeId LIMIT 1")
    suspend fun findFavoriteRecipeById(recipeId: Int): FavoriteRecipe?
}