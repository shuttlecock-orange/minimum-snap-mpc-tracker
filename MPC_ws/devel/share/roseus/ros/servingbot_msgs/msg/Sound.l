;; Auto-generated. Do not edit!


(when (boundp 'servingbot_msgs::Sound)
  (if (not (find-package "SERVINGBOT_MSGS"))
    (make-package "SERVINGBOT_MSGS"))
  (shadow 'Sound (find-package "SERVINGBOT_MSGS")))
(unless (find-package "SERVINGBOT_MSGS::SOUND")
  (make-package "SERVINGBOT_MSGS::SOUND"))

(in-package "ROS")
;;//! \htmlinclude Sound.msg.html


(intern "*OFF*" (find-package "SERVINGBOT_MSGS::SOUND"))
(shadow '*OFF* (find-package "SERVINGBOT_MSGS::SOUND"))
(defconstant servingbot_msgs::Sound::*OFF* 0)
(intern "*ON*" (find-package "SERVINGBOT_MSGS::SOUND"))
(shadow '*ON* (find-package "SERVINGBOT_MSGS::SOUND"))
(defconstant servingbot_msgs::Sound::*ON* 1)
(intern "*LOW_BATTERY*" (find-package "SERVINGBOT_MSGS::SOUND"))
(shadow '*LOW_BATTERY* (find-package "SERVINGBOT_MSGS::SOUND"))
(defconstant servingbot_msgs::Sound::*LOW_BATTERY* 2)
(intern "*ERROR*" (find-package "SERVINGBOT_MSGS::SOUND"))
(shadow '*ERROR* (find-package "SERVINGBOT_MSGS::SOUND"))
(defconstant servingbot_msgs::Sound::*ERROR* 3)
(intern "*BUTTON1*" (find-package "SERVINGBOT_MSGS::SOUND"))
(shadow '*BUTTON1* (find-package "SERVINGBOT_MSGS::SOUND"))
(defconstant servingbot_msgs::Sound::*BUTTON1* 4)
(intern "*BUTTON2*" (find-package "SERVINGBOT_MSGS::SOUND"))
(shadow '*BUTTON2* (find-package "SERVINGBOT_MSGS::SOUND"))
(defconstant servingbot_msgs::Sound::*BUTTON2* 5)

(defun servingbot_msgs::Sound-to-symbol (const)
  (cond
        ((= const 0) 'servingbot_msgs::Sound::*OFF*)
        ((= const 1) 'servingbot_msgs::Sound::*ON*)
        ((= const 2) 'servingbot_msgs::Sound::*LOW_BATTERY*)
        ((= const 3) 'servingbot_msgs::Sound::*ERROR*)
        ((= const 4) 'servingbot_msgs::Sound::*BUTTON1*)
        ((= const 5) 'servingbot_msgs::Sound::*BUTTON2*)
        (t nil)))

(defclass servingbot_msgs::Sound
  :super ros::object
  :slots (_value ))

(defmethod servingbot_msgs::Sound
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get servingbot_msgs::Sound :md5sum-) "e1f8c7f8a9a61383b5734fbdeca2f99a")
(setf (get servingbot_msgs::Sound :datatype-) "servingbot_msgs/Sound")
(setf (get servingbot_msgs::Sound :definition-)
      "########################################
# CONSTANTS
########################################
uint8 OFF           = 0
uint8 ON            = 1
uint8 LOW_BATTERY   = 2
uint8 ERROR         = 3
uint8 BUTTON1       = 4
uint8 BUTTON2       = 5

########################################
# Messages
########################################
uint8 value

")



(provide :servingbot_msgs/Sound "e1f8c7f8a9a61383b5734fbdeca2f99a")


