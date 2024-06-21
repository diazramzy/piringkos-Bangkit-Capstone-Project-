package com.example.piringkosfix.data.auth

import com.example.piringkosfix.data.Result
import com.example.piringkosfix.data.model.ProfileModel
import com.google.firebase.Firebase
import com.google.firebase.auth.auth
import com.google.firebase.auth.userProfileChangeRequest
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.flow
import kotlinx.coroutines.tasks.await

class AuthSource {
    private val firebaseAuth = Firebase.auth

    fun login(email: String, password: String): Flow<Result<String>> = flow {
        try {
            firebaseAuth.signInWithEmailAndPassword(email, password).await()
            emit(Result.Success("Sukses"))
        } catch (e: Exception) {
            emit(Result.Error(e.toString()))
        }
    }

    fun signUp(name: String, email: String, password: String): Flow<Result<String>> = flow {
        try {
            firebaseAuth.createUserWithEmailAndPassword(email, password).await()
            val profileRequest = userProfileChangeRequest {
                displayName = name
            }
            firebaseAuth.currentUser?.updateProfile(profileRequest)
            emit(Result.Success("Sukses"))
        } catch (e: Exception) {
            emit(Result.Error(e.toString()))
        }
    }
    fun isLogin(): Boolean {
        return firebaseAuth.currentUser != null
    }

    fun signOut() {
        firebaseAuth.signOut()
    }

    fun getProfile(): ProfileModel {
        val email = firebaseAuth.currentUser?.email ?:" Empty Mail"
        val name =  firebaseAuth.currentUser?.displayName ?:" Empty Name"
        return ProfileModel(email, name)
    }
}