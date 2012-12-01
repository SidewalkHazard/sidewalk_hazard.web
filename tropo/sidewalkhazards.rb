if !!$message_type && $message_type.downcase == "sms"
  call "+1#{$numberToDial}", :network => "SMS"
else
  call "+1#{$numberToDial}"
end
sleep 3
say $msg
log "called #{$numberToDial}"