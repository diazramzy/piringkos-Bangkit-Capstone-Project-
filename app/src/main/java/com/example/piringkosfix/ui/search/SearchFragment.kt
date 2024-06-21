package com.example.piringkosfix.ui.search

import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.room.Room
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.data.Recipe
import com.example.piringkosfix.databinding.FragmentSearchBinding
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class SearchFragment : Fragment() {
    private lateinit var binding: FragmentSearchBinding
    private lateinit var rvAdapter: SearchAdapter
    private lateinit var dataList: ArrayList<Recipe>
    private lateinit var recipes: List<Recipe?>

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        binding = FragmentSearchBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.search.requestFocus()
        val db = AppDatabase.getDatabase(requireActivity())
        val daoObject = db.getDao()

        lifecycleScope.launch {
            val daoObject = db.getDao()
            recipes = withContext(Dispatchers.IO) {
                daoObject.getAll() ?: emptyList()
            }
            setUpRecyclerView()
        }


        binding.search.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}

            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                if (s.toString().isNotEmpty()) {
                    filterData(s.toString())
                } else {
                    setUpRecyclerView()
                }
            }

            override fun afterTextChanged(s: Editable?) {}
        })
    }

    private fun filterData(filterText: String) {
        val filterData = ArrayList<Recipe>()
        for (i in recipes.indices) {
            if (recipes[i]!!.tittle.lowercase().contains(filterText.lowercase())) {
                filterData.add(recipes[i]!!)
            }
            rvAdapter.filterList(filterList = filterData)
        }
    }

    private fun setUpRecyclerView() {
        dataList = ArrayList()
        binding.rvSearch.layoutManager = LinearLayoutManager(requireContext())
        for (i in recipes.indices) {
            if (recipes[i]!!.category.contains("Popular")) {
                dataList.add(recipes[i]!!)
            }
            rvAdapter = SearchAdapter(dataList, requireContext())
            binding.rvSearch.adapter = rvAdapter
        }
    }
}
