package com.example.piringkosfix

import android.graphics.Color
import android.graphics.PorterDuff
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.View
import android.widget.ImageView
import androidx.activity.viewModels
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import com.bumptech.glide.Glide
import com.example.piringkosfix.data.AppDatabase
import com.example.piringkosfix.databinding.ActivityResepBinding
import com.example.piringkosfix.ui.resep.ResepViewModel
import com.example.piringkosfix.ui.resep.ResepViewModelFactory

class ResepActivity : AppCompatActivity() {

    private lateinit var binding: ActivityResepBinding
    private lateinit var viewModel: ResepViewModel
    private var imgCrop = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityResepBinding.inflate(layoutInflater)
        setContentView(binding.root)

        // Initialize ViewModel using ViewModelFactory
        val favoriteDao = AppDatabase.getDatabase(this).favoriteDao()
        val viewModelFactory = ResepViewModelFactory(favoriteDao)
        viewModel = ViewModelProvider(this, viewModelFactory).get(ResepViewModel::class.java)

        val id = intent.getIntExtra("id", 0)
        viewModel.checkIsFavorite(id)
        // Load data from intent
        Glide.with(this).load(intent.getStringExtra("img")).into(binding.itemImage)
        binding.tittle.text = intent.getStringExtra("tittle")
        binding.stepData.text = intent.getStringExtra("des")
        binding.stepData.setTextAppearance(R.style.TextViewStyle)

        val ing = intent.getStringExtra("ing")?.split("\n".toRegex())?.dropLastWhile { it.isEmpty() }?.toTypedArray()
        binding.time.text = ing?.get(0)
        binding.ingData.text = "${binding.ingData.text} \n ${ing?.get(1)}".trimIndent()
        binding.ingData.setTextAppearance(R.style.TextViewStyle)

        for (i in 2 until ing!!.size - 1) {
            binding.ingData.text = "${binding.ingData.text} \n🟢 ${ing[i]}".trimIndent()
        }

        // Button click listeners
        binding.step.setOnClickListener {
            binding.step.setTextAppearance(R.style.TextViewStyle)
            binding.ing.setTextAppearance(R.style.TextViewStyle)

            binding.step.setBackgroundResource(R.drawable.btn_ing)
            binding.ing.background = null
            binding.stepScroll.visibility = View.VISIBLE
            binding.ingScroll.visibility = View.GONE
        }

        binding.ing.setOnClickListener {
            binding.ing.setTextAppearance(R.style.TextViewStyle)
            binding.step.setTextAppearance(R.style.TextViewStyle)

            binding.ing.setBackgroundResource(R.drawable.btn_ing)
            binding.step.background = null
            binding.ingScroll.visibility = View.VISIBLE
            binding.stepScroll.visibility = View.GONE
        }

        binding.fullScreen.setOnClickListener {
            if (imgCrop) {
                binding.itemImage.scaleType = ImageView.ScaleType.FIT_CENTER
                Glide.with(this).load(intent.getStringExtra("img")).into(binding.itemImage)
                binding.fullScreen.setColorFilter(Color.BLACK, PorterDuff.Mode.SRC_ATOP)
                binding.shade.visibility = View.GONE
                imgCrop = !imgCrop
            } else {
                binding.itemImage.scaleType = ImageView.ScaleType.CENTER_CROP
                Glide.with(this).load(intent.getStringExtra("img")).into(binding.itemImage)
                binding.fullScreen.setColorFilter(null)
                binding.shade.visibility = View.GONE
                imgCrop = !imgCrop
            }
        }
        viewModel.isFavorite.observe(this) {
            Log.d("RA", it.toString())
            val imageResource = if(!it) R.drawable.baseline_favorite_border_24 else R.drawable.baseline_favorite_24
            with(binding.floatingActionButton) {
                setImageResource(imageResource)
                if (it) {
                    setOnClickListener {
                        viewModel.deleteFavorite(id)
                    }
                } else {
                    setOnClickListener {
                        viewModel.insertFavorite(id)
                    }
                }
            }
        }

        binding.backBtn.setOnClickListener {
            finish()
        }
    }
}