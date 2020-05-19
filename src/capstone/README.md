

To reader: I am very sorry that i am terrible at formatting with github for now. I would love to add images and videos but i am not sure how to.

Introduction: This is a project done by Joshua Siy implementing a small project that uses ROS. It allows a simulated Husky robotic platform to track a generated path using the pure pursuit algorithm .

Dependencies needed: ros-distro-husky-gazebo eigen3 tf2 rviz gazebo cmake_minimum_required(VERSION 2.8.3)[used] ROS [The version i used is Melodic] i forgot the rest, as of the moment this is written i will have to recompile everything again from scratch from a new PC just to know which dependencies are further needed but i believe you can find it out yourself.

Usage: Clone this folder in your ROS workspace and from your workspace just use catkin_make to compile. do not forget to do source/devel/setup.bash in your main workspace folder A launch file is provided. To use type: roslaunch capstone capstone.launch You will be prompted by multiple screens but pay attention to the xterm window because you'll need to input the initial location and position of the robot with respect to the map.

Description: The project is composed of 3 main codes: mainpath, mainplanner, and mainmover.cpp along with self developed headerfiles and self-made libraries.

mainpath generates the path for the robot to follow which uses classes and linkedlists consisting of nodes with x and y positional value. This code generates a marker for RVIZ that describes the rectangular path the robot wants to follow.

mainplanner receives the input of the robot starting position and orientation (x,y,theta) generates the trajectory (green line) which simulates the ideal path the robot would take and also publishes the marker necessary and the processed path the robot wants to follow

mainmover is the file that generates the mover node which calculates and publishes command velocity based on the robot's position and transformation based on TF coordinates.

Future improvements: Allow file input for generating the main path. ( i can do this using ifstream however terrible behavior was observed and was omitted, please edit mainpath.cpp for now.) Add a better controller.

RUBRIC:

Loops, Functions, I/O Criteria Meets Specifications

The project demonstrates an understanding of C++ functions and control structures. -- Student Confirmed

The project accepts user input and processes the input.-- Student Confirmed at mainplanner.cpp

Object Oriented Programming Criteria Meets Specifications

The project uses Object Oriented Programming techniques.-- Student Confirmed

All class data members are explicitly specified as public, protected, or private.-- Student Confirmed

Classes encapsulate behavior.-- Student Confirmed

Overloaded functions allow the same function to operate on different parameters. -- Student Confirmed from node2.h and planner.h some functions are overloaded

The project uses destructors appropriately.-- Student Confirmed

The project uses scope / Resource Acquisition Is Initialization (RAII) where appropriate. --Student thinks he completed this rubric

The project follows the Rule of 5. All classes have their copy/move/copy assign/move assign and destructors. --Student thinks he completed this rubric despite not effectively used.

The project uses multiple threads in the execution. @Node2.cpp line 118 , async and future was used(although not exactly vital)

A promise and future is used in the project.-- Student used it although it is not entirely necessary and was just used for learning purposes.

References: https://github.com/larics/pure_pursuit https://www.chiefdelphi.com/t/paper-implementation-of-the-adaptive-pure-pursuit-controller/166552 https://www.ri.cmu.edu/pub_files/pub3/coulter_r_craig_1992_1/coulter_r_craig_1992_1.pdf Plenty of references i probably forgot to mention which i probably failed to remember. https://www.codesdope.com/blog/article/c-linked-lists-in-c-singly-linked-list/

