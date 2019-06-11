/*
Author: Marco Martinez (927893)
2019-06-11
martinez.marco@tcs.com
*/
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <unistd.h>
#include <limits.h>
#include <string.h>

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/event_groups.h"
#include "esp_system.h"
#include "esp_event_loop.h"
#include "esp_log.h"
#include "esp_vfs_fat.h"
#include "driver/sdmmc_host.h"


#include "nvs.h"
#include "nvs_flash.h"

//CUSTOM
#include "app_awsiot.h"
#include "app_eth.h"
#include "app_ble.h"

static const char *TAG = "MAIN";

void app_main()
{
    // Initialize NVS.
    esp_err_t err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES || err == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    }
    ESP_ERROR_CHECK( err );
    if(app_eth_initialise() != ESP_OK) {
        ESP_LOGI(TAG, "Error");
    }
    else{
        ESP_LOGI(TAG, "FIRMWARE VERSION %s", CONFIG_VERSION);
        aws_iot_task("aws_iot_task");
        ble_init();
    }  
    /* Wait for WiFI to show as connected */
    //xEventGroupWaitBits(wifi_event_group, CONNECTED_BIT, false, true, portMAX_DELAY);
   //xTaskCreatePinnedToCore(&aws_iot_task, "aws_iot_task", 9216, NULL, 5, NULL, 1);
   
}
