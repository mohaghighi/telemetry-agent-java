// Copyright (c) Microsoft. All rights reserved.

package com.microsoft.azure.iotsolutions.iotstreamanalytics.services.models;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.ArrayList;

/**
 * Model used by the Device Telemetry service when returning Rules
 * see: https://github.com/Azure/device-telemetry-java/wiki
 */
public final class RuleApiModel {

    private String id;
    private String name;
    private boolean enabled;
    private String description;
    private String groupId;
    private String severity;
    private ArrayList<ConditionApiModel> conditions;

    public RuleApiModel() {
        this.conditions = new ArrayList<>();
    }

    @JsonProperty("Id")
    public String getId() {
        return this.id;
    }

    private void setId(String id) {
        this.id = id;
    }

    @JsonProperty("Name")
    public String getName() {
        return this.name;
    }

    private void setName(String name) {
        this.name = name;
    }

    @JsonProperty("Enabled")
    public boolean getEnabled() {
        return this.enabled;
    }

    private void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @JsonProperty("Description")
    public String getDescription() {
        return this.description;
    }

    private void setDescription(String description) {
        this.description = description;
    }

    @JsonProperty("GroupId")
    public String getGroupId() {
        return this.groupId;
    }

    private void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    @JsonProperty("Severity")
    public String getSeverity() {
        return this.severity;
    }

    private void setSeverity(String severity) {
        this.severity = severity;
    }

    @JsonProperty("Conditions")
    public ArrayList<ConditionApiModel> getConditions() {
        return this.conditions;
    }

    private void setConditions(ArrayList<ConditionApiModel> conditions) {
        this.conditions = conditions;
    }
}
