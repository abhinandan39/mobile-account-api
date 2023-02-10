%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "status": 1,
  "message": "TECH_003: Error From Get AccountNo value present"
})