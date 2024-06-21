package com.example.piringkosfix.ui.berita

import android.content.Context
import android.content.Intent
import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide
import com.example.piringkosfix.Berita
import com.example.piringkosfix.DetailBeritaActivity
import com.example.piringkosfix.databinding.ArticleRvItemBinding

class BeritaAdapter(
    private val beritaList: List<Berita>,
    private val context: Context
) : RecyclerView.Adapter<BeritaAdapter.ViewHolder>() {

    inner class ViewHolder(val binding: ArticleRvItemBinding) : RecyclerView.ViewHolder(binding.root)

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val binding = ArticleRvItemBinding.inflate(LayoutInflater.from(context), parent, false)
        return ViewHolder(binding)
    }

    override fun getItemCount(): Int {
        return beritaList.size
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        val item = beritaList[position]
        with(holder.binding) {
            Glide.with(context).load(item.img).into(articleImage)
            articleTitle.text = item.tittle

            root.setOnClickListener {
                val intent = Intent(context, DetailBeritaActivity::class.java).apply {
                    putExtra("img", item.img)
                    putExtra("tittle", item.tittle)
                    putExtra("desc", item.desc)
                }
                context.startActivity(intent)
            }
        }
    }
}
