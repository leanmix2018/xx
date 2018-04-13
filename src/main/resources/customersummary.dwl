%dw 1.0
%output application/java

%var customersummaryOrchestrationFlows = p('customersummary.orchestrationFlows') splitBy ","
%function removeQuotes(ref) ref replace "\"" with ""

---
customersummaryOrchestrationFlows map lookup(removeQuotes($), {})