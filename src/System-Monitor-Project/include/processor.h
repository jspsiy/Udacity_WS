#ifndef PROCESSOR_H
#define PROCESSOR_H

class Processor {
 public:
  float Utilization();  // TODO: See src/processor.cpp

  // TODO: Declare any necessary private members
 private:
  float currentactive{0};
  float currenttotal{0};
  float previousactive{0};
  float previoustotal{0};
};

#endif
