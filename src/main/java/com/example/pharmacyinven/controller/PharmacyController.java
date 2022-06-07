package com.example.pharmacyinven.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.pharmacyinven.mapper.PharmacyMapper;
import com.example.pharmacyinven.model.PharmacyVO;

@RestController
public class PharmacyController {
	@Autowired
	private PharmacyMapper pharmacymapper;

	public PharmacyController(PharmacyMapper pharmacymapper) {
		this.pharmacymapper = pharmacymapper;
	}

	@GetMapping("/pharmacy/{pharmaId}")
	public PharmacyVO getPharmacy(@PathVariable("pharmaId") String pharmaId) {
		return pharmacymapper.getPharmacy(pharmaId);
	}

	@GetMapping("/pharmacy/all")
	public List<PharmacyVO> getPharmacyList() {
		return pharmacymapper.getPharmacyList();
	}

}
