package com.example.piringkosfix

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.room.Room
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.databinding.ActivityPopulerBinding
import com.example.piringkosfix.data.Recipe
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class DetailPopulerActivity : AppCompatActivity() {

    private lateinit var binding: ActivityPopulerBinding
    private lateinit var rvAdapter: DetailPopulerAdapter
    private lateinit var dataList: ArrayList<Recipe>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityPopulerBinding.inflate(layoutInflater)
        setContentView(binding.root)
        binding.goBackHome.setOnClickListener {
            finish()
        }

        dataList = ArrayList()

        val db = AppDatabase.getDatabase(this)

        lifecycleScope.launch {
            val daoObject = db.getDao()
            val recipes = withContext(Dispatchers.IO) { daoObject.getAll() }

            for (i in recipes!!.indices) {
                if (recipes[i]!!.category.contains("Popular")) {
                    dataList.add(recipes[i]!!)
                }
            }

            rvAdapter = DetailPopulerAdapter(dataList, this@DetailPopulerActivity)

            // Change to LinearLayoutManager
            binding.rvPopuler.layoutManager = LinearLayoutManager(this@DetailPopulerActivity) // Use LinearLayoutManager instead of GridLayoutManager
            binding.rvPopuler.adapter = rvAdapter
        }

    }
}
