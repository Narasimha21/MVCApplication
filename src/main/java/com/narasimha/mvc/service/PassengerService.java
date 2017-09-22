package com.narasimha.mvc.service;

import org.springframework.web.client.RestTemplate;

import com.narasimha.mvc.model.PassengerProfile;

public class PassengerService implements IPassengerService {
	RestTemplate restTemplate = new RestTemplate();
	String Uri = "http://localhost:8123/RESTApplication/passenger";

	@Override
	public PassengerProfile getPassengerProfile(int profile_id) {
		String url = Uri + "/" + profile_id;
		PassengerProfile passenger = restTemplate.getForObject(url, PassengerProfile.class);
		return passenger;
	}

	@Override
	public PassengerProfile addPassengerProfile(PassengerProfile pass) {
		String url = Uri + "/";

		PassengerProfile passenger = restTemplate.postForObject(url, pass, PassengerProfile.class);

		return passenger;
	}

	@Override
	public void deletePassengerProfile(int profile_id) {
		// TODO Auto-generated method stub
		String url = Uri + "/" + profile_id;
		restTemplate.delete(url);
	}

	@Override
	public PassengerProfile updatePassengerProfile(PassengerProfile passenger) {
		// TODO Auto-generated method stub
		String url = Uri + "/";
		restTemplate.put(url, passenger);
		return passenger;
	}
}
