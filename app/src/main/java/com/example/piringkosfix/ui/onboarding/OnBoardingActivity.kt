package com.example.piringkosfix.ui.onboarding

import android.content.Intent
import android.os.Bundle
import androidx.activity.enableEdgeToEdge
import androidx.appcompat.app.AppCompatActivity
import androidx.core.view.ViewCompat
import androidx.core.view.WindowInsetsCompat
import com.example.piringkosfix.MainActivity
import com.example.piringkosfix.databinding.ActivityOnBoardingBinding
import com.example.piringkosfix.ui.auth.AuthActivity

class OnBoardingActivity : AppCompatActivity() {
    private lateinit var pagerAdapter: OnBoardingPagerAdapter
    private lateinit var binding: ActivityOnBoardingBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (!isFirstTimeLaunch()) {
            navigateToAuthActivity()
            return
        }

        enableEdgeToEdge()
        binding = ActivityOnBoardingBinding.inflate(layoutInflater)
        setContentView(binding.root)
        ViewCompat.setOnApplyWindowInsetsListener(binding.root) { v, insets ->
            val systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars())
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom)
            insets
        }

        val listFragments = listOf(
            FirstFragment(),
            SecondFragment(),
            ThirdFragment()
        )
        pagerAdapter = OnBoardingPagerAdapter(activity = this, fragments = listFragments)
        val viewPager = binding.viewPager
        viewPager.adapter = pagerAdapter

        binding.nextButton.setOnClickListener {
            val currentItem = viewPager.currentItem
            if (currentItem < listFragments.size - 1) {
                viewPager.currentItem = currentItem + 1
            } else {
                navigateToAuthActivity()
            }
        }
    }

    private fun isFirstTimeLaunch(): Boolean {
        val sharedPref = getSharedPreferences("MyAppPreferences", MODE_PRIVATE)
        return sharedPref.getBoolean("isFirstTimeLaunch", true)
    }

    private fun navigateToAuthActivity() {
        MainActivity.setFirstTimeLaunchCompleted(this)
        Intent(this, AuthActivity::class.java).apply {
            startActivity(this)
            finish()
        }
    }
}