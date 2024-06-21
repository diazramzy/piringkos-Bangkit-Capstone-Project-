package com.example.piringkosfix.ui

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.room.Room
import com.example.piringkosfix.Berita
import com.example.piringkosfix.BeritaActivity
import com.example.piringkosfix.DetailPopulerActivity
import com.example.piringkosfix.KategoriActivity
import com.example.piringkosfix.MainActivity
import com.example.piringkosfix.R
import com.example.piringkosfix.ui.berita.BeritaAdapter
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.data.Recipe
import com.example.piringkosfix.databinding.FragmentHomeBinding
import com.example.piringkosfix.ui.search.SearchFragment
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class HomeFragment : Fragment() {
    private lateinit var binding: FragmentHomeBinding
    private lateinit var rvAdapter: PopularAdapter
    private lateinit var dataList: ArrayList<Recipe>
    private lateinit var rvArticleAdapter: BeritaAdapter
    private lateinit var articleList: ArrayList<Berita>

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentHomeBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        setUpRecyclerView()

        binding.search.setOnClickListener {
            (activity as? MainActivity)?.apply {
                replaceFragment(SearchFragment())
                setSelectedBottomNavItem(R.id.bottom_search)
            }
        }

        binding.sayuran.setOnClickListener {
            val myIntent = Intent(requireContext(), KategoriActivity::class.java)
            myIntent.putExtra("TITTLE", "Sayuran")
            myIntent.putExtra("CATEGORY", "Sayuran")
            startActivity(myIntent)
        }
        binding.sarapan.setOnClickListener {
            val myIntent = Intent(requireContext(), KategoriActivity::class.java)
            myIntent.putExtra("TITTLE", "Sarapan")
            myIntent.putExtra("CATEGORY", "Sarapan")
            startActivity(myIntent)
        }
        binding.minuman.setOnClickListener {
            val myIntent = Intent(requireContext(), KategoriActivity::class.java)
            myIntent.putExtra("TITTLE", "Minuman")
            myIntent.putExtra("CATEGORY", "Minuman")
            startActivity(myIntent)
        }
        binding.dinner.setOnClickListener {
            val myIntent = Intent(requireContext(), KategoriActivity::class.java)
            myIntent.putExtra("TITTLE", "Dinner")
            myIntent.putExtra("CATEGORY", "Dinner")
            startActivity(myIntent)
        }
        binding.seafood.setOnClickListener {
            val myIntent = Intent(requireContext(), KategoriActivity::class.java)
            myIntent.putExtra("TITTLE", "Seafood")
            myIntent.putExtra("CATEGORY", "Seafood")
            startActivity(myIntent)
        }
        binding.textLainnya.setOnClickListener {
            startActivity(Intent(requireContext(), DetailPopulerActivity::class.java))
        }
        binding.textViewBeritalainnya.setOnClickListener{
            startActivity(Intent(requireContext(), BeritaActivity::class.java))
        }
    }

    private fun setUpRecyclerView() {
        dataList = ArrayList()
        articleList = ArrayList()

        binding.rvPopular.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)
        binding.rvArticles.layoutManager = LinearLayoutManager(requireContext(), LinearLayoutManager.HORIZONTAL, false)

        val db = AppDatabase.getDatabase(requireActivity())
        val daoObject = db.getDao()
        val beritaDao = db.beritaDao()

        // Load data from database in a background thread
        lifecycleScope.launch {
            val recipes = withContext(Dispatchers.IO) {
                daoObject.getAll()
            }
            if (recipes != null) {
                for (recipe in recipes) {
                    if (recipe?.category?.contains("Popular") == true) {
                        dataList.add(recipe)
                    }
                }
            }
            rvAdapter = PopularAdapter(dataList, requireContext())
            binding.rvPopular.adapter = rvAdapter

            val beritaList = withContext(Dispatchers.IO) {
                beritaDao.getAllBerita()
            }
            if (beritaList != null) {
                for (berita in beritaList) {
                    if (berita?.category?.contains("artikel") == true) {
                        articleList.add(berita)
                    }
                }
            }
            rvArticleAdapter = BeritaAdapter(articleList, requireContext())
            binding.rvArticles.adapter = rvArticleAdapter
        }
    }
}
