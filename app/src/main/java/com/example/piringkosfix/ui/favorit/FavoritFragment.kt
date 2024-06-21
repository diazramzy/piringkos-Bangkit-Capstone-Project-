package com.example.piringkosfix.ui.favorit

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.lifecycle.ViewModelProvider
import androidx.recyclerview.widget.LinearLayoutManager
import com.example.piringkosfix.R
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.data.Recipe
import com.example.piringkosfix.databinding.FragmentFavoritBinding
import com.example.piringkosfix.ui.resep.ResepViewModel
import com.example.piringkosfix.ui.resep.ResepViewModelFactory
import com.example.piringkosfix.ui.search.SearchAdapter
import java.util.ArrayList

class FavoritFragment : Fragment() {

    private lateinit var binding: FragmentFavoritBinding
    private lateinit var viewModel: FavoriteViewModel
    private lateinit var rvAdapter: SearchAdapter

    override fun onResume() {
        super.onResume()
        viewModel.fetchFavoriteRecipes()
    }
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        // Inflate the layout for this fragment
        binding = FragmentFavoritBinding.inflate(layoutInflater, container, false)

        // Initialize ViewModel using ViewModelFactory
        val database = AppDatabase.getDatabase(requireContext())
        val viewModelFactory = FavoriteViewModelFactory(
            recipeDao = database.getDao(), favoriteDao = database.favoriteDao()
        )
        viewModel = ViewModelProvider(this, viewModelFactory)[FavoriteViewModel::class.java]

        viewModel.fetchFavoriteRecipes()
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        viewModel.recipes.observe(viewLifecycleOwner) {
            val dataArray = ArrayList<Recipe>()
            dataArray.addAll(it)
            rvAdapter = SearchAdapter(dataArray, requireContext())

            binding.rvFavorite.apply {
                adapter = rvAdapter
                layoutManager = LinearLayoutManager(requireContext())
            }
        }
    }
}