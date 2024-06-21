package com.example.piringkosfix.ui.onboarding

import android.app.Activity
import android.util.Log
import androidx.fragment.app.Fragment
import androidx.fragment.app.FragmentActivity
import androidx.viewpager2.adapter.FragmentStateAdapter

class OnBoardingPagerAdapter(
    activity: FragmentActivity,
    private val fragments: List<Fragment>,
): FragmentStateAdapter(activity) {
    override fun getItemCount(): Int = fragments.size
    override fun createFragment(position: Int): Fragment  = fragments[position]
}