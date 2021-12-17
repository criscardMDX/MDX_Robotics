
(cl:in-package :asdf)

(defsystem "beginner_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "String_Modify" :depends-on ("_package_String_Modify"))
    (:file "_package_String_Modify" :depends-on ("_package"))
  ))