package com.narasimha.mvc.service;

import com.narasimha.mvc.model.PassengerProfile;

public interface IPassengerService {

	PassengerProfile getPassengerProfile(int profile_id);

	PassengerProfile addPassengerProfile(PassengerProfile passenger);

	void deletePassengerProfile(int profile_id);

	PassengerProfile updatePassengerProfile(PassengerProfile passenger);

}
