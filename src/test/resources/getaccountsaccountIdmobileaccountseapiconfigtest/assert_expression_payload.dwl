%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "name": "John Jhonson",
  "email": "johnj@gmail.com",
  "number": "777777777777",
  "phone": "5555566666",
  "fax": "5555666677",
  "billingAddress": {
    "street": "Sohna Road",
    "city": "Gurugram",
    "state": "Haryana",
    "postalCode": "500089",
    "country": "India"
  },
  "shippingAddress": {
    "street": "Sohna Road",
    "city": "Gurugram",
    "state": "haryana",
    "postalCode": "500089",
    "country": "India"
  }
})