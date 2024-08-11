;; Auto-generated. Do not edit!


(when (boundp 'servingbot_msgs::SensorState)
  (if (not (find-package "SERVINGBOT_MSGS"))
    (make-package "SERVINGBOT_MSGS"))
  (shadow 'SensorState (find-package "SERVINGBOT_MSGS")))
(unless (find-package "SERVINGBOT_MSGS::SENSORSTATE")
  (make-package "SERVINGBOT_MSGS::SENSORSTATE"))

(in-package "ROS")
;;//! \htmlinclude SensorState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BUTTON0*" (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(shadow '*BUTTON0* (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(defconstant servingbot_msgs::SensorState::*BUTTON0* 1)
(intern "*BUTTON1*" (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(shadow '*BUTTON1* (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(defconstant servingbot_msgs::SensorState::*BUTTON1* 2)
(intern "*ERROR_LEFT_MOTOR*" (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(shadow '*ERROR_LEFT_MOTOR* (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(defconstant servingbot_msgs::SensorState::*ERROR_LEFT_MOTOR* 1)
(intern "*ERROR_RIGHT_MOTOR*" (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(shadow '*ERROR_RIGHT_MOTOR* (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(defconstant servingbot_msgs::SensorState::*ERROR_RIGHT_MOTOR* 2)
(intern "*TORQUE_ON*" (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(shadow '*TORQUE_ON* (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(defconstant servingbot_msgs::SensorState::*TORQUE_ON* 1)
(intern "*TORQUE_OFF*" (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(shadow '*TORQUE_OFF* (find-package "SERVINGBOT_MSGS::SENSORSTATE"))
(defconstant servingbot_msgs::SensorState::*TORQUE_OFF* 2)

(defun servingbot_msgs::SensorState-to-symbol (const)
  (cond
        ((= const 1) 'servingbot_msgs::SensorState::*BUTTON0*)
        ((= const 2) 'servingbot_msgs::SensorState::*BUTTON1*)
        ((= const 1) 'servingbot_msgs::SensorState::*ERROR_LEFT_MOTOR*)
        ((= const 2) 'servingbot_msgs::SensorState::*ERROR_RIGHT_MOTOR*)
        ((= const 1) 'servingbot_msgs::SensorState::*TORQUE_ON*)
        ((= const 2) 'servingbot_msgs::SensorState::*TORQUE_OFF*)
        (t nil)))

(defclass servingbot_msgs::SensorState
  :super ros::object
  :slots (_header _illumination _led _button _torque _left_encoder _right_encoder ))

(defmethod servingbot_msgs::SensorState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:illumination __illumination) 0.0)
    ((:led __led) 0)
    ((:button __button) 0)
    ((:torque __torque) nil)
    ((:left_encoder __left_encoder) 0)
    ((:right_encoder __right_encoder) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _illumination (float __illumination))
   (setq _led (round __led))
   (setq _button (round __button))
   (setq _torque __torque)
   (setq _left_encoder (round __left_encoder))
   (setq _right_encoder (round __right_encoder))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:illumination
   (&optional __illumination)
   (if __illumination (setq _illumination __illumination)) _illumination)
  (:led
   (&optional __led)
   (if __led (setq _led __led)) _led)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:torque
   (&optional (__torque :null))
   (if (not (eq __torque :null)) (setq _torque __torque)) _torque)
  (:left_encoder
   (&optional __left_encoder)
   (if __left_encoder (setq _left_encoder __left_encoder)) _left_encoder)
  (:right_encoder
   (&optional __right_encoder)
   (if __right_encoder (setq _right_encoder __right_encoder)) _right_encoder)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _illumination
    4
    ;; uint8 _led
    1
    ;; uint8 _button
    1
    ;; bool _torque
    1
    ;; int32 _left_encoder
    4
    ;; int32 _right_encoder
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _illumination
       (sys::poke _illumination (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _led
       (write-byte _led s)
     ;; uint8 _button
       (write-byte _button s)
     ;; bool _torque
       (if _torque (write-byte -1 s) (write-byte 0 s))
     ;; int32 _left_encoder
       (write-long _left_encoder s)
     ;; int32 _right_encoder
       (write-long _right_encoder s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _illumination
     (setq _illumination (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _led
     (setq _led (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button
     (setq _button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _torque
     (setq _torque (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _left_encoder
     (setq _left_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_encoder
     (setq _right_encoder (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get servingbot_msgs::SensorState :md5sum-) "35fc4701cdd5877471c35f7246cdb2c7")
(setf (get servingbot_msgs::SensorState :datatype-) "servingbot_msgs/SensorState")
(setf (get servingbot_msgs::SensorState :definition-)
      "########################################
# CONSTANTS
########################################
# Button states (states are combined, when multiple buttons are pressed)
uint8 BUTTON0 = 1
uint8 BUTTON1 = 2

# Motor errors
uint8 ERROR_LEFT_MOTOR  = 1
uint8 ERROR_RIGHT_MOTOR = 2

# Motor torque
uint8 TORQUE_ON  = 1
uint8 TORQUE_OFF = 2

########################################
# Messages
########################################
Header  header
float32 illumination
uint8   led
uint8  button
bool   torque
int32  left_encoder    # (-2,147,483,648 ~ 2,147,483,647)
int32  right_encoder   # (-2,147,483,648 ~ 2,147,483,647)


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :servingbot_msgs/SensorState "35fc4701cdd5877471c35f7246cdb2c7")


