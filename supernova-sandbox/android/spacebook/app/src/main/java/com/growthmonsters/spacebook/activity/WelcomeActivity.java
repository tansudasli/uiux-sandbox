/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.activity;

import android.animation.PropertyValuesHolder;
import android.widget.TextView;
import android.support.v4.view.animation.PathInterpolatorCompat;
import android.animation.Keyframe;
import android.content.Intent;
import com.growthmonsters.spacebook.R;
import android.content.Context;
import android.widget.LinearLayout;
import android.graphics.Color;
import android.widget.ImageView;
import android.view.View;
import android.os.Bundle;
import android.graphics.PointF;
import io.supernova.uitoolkit.drawable.LinearGradientDrawable;
import android.animation.AnimatorSet;
import android.support.v7.app.AppCompatActivity;
import android.animation.ObjectAnimator;
import android.support.constraint.ConstraintLayout;
import android.animation.AnimatorInflater;
import android.animation.Animator;


public class WelcomeActivity extends AppCompatActivity {
	
	public static Intent newIntent(Context context) {
	
		// Fill the created intent with the data you want to be passed to this Activity when it's opened.
		return new Intent(context, WelcomeActivity.class);
	}
	
	private ConstraintLayout welcomeConstraintLayout;
	private TextView spacebookTextView;
	private ImageView logoImageView;
	private LinearLayout logInButton;
	private LinearLayout signUpButton;
	
	@Override
	public void onCreate(Bundle savedInstanceState) {
	
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.welcome_activity);
		this.init();
	}
	
	private void init() {
	
		// Configure Welcome component
		welcomeConstraintLayout = this.findViewById(R.id.welcome_constraint_layout);
		welcomeConstraintLayout.setBackground(new LinearGradientDrawable.Builder(this, new PointF(0.31f, 1.1f), new PointF(0.69f, -0.1f)).addStop(0f, Color.argb(255, 247, 132, 98)).addStop(1f, Color.argb(255, 138, 27, 139)).build());
		
		// Configure Spacebook component
		spacebookTextView = this.findViewById(R.id.spacebook_text_view);
		
		// Configure logo component
		logoImageView = this.findViewById(R.id.logo_image_view);
		
		// Configure Log In component
		logInButton = this.findViewById(R.id.log_in_button);
		logInButton.setOnClickListener((view) -> {
	this.onLogInPressed();
});
		
		// Configure Sign Up component
		signUpButton = this.findViewById(R.id.sign_up_button);
		signUpButton.setOnClickListener((view) -> {
	this.onSignUpPressed();
});
	}
	
	public void onLogInPressed() {
	
		this.startLoginActivity();
	}
	
	public void onSignUpPressed() {
	
		this.startSignupActivity();
	}
	
	private void startLoginActivity() {
	
		this.startActivity(LoginActivity.newIntent(this));
	}
	
	private void startSignupActivity() {
	
		this.startActivity(SignupActivity.newIntent(this));
	}
	
	public void startAnimationOne() {
	
		Animator animator1 = AnimatorInflater.loadAnimator(this, R.animator.welcome_activity_animation_group_one_element_one);
		AnimatorSet set1 = new AnimatorSet();
		set1.playTogether(animator1);
		set1.setTarget(logoImageView);
		AnimatorSet set2 = new AnimatorSet();
		set2.playTogether(set1);
		set2.start();
	}
}
