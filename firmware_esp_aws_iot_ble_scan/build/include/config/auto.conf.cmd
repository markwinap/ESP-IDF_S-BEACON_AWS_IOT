deps_config := \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/app_trace/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/aws_iot/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/bt/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/driver/Kconfig \
	/home/markw/ESP-IDF_S-BEACON_AWS_IOT/esp-aws-iot/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/esp32/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/esp_http_client/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/ethernet/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/fatfs/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/freertos/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/heap/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/http_server/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/libsodium/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/log/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/lwip/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/mbedtls/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/mdns/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/mqtt/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/openssl/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/pthread/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/spi_flash/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/spiffs/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/vfs/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/wear_levelling/Kconfig \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/markw/ESP-IDF_S-BEACON_AWS_IOT/firmware_esp_aws_iot_ble_scan/main/Kconfig.projbuild \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/c/Users/markw/Desktop/ESP32/msys2/msys32/home/markw/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
