
(cl:in-package :asdf)

(defsystem "sum_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sum" :depends-on ("_package_sum"))
    (:file "_package_sum" :depends-on ("_package"))
  ))