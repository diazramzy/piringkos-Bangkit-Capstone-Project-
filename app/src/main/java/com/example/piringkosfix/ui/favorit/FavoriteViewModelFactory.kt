package com.example.piringkosfix.ui.favorit


import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import com.example.piringkosfix.data.Dao
import com.example.piringkosfix.data.favorite.FavoriteDao
import com.example.piringkosfix.ui.resep.ResepViewModel

class FavoriteViewModelFactory(
    private val favoriteDao: FavoriteDao,
    private val recipeDao: Dao
) : ViewModelProvider.Factory {
    @Suppress("UNCHECKED_CAST")
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        if (modelClass.isAssignableFrom(FavoriteViewModel::class.java)) {
            return FavoriteViewModel(recipeDao = recipeDao, favoriteDao = favoriteDao) as T
        }
        throw IllegalArgumentException("Unknown ViewModel class")
    }
}
