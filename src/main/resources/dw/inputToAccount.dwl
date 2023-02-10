%dw 2.0
output application/java

var countryData = if (vars.countryData == "null")
					{}
				 else
				 	vars.countryData
var billingCountryIso = payload.billingAddress.countryIso default ""
var billingCountryName = countryData[billingCountryIso].country
var shippingCountryIso = payload.shippingAddress.countryIso default ""
var shippingCountryName = countryData[shippingCountryIso].country

---
[{
	Name: payload.name,
	BillingStreet: payload.billingAddress.street,
	BillingCity: payload.billingAddress.city,
	BillingState: payload.billingAddress.state,
	BillingPostalCode: payload.billingAddress.postalCode,
	BillingCountry: billingCountryName,
	ShippingStreet: payload.shippingAddress.street,
	ShippingCity: payload.shippingAddress.city,
	ShippingState: payload.shippingAddress.state,
	ShippingPostalCode: payload.shippingAddress.postalCode,
	ShippingCountry: shippingCountryName,
	Phone: payload.phone,
	Fax: payload.fax,
	AccountNumber: payload.number,
	emailAddress__c: payload.email
}]