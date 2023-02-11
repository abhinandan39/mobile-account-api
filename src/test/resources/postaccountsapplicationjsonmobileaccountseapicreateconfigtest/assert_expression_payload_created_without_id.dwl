%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
	"status": 0,
	"message": "Account created successfully. Due to Technical issues, we are not able to get the account details"
})