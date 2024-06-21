package com.example.piringkosfix.ui.profile

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.example.piringkosfix.data.auth.AuthSource
import com.example.piringkosfix.data.model.ProfileModel

class ProfileViewModel: ViewModel() {
    private val authSource = AuthSource()

    private val _profile = MutableLiveData<ProfileModel>()
    val profile = _profile

    fun fetchEmail() {
        _profile.postValue(authSource.getProfile())
    }
    fun logout() {
        authSource.signOut()
    }
}