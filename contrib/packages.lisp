;;;;; RUTILSX package definitions
;;;;; see LICENSE file for permissions

(cl:in-package :cl-user)


(defpackage #:rutilsx.generators
  (:documentation "Python-like generators (yield) support.")
  (:use :common-lisp #:rutil)
  (:export #:doing
           #:force
           #:generated
           #:generated-item
           #:yield
           #:yield-to))

(defpackage #:rutilsx.generic
  (:use :common-lisp #:rutil #:rutilsx.generators)
  (:documentation "Generic access to pairs, sequences and tables.")
  (:export #:copy
           #:tally
           #:eq-test
           #:generic-elt
           #:generic-elt-error
           #:generic-elt-error-obj
           #:generic-elt-error-key
           #:keys
           #:kvs
           #:maptab
           #:pairs
           #:smart-slot-value
           #:vals
           #:?))

(defpackage #:rutilsx.iter
  (:documentation "Iterate macro with keywords for clauses.")
  (:use :common-lisp #:rutil)
  (:export #:iter
           #:iter-version
           #:declare-variables
           #:defclause
           #:defclause-driver
           #:defclause-sequence
           #:defmacro-clause
           #:defmacro-driver
           #:display-iter-clauses
           #:dsetq))

(defpackage #:rutilsx.bind
  (:documentation "Unified extensible bind operator.")
  (:use :common-lisp #:rutil #:rutilsx.generic)
  (:export #:bind
           #:bind-dispatch
           #:with
           #:@
           #:_))

(defpackage #:rutilsx.threading
  (:documentation "Clojure-like threading macros.")
  (:use :common-lisp #:rutil)
  (:export #:->
           #:->>
           #:=>))

(defpackage #:rutilsx.readtable
  (:documentation "Additional reader syntax support.")
  (:use :common-lisp #:rutil #:rutilsx.generic #:rutilsx.bind)
  (:export #:rutilsx-readtable))

(defpackage #:rutilsx
  (:documentation "The whole set of utilities in one package.")
  (:use :common-lisp))
