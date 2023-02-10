%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "status": 1,
  "message": "No User found with the given accountId"
})