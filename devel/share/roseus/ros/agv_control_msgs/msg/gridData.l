;; Auto-generated. Do not edit!


(when (boundp 'agv_control_msgs::gridData)
  (if (not (find-package "AGV_CONTROL_MSGS"))
    (make-package "AGV_CONTROL_MSGS"))
  (shadow 'gridData (find-package "AGV_CONTROL_MSGS")))
(unless (find-package "AGV_CONTROL_MSGS::GRIDDATA")
  (make-package "AGV_CONTROL_MSGS::GRIDDATA"))

(in-package "ROS")
;;//! \htmlinclude gridData.msg.html


(defclass agv_control_msgs::gridData
  :super ros::object
  :slots (_xGrid _yGrid _timeInGrid _timeOutGrid ))

(defmethod agv_control_msgs::gridData
  (:init
   (&key
    ((:xGrid __xGrid) (let (r) (dotimes (i 0) (push (instance agv_control_msgs::arrayData :init) r)) r))
    ((:yGrid __yGrid) (let (r) (dotimes (i 0) (push (instance agv_control_msgs::arrayData :init) r)) r))
    ((:timeInGrid __timeInGrid) (let (r) (dotimes (i 0) (push (instance agv_control_msgs::arrayData :init) r)) r))
    ((:timeOutGrid __timeOutGrid) (let (r) (dotimes (i 0) (push (instance agv_control_msgs::arrayData :init) r)) r))
    )
   (send-super :init)
   (setq _xGrid __xGrid)
   (setq _yGrid __yGrid)
   (setq _timeInGrid __timeInGrid)
   (setq _timeOutGrid __timeOutGrid)
   self)
  (:xGrid
   (&rest __xGrid)
   (if (keywordp (car __xGrid))
       (send* _xGrid __xGrid)
     (progn
       (if __xGrid (setq _xGrid (car __xGrid)))
       _xGrid)))
  (:yGrid
   (&rest __yGrid)
   (if (keywordp (car __yGrid))
       (send* _yGrid __yGrid)
     (progn
       (if __yGrid (setq _yGrid (car __yGrid)))
       _yGrid)))
  (:timeInGrid
   (&rest __timeInGrid)
   (if (keywordp (car __timeInGrid))
       (send* _timeInGrid __timeInGrid)
     (progn
       (if __timeInGrid (setq _timeInGrid (car __timeInGrid)))
       _timeInGrid)))
  (:timeOutGrid
   (&rest __timeOutGrid)
   (if (keywordp (car __timeOutGrid))
       (send* _timeOutGrid __timeOutGrid)
     (progn
       (if __timeOutGrid (setq _timeOutGrid (car __timeOutGrid)))
       _timeOutGrid)))
  (:serialization-length
   ()
   (+
    ;; agv_control_msgs/arrayData[] _xGrid
    (apply #'+ (send-all _xGrid :serialization-length)) 4
    ;; agv_control_msgs/arrayData[] _yGrid
    (apply #'+ (send-all _yGrid :serialization-length)) 4
    ;; agv_control_msgs/arrayData[] _timeInGrid
    (apply #'+ (send-all _timeInGrid :serialization-length)) 4
    ;; agv_control_msgs/arrayData[] _timeOutGrid
    (apply #'+ (send-all _timeOutGrid :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; agv_control_msgs/arrayData[] _xGrid
     (write-long (length _xGrid) s)
     (dolist (elem _xGrid)
       (send elem :serialize s)
       )
     ;; agv_control_msgs/arrayData[] _yGrid
     (write-long (length _yGrid) s)
     (dolist (elem _yGrid)
       (send elem :serialize s)
       )
     ;; agv_control_msgs/arrayData[] _timeInGrid
     (write-long (length _timeInGrid) s)
     (dolist (elem _timeInGrid)
       (send elem :serialize s)
       )
     ;; agv_control_msgs/arrayData[] _timeOutGrid
     (write-long (length _timeOutGrid) s)
     (dolist (elem _timeOutGrid)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; agv_control_msgs/arrayData[] _xGrid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _xGrid (let (r) (dotimes (i n) (push (instance agv_control_msgs::arrayData :init) r)) r))
     (dolist (elem- _xGrid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; agv_control_msgs/arrayData[] _yGrid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yGrid (let (r) (dotimes (i n) (push (instance agv_control_msgs::arrayData :init) r)) r))
     (dolist (elem- _yGrid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; agv_control_msgs/arrayData[] _timeInGrid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timeInGrid (let (r) (dotimes (i n) (push (instance agv_control_msgs::arrayData :init) r)) r))
     (dolist (elem- _timeInGrid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; agv_control_msgs/arrayData[] _timeOutGrid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _timeOutGrid (let (r) (dotimes (i n) (push (instance agv_control_msgs::arrayData :init) r)) r))
     (dolist (elem- _timeOutGrid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get agv_control_msgs::gridData :md5sum-) "75f2fe2eb528ad0443af47611bcbf66b")
(setf (get agv_control_msgs::gridData :datatype-) "agv_control_msgs/gridData")
(setf (get agv_control_msgs::gridData :definition-)
      "arrayData[] xGrid
arrayData[] yGrid
arrayData[] timeInGrid
arrayData[] timeOutGrid

================================================================================
MSG: agv_control_msgs/arrayData
float32[] data

")



(provide :agv_control_msgs/gridData "75f2fe2eb528ad0443af47611bcbf66b")


