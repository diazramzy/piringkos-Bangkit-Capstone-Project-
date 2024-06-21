package com.example.piringkosfix

import android.content.Context
import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.fragment.app.Fragment
import com.example.piringkosfix.ui.favorit.FavoritFragment
import com.example.piringkosfix.ui.search.SearchFragment
import com.google.android.material.bottomnavigation.BottomNavigationView
import android.util.Log
import com.example.piringkosfix.ui.HomeFragment
import com.example.piringkosfix.ui.profile.ProfileFragment
import com.example.piringkosfix.ui.auth.AuthActivity

class MainActivity : AppCompatActivity() {

    private lateinit var bottomNavigationView: BottomNavigationView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        bottomNavigationView = findViewById(R.id.bottom_navigation)
        bottomNavigationView.setOnItemSelectedListener { menuItem ->
            when (menuItem.itemId) {
                R.id.bottom_home -> {
                    replaceFragment(HomeFragment())
                    true
                }
                R.id.bottom_profile -> {
                    replaceFragment(ProfileFragment())
                    true
                }
                R.id.bottom_search -> {
                    replaceFragment(SearchFragment())
                    true
                }
                R.id.bottom_favorit -> {
                    replaceFragment(FavoritFragment())
                    true
                }
                else -> false
            }
        }

        if (savedInstanceState == null) {
            bottomNavigationView.selectedItemId = R.id.bottom_home
        }
    }

    fun setSelectedBottomNavItem(itemId: Int) {
        bottomNavigationView.selectedItemId = itemId
    }

    fun replaceFragment(fragment: Fragment) {
        try {
            supportFragmentManager.beginTransaction()
                .replace(R.id.frame_container, fragment)
                .addToBackStack(null)
                .commit()
        } catch (e: Exception) {
            Log.e("MainActivity", "Error replacing fragment", e)
        }
    }

    companion object {
        fun setFirstTimeLaunchCompleted(context: Context) {
            val sharedPref = context.getSharedPreferences("MyAppPreferences", Context.MODE_PRIVATE)
            with(sharedPref.edit()) {
                putBoolean("isFirstTimeLaunch", false)
                apply()
            }
        }
    }
}