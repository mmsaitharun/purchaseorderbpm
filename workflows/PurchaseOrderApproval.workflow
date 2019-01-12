{
	"contents": {
		"39d78e2d-ef22-4d0e-ae4e-b0700325f152": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "purchaseorderapproval",
			"subject": "Purchase Order Approval for ${context.requestId}",
			"businessKey": "${context.requestId}",
			"name": "PurchaseOrderApproval",
			"documentation": "Purchase Order Approval Process",
			"lastIds": "b585b849-31f4-496d-b8ce-23d9123ee461",
			"events": {
				"9b13489c-1fcb-4722-87f8-9af506257f79": {
					"name": "Start"
				},
				"aa40325b-edec-4ad9-abe6-4e97ebb4c32c": {
					"name": "End"
				}
			},
			"activities": {
				"53271bbb-e4e8-4c97-aed5-306b000f6a14": {
					"name": "PO Approver Task"
				}
			},
			"sequenceFlows": {
				"0fa51014-ec35-4584-925a-a53ae0659f7c": {
					"name": "SequenceFlow1"
				},
				"c4e3e837-3e6c-41e5-993c-a46f82135daa": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"493df183-86b8-4694-a528-652e6b036bba": {}
			}
		},
		"9b13489c-1fcb-4722-87f8-9af506257f79": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start",
			"sampleContextRefs": {
				"8eb0d5ad-43d3-4ea0-b4d3-24bc8fcabaa4": {}
			}
		},
		"aa40325b-edec-4ad9-abe6-4e97ebb4c32c": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"53271bbb-e4e8-4c97-aed5-306b000f6a14": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Purchase Order Approval for ${context.requestId}",
			"description": "Approval of Purchase Order No. ${context.requestId} from Vendor No. ${context.vendorNumber} for a value of ${context.poValue}.",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "P000035, P000057, P000036, P000041,P000006",
			"recipientGroups": "PO_APPROVERS",
			"formReference": "/forms/PurchaseOrderApproval/PoApprover.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "poapprover"
			}, {
				"key": "formRevision",
				"value": "dev"
			}],
			"id": "usertask1",
			"name": "PO Approver Task",
			"dueDateRef": "3b74a77f-d1d4-48c5-9a60-872e80fa6608"
		},
		"0fa51014-ec35-4584-925a-a53ae0659f7c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "9b13489c-1fcb-4722-87f8-9af506257f79",
			"targetRef": "53271bbb-e4e8-4c97-aed5-306b000f6a14"
		},
		"c4e3e837-3e6c-41e5-993c-a46f82135daa": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "53271bbb-e4e8-4c97-aed5-306b000f6a14",
			"targetRef": "aa40325b-edec-4ad9-abe6-4e97ebb4c32c"
		},
		"493df183-86b8-4694-a528-652e6b036bba": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"8f4e46ff-6427-410f-90f6-ffa11770a363": {},
				"19859178-4974-471d-9b36-c8c04d8ce072": {},
				"900501d8-1f04-4215-a6cc-cd621aadc164": {},
				"b3ba4524-e412-408e-9bff-62225d6fc17a": {},
				"f1e330a9-be88-4eae-980e-5bce5d9aed6e": {}
			}
		},
		"8eb0d5ad-43d3-4ea0-b4d3-24bc8fcabaa4": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/PurchaseOrderApproval/PurchaseOrderInitialContext.json",
			"id": "default-start-context"
		},
		"8f4e46ff-6427-410f-90f6-ffa11770a363": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 80,
			"y": 47,
			"width": 32,
			"height": 32,
			"object": "9b13489c-1fcb-4722-87f8-9af506257f79"
		},
		"19859178-4974-471d-9b36-c8c04d8ce072": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 544,
			"y": 348,
			"width": 35,
			"height": 35,
			"object": "aa40325b-edec-4ad9-abe6-4e97ebb4c32c"
		},
		"900501d8-1f04-4215-a6cc-cd621aadc164": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "96,63 195.37074279785156,63 195.37074279785156,214.25 328.2414855957031,214.25",
			"sourceSymbol": "8f4e46ff-6427-410f-90f6-ffa11770a363",
			"targetSymbol": "b3ba4524-e412-408e-9bff-62225d6fc17a",
			"object": "0fa51014-ec35-4584-925a-a53ae0659f7c"
		},
		"b3ba4524-e412-408e-9bff-62225d6fc17a": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 278.2414855957031,
			"y": 184.25,
			"width": 100,
			"height": 60,
			"object": "53271bbb-e4e8-4c97-aed5-306b000f6a14"
		},
		"f1e330a9-be88-4eae-980e-5bce5d9aed6e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "328.2414855957031,214.25 461.3707275390625,214.25 461.3707275390625,365.5 561.5,365.5",
			"sourceSymbol": "b3ba4524-e412-408e-9bff-62225d6fc17a",
			"targetSymbol": "19859178-4974-471d-9b36-c8c04d8ce072",
			"object": "c4e3e837-3e6c-41e5-993c-a46f82135daa"
		},
		"b585b849-31f4-496d-b8ce-23d9123ee461": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"3b74a77f-d1d4-48c5-9a60-872e80fa6608": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P4D",
			"id": "timereventdefinition1"
		}
	}
}