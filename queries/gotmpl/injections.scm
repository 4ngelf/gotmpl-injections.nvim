;; extends

; Match the first comment found in the document which contents may be
; /*lang:{LANGUAGE}*/ where LANGUAGE is the injected language
(template
  .
  (text)?
  .
  (comment) @injection.language

  (text) @injection.content

  (#gsub! @injection.language "/%*lang:([-_A-Za-z0-9]+)%*/" "%1")
  (#set! injection.combined))

(template
  .
  (text)?
  .
  (comment) @injection.language

  (_ (text) @injection.content)

  (#gsub! @injection.language "/%*lang:([-_A-Za-z0-9]+)%*/" "%1")
  (#set! injection.combined))
