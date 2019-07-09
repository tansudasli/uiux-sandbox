/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import android.support.v7.widget.Toolbar;
import com.growthmonsters.spacebook.R;
import android.widget.Button;
import android.view.Menu;
import android.content.Context;
import android.widget.LinearLayout;
import android.graphics.Color;
import android.graphics.PointF;
import android.support.v7.app.AppCompatActivity;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.view.MenuItem;
import android.widget.Switch;
import android.widget.TextView;
import android.os.Bundle;
import android.widget.EditText;
import android.content.Intent;
import android.view.MenuInflater;
import android.support.constraint.ConstraintLayout;
import android.view.View;


public class SignupActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, SignupActivity.class);
	}
	
	private Toolbar toolbar;
	private ConstraintLayout signupConstraintLayout;
	private TextView signUpTextView;
	private LinearLayout signUpButton;
	private Button logInButton;
	private Switch switchSwitch;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.signup_activity);
		this.init();
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem menuItem) {
	
		switch (menuItem.getItemId()) {
			case android.R.id.home: 
				this.onGroupPressed();
				return true;
			default:
				return super.onOptionsItemSelected(menuItem);
		}
	}
	
	private void init() {
	
		// Configure Navigation Bar #1 component
		toolbar = this.findViewById(R.id.toolbar);
		
		// Configure Signup component
		signupConstraintLayout = this.findViewById(R.id.signup_constraint_layout);
		signupConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 98)).addStop(1f, Color.argb(255, 138, 27, 139)).build());
		
		// Configure Sign up component
		signUpTextView = this.findViewById(R.id.sign_up_text_view);
		
		// Configure Sign Up component
		signUpButton = this.findViewById(R.id.sign_up_button);
		signUpButton.setOnClickListener((view) -> {
	this.onSignUpPressed();
});
		
		// Configure Log In component
		logInButton = this.findViewById(R.id.log_in_button);
		logInButton.setOnClickListener((view) -> {
	this.onLogInPressed();
});
		
		// Configure switch component
		switchSwitch = this.findViewById(R.id.switch_switch);
		switchSwitch.setOnClickListener((view) -> {
	this.onSwitchValueChanged();
});
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onSignUpPressed() {
	
		this.startTimelineActivity();
	}
	
	public void onLogInPressed() {
	
	}
	
	public void onSwitchValueChanged() {
	
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
	
	private void startTabGroupOneActivity() {
	
		this.startActivity(TimelineActivity.newIntent(this));
	}
}
