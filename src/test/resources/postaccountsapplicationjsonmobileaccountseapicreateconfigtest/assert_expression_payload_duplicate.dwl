%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
    "status": 1,
    "message": "Unable to Create Account: DUPLICATES_DETECTED"
})