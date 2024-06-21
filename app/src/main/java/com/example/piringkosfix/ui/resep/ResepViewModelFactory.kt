package com.example.piringkosfix.ui.resep


import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import com.example.piringkosfix.data.favorite.FavoriteDao

class ResepViewModelFactory(private val favoriteDao: FavoriteDao) : ViewModelProvider.Factory {
    @Suppress("UNCHECKED_CAST")
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        if (modelClass.isAssignableFrom(ResepViewModel::class.java)) {
            return ResepViewModel(favoriteDao) as T
        }
        throw IllegalArgumentException("Unknown ViewModel class")
    }
}
