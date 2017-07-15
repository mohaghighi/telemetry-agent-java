// Copyright (c) Microsoft. All rights reserved.

package com.microsoft.azure.iotsolutions.iotstreamanalytics.services.runtime;

public interface IServicesConfig {

    /**
     * Get Azure IoT Hub connection string.
     *
     * @return Connection string
     */
    String getHubConnString();
}
