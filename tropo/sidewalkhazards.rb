if !!$message_type && $message_type == "SMS"
  call "+1#{$numberToDial}", :network => "SMS"
else
  call "+1#{$numberToDial}"
end
say $msg
log "called #{$numberToDial}"