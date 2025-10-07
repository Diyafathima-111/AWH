package com.example.toggle;

import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ToggleButton;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {
    ToggleButton tb;
    TextView tv;
    ImageView iv;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

        tb=findViewById(R.id.toggleButton);
        iv=findViewById(R.id.imageView);
        tv=findViewById(R.id.textView);
        tb.setOnCheckedChangeListener((buttonView, isChecked) ->
        {
            if(isChecked){
                iv.setImageResource(R.drawable.lightoff);
                tv.setText("Light is off");
            }else{
                iv.setImageResource(R.drawable.on);
                tv.setText("Light is on");
            }
        });
    }
}
