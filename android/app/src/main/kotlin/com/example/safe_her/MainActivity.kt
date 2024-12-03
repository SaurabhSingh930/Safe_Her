package com.example.safe_her

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.os.Build
import android.os.Bundle
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    private lateinit var smsReceiver: BroadcastReceiver

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        smsReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context?, intent: Intent?) {
                // Handle the received broadcast (e.g., SMS received)
            }
        }

        val intentFilter = IntentFilter("android.provider.Telephony.SMS_RECEIVED")

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            // For Android 13 or higher, register with the proper flag
            registerReceiver(smsReceiver, intentFilter, RECEIVER_EXPORTED)
        } else {
            // For lower versions (below Android 13)
            registerReceiver(smsReceiver, intentFilter)
        }

    }

    override fun onDestroy() {
        super.onDestroy()
        unregisterReceiver(smsReceiver)
    }
}
