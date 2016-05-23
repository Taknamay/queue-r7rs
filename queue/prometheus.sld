
(define-library (macduffie queue prometheus)
  (import
   (scheme base)
   (srfi 28)
   (macduffie queue)
   (prometheus prometheus))
  (export <prometheus-queue>)
  (include "prometheus.body.scm"))

