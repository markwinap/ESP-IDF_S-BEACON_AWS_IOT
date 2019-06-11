/*
   AWSIOT
*/

#ifndef _APP_AWSIOT_H_
#define _APP_AWSIOT_H_

void aws_iot_task(void *param);
void awsiot_send_data(uint8_t *data, uint8_t size);

#endif