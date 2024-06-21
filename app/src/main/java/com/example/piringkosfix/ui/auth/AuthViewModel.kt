package com.example.piringkosfix.ui.auth

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.piringkosfix.data.Result
import com.example.piringkosfix.data.auth.AuthSource
import kotlinx.coroutines.launch

class AuthViewModel: ViewModel() {
    private val authSource = AuthSource()

    private val _isLogin = MutableLiveData<Boolean>()
    val isLogin = _isLogin

    private val _message = MutableLiveData<String>()
    val message = _message

    fun checkIsLogin() {
        _isLogin.postValue(authSource.isLogin())
    }

    fun register(name: String, email: String, password: String) {
        viewModelScope.launch {
            authSource.signUp(name, email, password).collect {
                when (it) {
                    is Result.Error -> {
                        _message.postValue(it.error)
                    }
                    Result.Loading -> {
                    }
                    is Result.Success -> {
                        _message.postValue(it.data)
                    }
                }
            }
        }
        checkIsLogin()
    }

    fun login(email: String, password: String) {
        viewModelScope.launch {
            authSource.login(email, password).collect {
                when (it) {
                    is Result.Error -> {
                        _message.postValue(it.error)
                    }
                    Result.Loading -> {
                    }
                    is Result.Success -> {
                        _message.postValue(it.data)
                    }
                }
            }
        }
        checkIsLogin()
    }
}