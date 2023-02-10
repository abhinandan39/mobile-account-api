%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
    "id": "000032",
    "status": 0,
    "message": "Account created successfully"
})