package com.example.piringkosfix

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.room.Room
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.databinding.ActivityKategoriBinding
import com.example.piringkosfix.data.Recipe
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class KategoriActivity : AppCompatActivity() {
    private lateinit var rvAdapter:KategoriAdapter
    private lateinit var dataList:ArrayList<Recipe>
    private val binding by lazy {
        ActivityKategoriBinding.inflate(layoutInflater)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)
        title=intent.getStringExtra("TITTLE")

        val categoryTitle = intent.getStringExtra("TITTLE")
        binding.tittle.text = categoryTitle


        setUpRecylerView()
        binding.goBackHome.setOnClickListener {
            finish()
        }
    }
    private fun setUpRecylerView() {
        dataList= ArrayList()
        binding.rvCategory.layoutManager=LinearLayoutManager(this)
        val db = AppDatabase.getDatabase(this)
        var daoObject=db.getDao()
        lifecycleScope.launch {
            var recipes = withContext(Dispatchers.IO) {
                daoObject.getAll()
            }
            for (i in recipes!!.indices){
                if (recipes[i]!!.category.contains(intent.getStringExtra("CATEGORY")!!)){
                    dataList.add(recipes[i]!!)
                }
                rvAdapter= KategoriAdapter(dataList,this@KategoriActivity)
                binding.rvCategory.adapter=rvAdapter
            }
        }
    }
}