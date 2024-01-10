package com.example.bmi_individu

import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.RadioGroup
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.example.bmi_individu1.R


class MainActivity : AppCompatActivity() {
    private lateinit var namahuman : EditText
    private lateinit var notelp : EditText
    private lateinit var buttoncalculate: Button
    private lateinit var edittextheight: EditText
    private lateinit var textViewResult: TextView
    private lateinit var radioGroupGender: RadioGroup
    private lateinit var edittextweight: EditText
    private lateinit var alamat : EditText
    private lateinit var reset :Button
    private var gender = "laki-laki"



    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        notelp =findViewById(R.id.editTexttelp)
        namahuman = findViewById(R.id.editTexthuman)
        alamat = findViewById(R.id.editTextAlamat)
        buttoncalculate = findViewById(R.id.buttonCalculate)
        edittextheight = findViewById(R.id.editTextHeight)
        textViewResult = findViewById(R.id.textViewResult)
        radioGroupGender = findViewById(R.id.radioGroupGender)
        edittextweight = findViewById(R.id.editTextWeight)
        reset = findViewById(R.id.Reset)

        reset.setOnClickListener(){
            if (reset != null){
                reset()
            } else{

            }

        }

        buttoncalculate.setOnClickListener {
            if(edittextheight.text.isNullOrEmpty() || edittextweight.text.isNullOrEmpty()){
                textViewResult.text = "isi field"
                return@setOnClickListener
                calculateBmi()
            }

        }
    }

    private fun reset(){
        namahuman.setText("")
        notelp.setText("")
        edittextheight.setText("")
        edittextweight.setText("")
        alamat.setText("")
        textViewResult.setText("")

    }

    private fun calculateBmi() {

        val height = edittextheight.text.toString().toDouble()
        val weight = edittextweight.text.toString().toDouble()
        val nama = namahuman.text.toString()
        val alamat = alamat.text.toString()
        val notelp = notelp.text.toString()
        val selectedGenderid = radioGroupGender.checkedRadioButtonId
        val gender = gender.toString()

        this.gender = when (selectedGenderid) {
            R.id.radioButtonMale -> "laki-laki"
            R.id.radioButtonFemale -> "perempuan"
            else -> "Anda Bukan manusia"
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
        textViewResult.text = "Nama : $nama\n" +
                "No telp : $notelp\nAlamat : $alamat \nGender: $gender\nBMI: %.2f\n$result".format(bmi)
    }
}
