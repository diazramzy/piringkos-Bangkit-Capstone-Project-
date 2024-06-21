package com.example.piringkosfix

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.room.Room
import com.example.piringkosfix.ui.berita.Berita2Adapter
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.databinding.ActivityBerita2Binding
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class BeritaActivity : AppCompatActivity() {

    private lateinit var binding: ActivityBerita2Binding
    private lateinit var rvAdapter: Berita2Adapter
    private lateinit var dataList: ArrayList<Berita>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityBerita2Binding.inflate(layoutInflater)
        setContentView(binding.root)

        dataList = ArrayList()
        binding.goBackHome.setOnClickListener {
            finish()
        }

        rvAdapter = Berita2Adapter(dataList, this)
        binding.rvArticles.layoutManager = LinearLayoutManager(this)
        binding.rvArticles.adapter = rvAdapter

        val db = AppDatabase.getDatabase(this)
        val beritaDao = db.beritaDao()

        // Load data from database in a background thread
        lifecycleScope.launch {
            val beritaList = withContext(Dispatchers.IO) {
                beritaDao.getAllBerita()
            }
            dataList.clear()
            if (beritaList != null) {
                for (berita in beritaList) {
                    if (berita?.category?.contains("artikel") == true) {
                        dataList.add(berita)
                    }
                }
            }
            rvAdapter.notifyDataSetChanged()
        }
    }
}
