
(define-library (macduffie queue prometheus)
  (import
   (scheme base)
   (srfi 28)
   (macduffie queue)
   (prometheus prometheus))
  (export <queue> queue)
  (include "prometheus.body.scm"))

