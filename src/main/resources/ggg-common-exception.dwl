%dw 1.0
%output application/json
---
{
	"mule-correlationId" : sessionVars.correlationId,
	"severity" : "fatal",
	"mule-exception" : {
		"mule-exception-code" : flowVars.exception.errorCode,
		"mule-exception-message" : flowVars.exception.message,
		"mule-exception-source" : flowVars.exception.info['Element'],
		"mule-exception-details" : flowVars.exception.cause.detailMessage
	},
	"external-exception" : {
		"external-exception-code" : "",
		"external-exception-message" : ""
	},
	"internal-exception" : {
		"external-exception-code" : "",
		"external-exception-message" : ""
	}
}