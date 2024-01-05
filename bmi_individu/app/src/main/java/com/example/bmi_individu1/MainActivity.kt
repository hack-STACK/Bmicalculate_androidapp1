package com.example.bmi_individu

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.RadioGroup
import android.widget.TextView
import com.example.bmi_individu1.R



class MainActivity : AppCompatActivity() {
    private lateinit var buttoncalculate: Button
    private lateinit var edittextheight: EditText
    private lateinit var textViewResult: TextView
    private lateinit var radioGroupGender: RadioGroup
    private lateinit var edittextweight: EditText
    private var gender = "laki-laki"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        // Initialize views after setContentView
        buttoncalculate = findViewById(R.id.buttonCalculate)
        edittextheight = findViewById(R.id.editTextHeight)
        textViewResult = findViewById(R.id.textViewResult)
        radioGroupGender = findViewById(R.id.radioGroupGender)
        edittextweight = findViewById(R.id.editTextWeight)

        buttoncalculate.setOnClickListener {
            calculateBmi()
        }
    }

    private fun calculateBmi() {
        val height = edittextheight.text.toString().toDouble()
        val weight = edittextweight.text.toString().toDouble()

        val selectedGenderid = radioGroupGender.checkedRadioButtonId

        gender = when (selectedGenderid) {
            R.id.radioButtonMale -> "laki-laki"
            R.id.radioButtonFemale -> "perempuan"
            else -> "laki-laki"
        }

        val bmi = when (gender) {
            "laki-laki" -> weight / ((height / 100) * (height / 100))
            "perempuan" -> weight / ((height / 100) * (height / 100) * 0.9)
            else -> 0.0
        }

        val result = when {
            bmi < 18.5 -> "berat badan kurang"
            bmi >= 18.5 && bmi < 24.9 -> "berat badan normal"
            bmi >= 25 && bmi < 29.9 -> "berat badan berlebih"
            else -> "obesitas"
        }
        textViewResult.text = "BMI: %.2f\n$result".format(bmi)
    }
}
