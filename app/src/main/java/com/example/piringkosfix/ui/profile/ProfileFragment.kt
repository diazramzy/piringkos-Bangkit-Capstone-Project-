package com.example.piringkosfix.ui.profile

import android.content.Intent
import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.viewModels
import com.example.piringkosfix.R
import com.example.piringkosfix.databinding.FragmentProfileBinding
import com.example.piringkosfix.ui.auth.AuthActivity


class ProfileFragment : Fragment() {

    private val viewModel: ProfileViewModel by viewModels()
    private lateinit var binding: FragmentProfileBinding
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        // Inflate the layout for this fragment
        binding = FragmentProfileBinding.inflate(layoutInflater, container, false)
        viewModel.fetchEmail()
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        with(binding) {
            logoutButton.setOnClickListener {
                logout()
            }
            viewModel.profile.observe(viewLifecycleOwner) {
                emailText.text = it.email
                nameText.text = it.name
            }
        }
    }

    fun logout() {
        viewModel.logout()
        Intent(requireActivity(), AuthActivity::class.java).apply {
            startActivity(this)
            requireActivity().finish()
        }
    }
}