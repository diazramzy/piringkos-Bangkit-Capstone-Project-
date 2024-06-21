package com.example.piringkosfix.ui.resep

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.asLiveData
import androidx.lifecycle.viewModelScope
import com.example.piringkosfix.data.favorite.FavoriteDao
import com.example.piringkosfix.data.favorite.FavoriteRecipe
import kotlinx.coroutines.launch

class ResepViewModel(
    private val resepDao: FavoriteDao
): ViewModel() {
    private val _isFavorite = MutableLiveData<Boolean>()
    val isFavorite = _isFavorite

    private val allFavoriteRecipes: LiveData<List<FavoriteRecipe>> = resepDao.getAllFavoriteRecipes().asLiveData()

    fun checkIsFavorite(id: Int) {
        viewModelScope.launch {
            val favoriteRecipes = resepDao.findFavoriteRecipeById(id)
            _isFavorite.value = favoriteRecipes != null
        }
    }

    fun insertFavorite(id: Int) {
        viewModelScope.launch {
            val model = FavoriteRecipe(recipeId = id)
            resepDao.insertFavoriteRecipe(model)
            checkIsFavorite(id)  // Update the favorite status after insertion
        }
    }

    fun deleteFavorite(id: Int) {
        viewModelScope.launch {
            val model = resepDao.findFavoriteRecipeById(id)
            model?.let {
                resepDao.deleteFavoriteRecipe(it)
                checkIsFavorite(id)  // Update the favorite status after deletion
            }
        }
    }
}