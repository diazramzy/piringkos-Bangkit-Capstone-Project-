package com.example.piringkosfix.data


sealed class Result <out T>{
    data object Loading: Result<Nothing>()
    data class Success<T>(val data: T): Result<T>()
    data class Error(val error: String): Result<String>()
}