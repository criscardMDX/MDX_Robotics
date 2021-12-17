;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::String_Modify)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'String_Modify (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::STRING_MODIFY")
  (make-package "BEGINNER_TUTORIALS::STRING_MODIFY"))
(unless (find-package "BEGINNER_TUTORIALS::STRING_MODIFYREQUEST")
  (make-package "BEGINNER_TUTORIALS::STRING_MODIFYREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::STRING_MODIFYRESPONSE")
  (make-package "BEGINNER_TUTORIALS::STRING_MODIFYRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::String_ModifyRequest
  :super ros::object
  :slots (_Message ))

(defmethod beginner_tutorials::String_ModifyRequest
  (:init
   (&key
    ((:Message __Message) "")
    )
   (send-super :init)
   (setq _Message (string __Message))
   self)
  (:Message
   (&optional __Message)
   (if __Message (setq _Message __Message)) _Message)
  (:serialization-length
   ()
   (+
    ;; string _Message
    4 (length _Message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Message
       (write-long (length _Message) s) (princ _Message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass beginner_tutorials::String_ModifyResponse
  :super ros::object
  :slots ())

(defmethod beginner_tutorials::String_ModifyResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass beginner_tutorials::String_Modify
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::String_Modify :md5sum-) "ce8c0532094f50bab075d6707a3fc45b")
(setf (get beginner_tutorials::String_Modify :datatype-) "beginner_tutorials/String_Modify")
(setf (get beginner_tutorials::String_Modify :request) beginner_tutorials::String_ModifyRequest)
(setf (get beginner_tutorials::String_Modify :response) beginner_tutorials::String_ModifyResponse)

(defmethod beginner_tutorials::String_ModifyRequest
  (:response () (instance beginner_tutorials::String_ModifyResponse :init)))

(setf (get beginner_tutorials::String_ModifyRequest :md5sum-) "ce8c0532094f50bab075d6707a3fc45b")
(setf (get beginner_tutorials::String_ModifyRequest :datatype-) "beginner_tutorials/String_ModifyRequest")
(setf (get beginner_tutorials::String_ModifyRequest :definition-)
      "# Incoming parameter of the service.
string Message

---
")

(setf (get beginner_tutorials::String_ModifyResponse :md5sum-) "ce8c0532094f50bab075d6707a3fc45b")
(setf (get beginner_tutorials::String_ModifyResponse :datatype-) "beginner_tutorials/String_ModifyResponse")
(setf (get beginner_tutorials::String_ModifyResponse :definition-)
      "# Incoming parameter of the service.
string Message

---
")



(provide :beginner_tutorials/String_Modify "ce8c0532094f50bab075d6707a3fc45b")


