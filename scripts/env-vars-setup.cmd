:: Prepare the environment variables used by the application.

:: The port where this project's web service is listening
:: See https://github.com/Azure/azure-iot-pcs-team/wiki/Architecture-draft
SETX PCS_STREAMANALYTICS_WEBSERVICE_PORT "9023"

:: see: Endpoints ⇒ Messaging ⇒ Events ⇒ "Event Hub-compatible name"
:: e.g. "my-test-hub"
SETX PCS_IOTHUBREACT_HUB_NAME "..."

:: see: Endpoints ⇒ Messaging ⇒ Events ⇒ "Event Hub-compatible endpoint"
v e.g. "iothub-ns-my-test-185521-d1bf252916.servicebus.windows.net"
SETX PCS_IOTHUBREACT_HUB_ENDPOINT "..."

:: see: Endpoints ⇒ Messaging ⇒ Events ⇒ Partitions
:: e.g. 4
SETX PCS_IOTHUBREACT_HUB_PARTITIONS "..."

:: see: "IoT Hub" ⇒ your hub ⇒ "Shared access policies"
SETX PCS_IOTHUBREACT_ACCESS_CONNSTRING "..."
