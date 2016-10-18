package uk.gov.nhs.digital.ers.service.domain;


public class HospitalDTO {

	private Long id;
	private String organisationCode;
	private String name;
	private String postalCode;
	private String contact;
	private String email;
	private String website;
	private String fax;
	private String address;
	private Double latitude;
	private Double longitude;
	private String status;

	public HospitalDTO() {
	}

	public HospitalDTO(Long id, String organisationCode, String name, String postalCode, String contact, String email, String website, String fax, String address, Double latitude, Double longitude, String status) {
		this();
		this.id = id;
		this.organisationCode = organisationCode;
		this.name = name;
		this.postalCode = postalCode;
		this.contact = contact;
		this.email = email;
		this.website = website;
		this.fax = fax;
		this.address = address;
		this.latitude = latitude;
		this.longitude = longitude;
		this.status = status;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getOrganisationCode() {
		return organisationCode;
	}

	public void setOrganisationCode(String organisationCode) {
		this.organisationCode = organisationCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getLatitude() {
		return latitude;
	}

	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}

	public Double getLongitude() {
		return longitude;
	}

	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((organisationCode == null) ? 0 : organisationCode.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if(this == obj)
			return true;
		if(obj == null)
			return false;
		if(getClass() != obj.getClass())
			return false;
		HospitalDTO other = (HospitalDTO) obj;
		if(organisationCode == null) {
			if(other.organisationCode != null)
				return false;
		} else if(!organisationCode.equals(other.organisationCode))
			return false;
		return true;
	}
}