
(cl:in-package :asdf)

(defsystem "count_words-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CountWord" :depends-on ("_package_CountWord"))
    (:file "_package_CountWord" :depends-on ("_package"))
  ))