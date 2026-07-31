#include <stdint.h>
#include "pid.h"

extern float pid(PIDModel_t* model, float reading, float dt);