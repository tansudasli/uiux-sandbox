/**
 *  Created by [Author].
 */

package com.growthmonsters.spacebook.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.support.constraint.ConstraintLayout;
import android.widget.TextView;
import java.util.*;
import com.growthmonsters.spacebook.R;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;


public class TimelineActivityTimelineRecyclerViewAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
	public static final int NEWS_VIEW_HOLDER_VIEW_TYPE = 1;
	public static final int LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE = 2;
	public static final int NEWS_TWO_VIEW_HOLDER_VIEW_TYPE = 3;
	public static final int EVENT_VIEW_HOLDER_VIEW_TYPE = 4;
	public static final int ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE = 5;
	
	public static final List<Integer> MOCK_DATA = Arrays.asList(NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE, NEWS_VIEW_HOLDER_VIEW_TYPE, LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE, NEWS_TWO_VIEW_HOLDER_VIEW_TYPE, EVENT_VIEW_HOLDER_VIEW_TYPE, ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE);
	
	@Override
	public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
	
		switch (viewType) {
			case NEWS_VIEW_HOLDER_VIEW_TYPE: 
				return new NewsViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_view_holder, parent, false));
			case LIFETIME_EVENT_VIEW_HOLDER_VIEW_TYPE: 
				return new LifetimeEventViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.lifetime_event_view_holder, parent, false));
			case NEWS_TWO_VIEW_HOLDER_VIEW_TYPE: 
				return new NewsTwoViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.news_two_view_holder, parent, false));
			case EVENT_VIEW_HOLDER_VIEW_TYPE: 
				return new EventViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.event_view_holder, parent, false));
			case ADVERTISEMENT_VIEW_HOLDER_VIEW_TYPE: 
				return new AdvertisementViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.advertisement_view_holder, parent, false));
		}
		
		throw new RuntimeException("Unsupported view type");
	}
	
	@Override
	public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int position) {
	
		// Here you can bind RecyclerView item data.
	}
	
	@Override
	public int getItemViewType(int position) {
	
		return MOCK_DATA.get(position);
	}
	
	@Override
	public int getItemCount() {
	
		return MOCK_DATA.size();
	}
	
	
	public static class NewsViewHolder extends RecyclerView.ViewHolder {
		private TextView melonHuskLaunchesTextView;
		public NewsViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
			// Configure Melon Husk launches component
			melonHuskLaunchesTextView = this.itemView.findViewById(R.id.melon_husk_launches_text_view);
		}
	}
	
	
	public static class LifetimeEventViewHolder extends RecyclerView.ViewHolder {
		public LifetimeEventViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
		}
	}
	
	
	public static class NewsTwoViewHolder extends RecyclerView.ViewHolder {
		private TextView raidersFromTheGemTextView;
		public NewsTwoViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
			// Configure Raiders from the Gem component
			raidersFromTheGemTextView = this.itemView.findViewById(R.id.raiders_from_the_gem_text_view);
		}
	}
	
	
	public static class EventViewHolder extends RecyclerView.ViewHolder {
		private TextView guessWhoSbackTextView;
		public EventViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
			// Configure Guess who’s back? component
			guessWhoSbackTextView = this.itemView.findViewById(R.id.guess_who_sback_text_view);
		}
	}
	
	
	public static class AdvertisementViewHolder extends RecyclerView.ViewHolder {
		private TextView sprayAndPrayTextView;
		public AdvertisementViewHolder(View itemView) {
			super(itemView);
			init();
		}
		
		public void init() {
		
			// Configure Spray and Pray component
			sprayAndPrayTextView = this.itemView.findViewById(R.id.spray_and_pray_text_view);
		}
	}
}
