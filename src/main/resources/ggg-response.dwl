%dw 1.0
%output application/json
---
{
	"currentUser" : sessionVars.user,
	"correlationId" : sessionVars.correlationId,
	"apiResponse" : payload
}