package com.example.piringkosfix.ui.auth

import android.content.Intent
import android.os.Bundle
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.findNavController
import com.example.piringkosfix.MainActivity
import com.example.piringkosfix.R
import com.example.piringkosfix.databinding.ActivityAuthBinding

class AuthActivity : AppCompatActivity() {
    private lateinit var binding: ActivityAuthBinding
    private val viewModel: AuthViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityAuthBinding.inflate(layoutInflater)
        setContentView(binding.root)

        viewModel.checkIsLogin()

        val navController = findNavController(R.id.nav_host_fragment_content_auth)

        viewModel.isLogin.observe(this) {
            if (it) {
                navigateToMainActivity()
            }
        }

        viewModel.message.observe(this) {
            showMessage(it)
        }
    }

    private fun showMessage(q: String) {
        Toast.makeText(this, q, Toast.LENGTH_SHORT).show()
    }

    private fun navigateToMainActivity() {
        Intent(this@AuthActivity, MainActivity::class.java).apply {
            startActivity(this@apply)
            finish()
        }
    }
}