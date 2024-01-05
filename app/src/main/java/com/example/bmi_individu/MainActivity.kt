package com.example.bmi_individu

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.RadioGroup
import android.widget.TextView
import com.example.individu1.R
import com.example.individu1.R.id

class MainActivity : AppCompatActivity() {
    val buttoncalculate = findViewById<Button>(id.buttonCalculate)
    val edittextheight = findViewById<EditText>(id.editTextHeight)
    val textViewResult = findViewById<TextView>(id.textViewResult)
    val radioGroupGender = findViewById<RadioGroup>(id.radioGroupGender)
    val edittextweight = findViewById<EditText>(id.editTextWeight)
    private var gender = "laki-laki";

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)


        buttoncalculate.setOnClickListener{
            calculateBmi()
        }
    }
    private fun calculateBmi(){
        val heigtht = edittextheight.text.toString().toDouble()
        val weight = edittextweight.text.toString().toDouble()

        val selectedGenderid = radioGroupGender.checkedRadioButtonId

        gender = when(selectedGenderid){
            R.id.radioButtonMale -> "laki-laki"
            R.id.radioButtonFemale -> "perempuan"
            else -> "laki-laki"
        }
        val bmi = when(gender){
            "laki-laki"-> weight/((heigtht/100)*(heigtht/100))
            "perempuan"-> weight/ ((heigtht/100)*(heigtht/100) * 0.9)
            else ->0.0
        }

        val result = when{
            bmi < 18.5 ->"berat badan kurang"
            bmi >= 18.5 && bmi <24.9 -> "berat badan normal"
            bmi >= 25 && bmi<29.9 ->"berat badan berlebih"
            else -> "obesitas"
        }
        textViewResult.text = "BMI: %.2f\n$result".format(bmi)
    }

}