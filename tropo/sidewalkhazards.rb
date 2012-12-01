if !!$message_type && $message_type.downcase == "sms"
  call "+1#{$numberToDial}", :network => "SMS"
else
  call "+1#{$numberToDial}"
end
sleep 3
result = ask "Thank you for using A T and T hack a thon app for reporting side walk hazards. Please press one to confirm you initiated this request.", { :choices => "1", :timeout => 45.0}
if result.value == "1"
  say "Thank You for verifying your phone number"
else
  say "You are obviously not human"
end
log "called #{$numberToDial}"