package com.example.piringkosfix.ui.favorit

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.piringkosfix.data.Dao
import com.example.piringkosfix.data.Recipe
import com.example.piringkosfix.data.favorite.FavoriteDao
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class FavoriteViewModel(
    private val recipeDao: Dao,
    private val favoriteDao: FavoriteDao
): ViewModel() {
    private val _recipes = MutableLiveData<List<Recipe>>()
    val recipes = _recipes

    fun fetchFavoriteRecipes() {
        viewModelScope.launch {
            val allRecipes = withContext(Dispatchers.IO) { recipeDao.getAll() }
            val favoriteRecipes = withContext(Dispatchers.IO) { favoriteDao.getAllFavoriteRecipes().first() }
            val favoriteRecipeIds = favoriteRecipes.map { it.recipeId }
            val filteredRecipes = allRecipes?.filter { it?.uid in favoriteRecipeIds }?.map { it!! }

            _recipes.postValue(filteredRecipes ?: emptyList())
        }
    }

}