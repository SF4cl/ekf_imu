#include "cmsis_os.h"
#include "spi.h"

#include "librm.hpp"
#include "librm/modules/algorithm/ahrs/mahony.h"
#include "librm/modules/algorithm/ahrs/ekf.h"

#include "AttitudeTask.h"

using rm::device::BMI088;
using rm::modules::algorithm::EkfAhrs;
using rm::modules::algorithm::MahonyAhrs;

BMI088 *bmi088;

EkfAhrs *ekf;
MahonyAhrs *mahony;

void AttitudeTask(void const *argument) {
  bmi088 = new BMI088(hspi1, CS1_ACCEL_GPIO_Port, CS1_ACCEL_Pin, CS1_GYRO_GPIO_Port, CS1_GYRO_Pin);

  ekf = new EkfAhrs(1000.0f);
  mahony = new MahonyAhrs(1000.0f, 1.0f, 0.0f);

  for (;;) {
    osDelay(1);

    bmi088->Update();

    rm::modules::algorithm::ImuData6Dof data;

    data.gx = bmi088->gyro_x();
    data.gy = bmi088->gyro_y();
    data.gz = bmi088->gyro_z();
    data.ax = bmi088->accel_x();
    data.ay = bmi088->accel_y();
    data.az = bmi088->accel_z();

    ekf->Update(data);

    ekf->quaternion();

    mahony->Update(data);

    mahony->quaternion();

  }
}