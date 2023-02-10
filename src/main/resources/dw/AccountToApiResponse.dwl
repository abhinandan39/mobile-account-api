output application/json
var account = payload[0]
---
{
	name: account.Name,
	email: account.emailAddress__c,
	number: account.AccountNumber,
	phone: account.Phone,
	fax: account.Fax,
	billingAddress: {
		street: account.BillingStreet,
		city: account.BillingCity,
		state: account.BillingState,
		postalCode: account.BillingPostalCode,
		country: account.BillingCountry
	},
	shippingAddress: {
		street: account.ShippingStreet,
		city: account.ShippingCity,
		state: account.ShippingState,
		postalCode: account.ShippingPostalCode,
		country: account.ShippingCountry
	}
}