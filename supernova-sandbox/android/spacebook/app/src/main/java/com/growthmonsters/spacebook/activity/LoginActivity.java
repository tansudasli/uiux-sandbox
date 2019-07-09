/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import android.content.Context;
import android.widget.EditText;
import android.graphics.Color;
import android.view.MenuItem;
import android.view.View;
import android.os.Bundle;
import android.widget.Button;
import com.growthmonsters.spacebook.R;
import android.support.v7.app.AppCompatActivity;
import android.widget.TextView;
import android.view.MenuInflater;
import android.support.v7.widget.Toolbar;
import android.graphics.PointF;
import android.view.Menu;
import android.content.Intent;
import android.widget.LinearLayout;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.support.constraint.ConstraintLayout;


public class LoginActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, LoginActivity.class);
	}
	
	private Toolbar toolbar;
	private ConstraintLayout loginConstraintLayout;
	private TextView logInTextView;
	private LinearLayout loginButton;
	private Button forgotYourPasswordButton;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.login_activity);
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
		
		// Configure Login component
		loginConstraintLayout = this.findViewById(R.id.login_constraint_layout);
		loginConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 98)).addStop(1f, Color.argb(255, 138, 27, 139)).build());
		
		// Configure Log in component
		logInTextView = this.findViewById(R.id.log_in_text_view);
		
		// Configure Login component
		loginButton = this.findViewById(R.id.login_button);
		loginButton.setOnClickListener((view) -> {
	this.onLoginPressed();
});
		
		// Configure Forgot your password component
		forgotYourPasswordButton = this.findViewById(R.id.forgot_your_password_button);
		forgotYourPasswordButton.setOnClickListener((view) -> {
	this.onForgotYourPasswordPressed();
});
		
		this.setupToolbar();
	}
	
	public void setupToolbar() {
	
		setSupportActionBar(toolbar);
		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
		
		// Additional Toolbar setup code can go here.
	}
	
	public void onLoginPressed() {
	
		this.startTimelineActivity();
	}
	
	public void onForgotYourPasswordPressed() {
	
	}
	
	public void onGroupPressed() {
	
		this.finish();
	}
	
	private void startTabGroupOneActivity() {
	
		this.startActivity(TimelineActivity.newIntent(this));
	}
}
