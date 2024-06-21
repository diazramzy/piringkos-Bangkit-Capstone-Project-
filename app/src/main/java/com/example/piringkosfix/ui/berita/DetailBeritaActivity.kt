package com.example.piringkosfix

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import com.bumptech.glide.Glide
import com.example.piringkosfix.databinding.ActivityDetailBeritaBinding

class DetailBeritaActivity : AppCompatActivity() {
    private lateinit var binding: ActivityDetailBeritaBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityDetailBeritaBinding.inflate(layoutInflater)
        setContentView(binding.root)

        Glide.with(this).load(intent.getStringExtra("img")).into(binding.newsImage)
        binding.newsTitle1.text = intent.getStringExtra("tittle")
        binding.newsDesc.text = intent.getStringExtra("desc")

        binding.backBtn.setOnClickListener {
            finish()
        }
    }
}
