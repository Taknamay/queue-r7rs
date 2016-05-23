
(define-object <prometheus-queue> (*the-root-object*)
  (Q set-Q! (queue))
  
  ((clone self resend . values)
   (let ((x (resend #f 'clone)))
     (x 'set-Q! (list->queue values))
     x))
  
  ((write self resend)
   (format "{<queue> ~s}" (queue->list (self 'Q))))
  
  ((equals? self resend x)
   (equal? (self 'list)
           (x 'list)))
  
  ((list self resend)
   (queue->list (self 'Q)))
  
  ((length self resend)
   (queue-length (self 'Q)))
  
  ((empty? self resend)
   (queue-empty? (self 'Q)))
  
  ((empty! self resend)
   (self 'set-Q! (queue)))
  
  ((add! self resend val)
   (queue-add! (self 'Q) val))
  
  ((add-front! self resend val)
   (queue-add-front! (self 'Q) val))
  
  ((remove! self resend)
   (queue-remove! (self 'Q)))
  
  ((front self resend)
   (queue-front (self 'Q)))
  
  ((back self resend)
   (queue-back (self 'Q))))
