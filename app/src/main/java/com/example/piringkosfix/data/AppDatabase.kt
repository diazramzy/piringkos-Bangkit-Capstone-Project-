package com.example.piringkosfix.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import com.example.piringkosfix.Berita
import com.example.piringkosfix.data.favorite.FavoriteDao
import com.example.piringkosfix.data.favorite.FavoriteRecipe

@Database(entities = [Recipe::class, Berita::class, FavoriteRecipe::class], exportSchema = false, version = 1)
abstract class AppDatabase : RoomDatabase() {
    abstract fun getDao(): Dao
    abstract fun beritaDao(): BeritaDao
    abstract fun favoriteDao(): FavoriteDao

    companion object {
        @Volatile
        private var INSTANCE: AppDatabase? = null

        fun getDatabase(context: Context): AppDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    AppDatabase::class.java,
                    "db_name"
                )
                    .createFromAsset("recipe.db")
                    .build()
                INSTANCE = instance
                instance
            }
        }
    }
}
