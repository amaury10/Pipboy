<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">1</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="ctls" Type="Folder">
			<Property Name="NI.SortType" Type="Int">1</Property>
			<Item Name="PipBoy_DetectionType.ctl" Type="VI" URL="../ctls/PipBoy_DetectionType.ctl"/>
			<Item Name="PipBoy_FileConf.ctl" Type="VI" URL="../ctls/PipBoy_FileConf.ctl"/>
			<Item Name="PipBoy_GeneralParams.ctl" Type="VI" URL="../ctls/PipBoy_GeneralParams.ctl"/>
			<Item Name="PipBoy_IconInfo.ctl" Type="VI" URL="../ctls/PipBoy_IconInfo.ctl"/>
			<Item Name="PipBoy_LabVIEWEvent.ctl" Type="VI" URL="../ctls/PipBoy_LabVIEWEvent.ctl"/>
			<Item Name="PipBoy_Message.ctl" Type="VI" URL="../ctls/PipBoy_Message.ctl"/>
			<Item Name="PipBoy_Pages.ctl" Type="VI" URL="../ctls/PipBoy_Pages.ctl"/>
			<Item Name="PipBoy_PicComm.ctl" Type="VI" URL="../ctls/PipBoy_PicComm.ctl"/>
			<Item Name="PipBoy_PipBoyCommand.ctl" Type="VI" URL="../ctls/PipBoy_PipBoyCommand.ctl"/>
			<Item Name="PipBoy_PipBoyData.ctl" Type="VI" URL="../ctls/PipBoy_PipBoyData.ctl"/>
			<Item Name="PipBoy_ProcComm.ctl" Type="VI" URL="../ctls/PipBoy_ProcComm.ctl"/>
		</Item>
		<Item Name="functions" Type="Folder">
			<Property Name="NI.SortType" Type="Int">1</Property>
			<Item Name="PipBoy_ChangeActiveLabVIEW.vi" Type="VI" URL="../functions/PipBoy_ChangeActiveLabVIEW.vi"/>
			<Item Name="PipBoy_CheckPipConnection.vi" Type="VI" URL="../functions/PipBoy_CheckPipConnection.vi"/>
			<Item Name="PipBoy_Cmd-Next.vi" Type="VI" URL="../functions/PipBoy_Cmd-Next.vi"/>
			<Item Name="PipBoy_Cmd-Previous.vi" Type="VI" URL="../functions/PipBoy_Cmd-Previous.vi"/>
			<Item Name="PipBoy_ConfigurePipBoyInterface.vi" Type="VI" URL="../functions/PipBoy_ConfigurePipBoyInterface.vi"/>
			<Item Name="PipBoy_DefaultValuesFileConf.vi" Type="VI" URL="../functions/PipBoy_DefaultValuesFileConf.vi"/>
			<Item Name="PipBoy_DestroyReferences.vi" Type="VI" URL="../functions/PipBoy_DestroyReferences.vi"/>
			<Item Name="PipBoy_EnqueueIfDontExist.vi" Type="VI" URL="../functions/PipBoy_EnqueueIfDontExist.vi"/>
			<Item Name="PipBoy_EnqueueIfEmpty.vi" Type="VI" URL="../functions/PipBoy_EnqueueIfEmpty.vi"/>
			<Item Name="PipBoy_InitMain.vi" Type="VI" URL="../functions/PipBoy_InitMain.vi"/>
			<Item Name="PipBoy_InitNotifyMenu.vi" Type="VI" URL="../functions/PipBoy_InitNotifyMenu.vi"/>
			<Item Name="PipBoy_InitUserEvents.vi" Type="VI" URL="../functions/PipBoy_InitUserEvents.vi"/>
			<Item Name="PipBoy_NotifyBallonLabVIEWVersion.vi" Type="VI" URL="../functions/PipBoy_NotifyBallonLabVIEWVersion.vi"/>
			<Item Name="PipBoy_NotifyChangeContextMenu.vi" Type="VI" URL="../functions/PipBoy_NotifyChangeContextMenu.vi"/>
			<Item Name="PipBoy_ProcPipComm.vi" Type="VI" URL="../functions/PipBoy_ProcPipComm.vi"/>
			<Item Name="PipBoy_ReadFileConf.vi" Type="VI" URL="../functions/PipBoy_ReadFileConf.vi"/>
			<Item Name="PipBoy_ReadFunctionsFromIconsFile.vi" Type="VI" URL="../functions/PipBoy_ReadFunctionsFromIconsFile.vi"/>
			<Item Name="PipBoy_ReadIconsFile.vi" Type="VI" URL="../functions/PipBoy_ReadIconsFile.vi"/>
			<Item Name="PipBoy_RemoveFromQIfExist.vi" Type="VI" URL="../functions/PipBoy_RemoveFromQIfExist.vi"/>
			<Item Name="PipBoy_SearchLabVIEWs.vi" Type="VI" URL="../functions/PipBoy_SearchLabVIEWs.vi"/>
			<Item Name="PipBoy_SendCommandToLabVIEW.vi" Type="VI" URL="../functions/PipBoy_SendCommandToLabVIEW.vi"/>
			<Item Name="PipBoy_SendUEPipBoyCommand.vi" Type="VI" URL="../functions/PipBoy_SendUEPipBoyCommand.vi"/>
			<Item Name="PipBoy_UpdateFileConf.vi" Type="VI" URL="../functions/PipBoy_UpdateFileConf.vi"/>
		</Item>
		<Item Name="FunctionsIcons" Type="Folder">
			<Item Name="bmp" Type="Folder">
				<Item Name="ArrayToCluster_Array To Cluster.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ArrayToCluster_Array To Cluster.bmp"/>
				<Item Name="BuildArray_Build Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/BuildArray_Build Array.bmp"/>
				<Item Name="BuildArray_Build Matrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/BuildArray_Build Matrix.bmp"/>
				<Item Name="BuildClusterArray_Build Cluster Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/BuildClusterArray_Build Cluster Array.bmp"/>
				<Item Name="BuildClusterArray_Index &amp; Bundle Cluster Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/BuildClusterArray_Index &amp; Bundle Cluster Array.bmp"/>
				<Item Name="Bundler_Bundle.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Bundler_Bundle.bmp"/>
				<Item Name="Bundler_Concatenate Strings.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Bundler_Concatenate Strings.bmp"/>
				<Item Name="Bundler_Interleave 1D Arrays.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Bundler_Interleave 1D Arrays.bmp"/>
				<Item Name="Bundler_Merge Errors.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Bundler_Merge Errors.bmp"/>
				<Item Name="Bundler_Merge Signals.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Bundler_Merge Signals.bmp"/>
				<Item Name="CallByRef_Call By Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/CallByRef_Call By Reference.bmp"/>
				<Item Name="CallLibrary_Call Library Function Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/CallLibrary_Call Library Function Node.bmp"/>
				<Item Name="CaseStructure_Case Structure.bmp" Type="Document" URL="../../FunctionsIcons/bmp/CaseStructure_Case Structure.bmp"/>
				<Item Name="CIN_Code Interface Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/CIN_Code Interface Node.bmp"/>
				<Item Name="Comparison_Max &amp; Min.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Comparison_Max &amp; Min.bmp"/>
				<Item Name="CompoundArithmetic_Compound Arithmetic.bmp" Type="Document" URL="../../FunctionsIcons/bmp/CompoundArithmetic_Compound Arithmetic.bmp"/>
				<Item Name="Constructor_Constructor Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Constructor_Constructor Node.bmp"/>
				<Item Name="ControlReferenceConstant_VI Server Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ControlReferenceConstant_VI Server Reference.bmp"/>
				<Item Name="DisableStructure_Conditional Disable Structure.bmp" Type="Document" URL="../../FunctionsIcons/bmp/DisableStructure_Conditional Disable Structure.bmp"/>
				<Item Name="DisableStructure_Diagram Disable Structure.bmp" Type="Document" URL="../../FunctionsIcons/bmp/DisableStructure_Diagram Disable Structure.bmp"/>
				<Item Name="EventStructure_Event Structure.bmp" Type="Document" URL="../../FunctionsIcons/bmp/EventStructure_Event Structure.bmp"/>
				<Item Name="ExpressionNode_Expression Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ExpressionNode_Expression Node.bmp"/>
				<Item Name="FeedbackNode_Feedback Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FeedbackNode_Feedback Node.bmp"/>
				<Item Name="FileDialog_File Dialog.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FileDialog_File Dialog.bmp"/>
				<Item Name="FlattenString_Flatten To String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FlattenString_Flatten To String.bmp"/>
				<Item Name="FlattenUnflattenString_Unflatten From String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FlattenUnflattenString_Unflatten From String.bmp"/>
				<Item Name="ForLoop_For Loop.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ForLoop_For Loop.bmp"/>
				<Item Name="FormatScanString_Format Into File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FormatScanString_Format Into File.bmp"/>
				<Item Name="FormatScanString_Format Into String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FormatScanString_Format Into String.bmp"/>
				<Item Name="FormatScanString_Scan From File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FormatScanString_Scan From File.bmp"/>
				<Item Name="FormatScanString_Scan From String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/FormatScanString_Scan From String.bmp"/>
				<Item Name="Formula_Formula Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Formula_Formula Node.bmp"/>
				<Item Name="Function_Absolute Value.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Absolute Value.bmp"/>
				<Item Name="Function_Access Rights.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Access Rights.bmp"/>
				<Item Name="Function_Add (with error terminals).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Add (with error terminals).bmp"/>
				<Item Name="Function_Add Array Elements.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Add Array Elements.bmp"/>
				<Item Name="Function_Add.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Add.bmp"/>
				<Item Name="Function_AllSpoll.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_AllSpoll.bmp"/>
				<Item Name="Function_Always Copy.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Always Copy.bmp"/>
				<Item Name="Function_And Array Elements.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_And Array Elements.bmp"/>
				<Item Name="Function_And.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_And.bmp"/>
				<Item Name="Function_Array Max &amp; Min.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Array Max &amp; Min.bmp"/>
				<Item Name="Function_Array of Strings to Path.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Array of Strings to Path.bmp"/>
				<Item Name="Function_Array Size.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Array Size.bmp"/>
				<Item Name="Function_Array To Spreadsheet String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Array To Spreadsheet String.bmp"/>
				<Item Name="Function_Automation Close.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Automation Close.bmp"/>
				<Item Name="Function_Automation Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Automation Open.bmp"/>
				<Item Name="Function_Bitpack to Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bitpack to Array.bmp"/>
				<Item Name="Function_Bluetooth Close Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Close Connection.bmp"/>
				<Item Name="Function_Bluetooth Create Listener.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Create Listener.bmp"/>
				<Item Name="Function_Bluetooth Discover.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Discover.bmp"/>
				<Item Name="Function_Bluetooth Open Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Open Connection.bmp"/>
				<Item Name="Function_Bluetooth Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Read.bmp"/>
				<Item Name="Function_Bluetooth Wait On Listener.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Wait On Listener.bmp"/>
				<Item Name="Function_Bluetooth Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Bluetooth Write.bmp"/>
				<Item Name="Function_Boolean Array To Number.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Boolean Array To Number.bmp"/>
				<Item Name="Function_Boolean To (0,1).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Boolean To (0,1).bmp"/>
				<Item Name="Function_Build Path.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Build Path.bmp"/>
				<Item Name="Function_Byte Array To String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Byte Array To String.bmp"/>
				<Item Name="Function_Call Chain.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Call Chain.bmp"/>
				<Item Name="Function_Cancel Notification.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Cancel Notification.bmp"/>
				<Item Name="Function_Cast Unit Bases.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Cast Unit Bases.bmp"/>
				<Item Name="Function_Clear Fixed-Point Overflow Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Clear Fixed-Point Overflow Status.bmp"/>
				<Item Name="Function_Close File (deprecated).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Close File (deprecated).bmp"/>
				<Item Name="Function_Close File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Close File.bmp"/>
				<Item Name="Function_Close Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Close Reference.bmp"/>
				<Item Name="Function_Close Variable Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Close Variable Connection.bmp"/>
				<Item Name="Function_Cluster To Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Cluster To Array.bmp"/>
				<Item Name="Function_Coerce To Type.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Coerce To Type.bmp"/>
				<Item Name="Function_Complex Conjugate.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Complex Conjugate.bmp"/>
				<Item Name="Function_Complex To Polar.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Complex To Polar.bmp"/>
				<Item Name="Function_Control Help Window.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Control Help Window.bmp"/>
				<Item Name="Function_Control Online Help.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Control Online Help.bmp"/>
				<Item Name="Function_Copy (deprecated).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Copy (deprecated).bmp"/>
				<Item Name="Function_Copy.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Copy.bmp"/>
				<Item Name="Function_Cosecant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Cosecant.bmp"/>
				<Item Name="Function_Cosine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Cosine.bmp"/>
				<Item Name="Function_Cotangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Cotangent.bmp"/>
				<Item Name="Function_CPU Information.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_CPU Information.bmp"/>
				<Item Name="Function_Create Folder.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Folder.bmp"/>
				<Item Name="Function_Create Network Stream Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Network Stream Endpoint.bmp"/>
				<Item Name="Function_Create Network Stream Reader Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Network Stream Reader Endpoint.bmp"/>
				<Item Name="Function_Create Network Stream Writer Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Network Stream Writer Endpoint.bmp"/>
				<Item Name="Function_Create Unique Network Stream Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Unique Network Stream Endpoint.bmp"/>
				<Item Name="Function_Create Unique Network Stream Reader Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Unique Network Stream Reader Endpoint.bmp"/>
				<Item Name="Function_Create Unique Network Stream Writer Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create Unique Network Stream Writer Endpoint.bmp"/>
				<Item Name="Function_Create User Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Create User Event.bmp"/>
				<Item Name="Function_Current Processor ID.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Current Processor ID.bmp"/>
				<Item Name="Function_Current VI&apos;s Menubar.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Current VI&apos;s Menubar.bmp"/>
				<Item Name="Function_Current VI&apos;s Path.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Current VI&apos;s Path.bmp"/>
				<Item Name="Function_Data Cache Size.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Data Cache Size.bmp"/>
				<Item Name="Function_DataSocket Close.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DataSocket Close.bmp"/>
				<Item Name="Function_DataSocket Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DataSocket Open.bmp"/>
				<Item Name="Function_DataSocket Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DataSocket Read.bmp"/>
				<Item Name="Function_DataSocket Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DataSocket Write.bmp"/>
				<Item Name="Function_Decimal String To Number.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Decimal String To Number.bmp"/>
				<Item Name="Function_DecomposeArray.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DecomposeArray.bmp"/>
				<Item Name="Function_DecomposeLockDataValRef.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DecomposeLockDataValRef.bmp"/>
				<Item Name="Function_DecomposeVariant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DecomposeVariant.bmp"/>
				<Item Name="Function_Decrement.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Decrement.bmp"/>
				<Item Name="Function_Default Directory.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Default Directory.bmp"/>
				<Item Name="Function_Delete (deprecated).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Delete (deprecated).bmp"/>
				<Item Name="Function_Delete Data Value Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Delete Data Value Reference.bmp"/>
				<Item Name="Function_Delete Menu Items.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Delete Menu Items.bmp"/>
				<Item Name="Function_Delete Variant Attribute.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Delete Variant Attribute.bmp"/>
				<Item Name="Function_Delete Waveform Attribute.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Delete Waveform Attribute.bmp"/>
				<Item Name="Function_Delete.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Delete.bmp"/>
				<Item Name="Function_Deny Access.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Deny Access.bmp"/>
				<Item Name="Function_Dequeue Element.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Dequeue Element.bmp"/>
				<Item Name="Function_Destroy Stream Endpoint.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Destroy Stream Endpoint.bmp"/>
				<Item Name="Function_Destroy User Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Destroy User Event.bmp"/>
				<Item Name="Function_DevClear.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DevClear.bmp"/>
				<Item Name="Function_DevClearList.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_DevClearList.bmp"/>
				<Item Name="Function_Divide (with error terminals).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Divide (with error terminals).bmp"/>
				<Item Name="Function_Divide.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Divide.bmp"/>
				<Item Name="Function_Dynamic FPGA Interface Cast.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Dynamic FPGA Interface Cast.bmp"/>
				<Item Name="Function_Enable Menu Tracking.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Enable Menu Tracking.bmp"/>
				<Item Name="Function_EnableLocal.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_EnableLocal.bmp"/>
				<Item Name="Function_EnableRemote.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_EnableRemote.bmp"/>
				<Item Name="Function_Enqueue Element At Opposite End.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Enqueue Element At Opposite End.bmp"/>
				<Item Name="Function_Enqueue Element.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Enqueue Element.bmp"/>
				<Item Name="Function_EOF.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_EOF.bmp"/>
				<Item Name="Function_Exclusive Or.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Exclusive Or.bmp"/>
				<Item Name="Function_Exponential (Arg) -1.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Exponential (Arg) -1.bmp"/>
				<Item Name="Function_Exponential.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Exponential.bmp"/>
				<Item Name="Function_File Dialog (deprecated).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_File Dialog (deprecated).bmp"/>
				<Item Name="Function_FindLstn.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_FindLstn.bmp"/>
				<Item Name="Function_FindRQS.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_FindRQS.bmp"/>
				<Item Name="Function_Fixed-Point to Integer Cast.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Fixed-Point to Integer Cast.bmp"/>
				<Item Name="Function_Flatten To JSON.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flatten To JSON.bmp"/>
				<Item Name="Function_Flatten To XML.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flatten To XML.bmp"/>
				<Item Name="Function_Flattened String To Variant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flattened String To Variant.bmp"/>
				<Item Name="Function_Flush Event Queue.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flush Event Queue.bmp"/>
				<Item Name="Function_Flush File (deprecated).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flush File (deprecated).bmp"/>
				<Item Name="Function_Flush File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flush File.bmp"/>
				<Item Name="Function_Flush Queue.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flush Queue.bmp"/>
				<Item Name="Function_Flush Stream.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Flush Stream.bmp"/>
				<Item Name="Function_Format Value.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Format Value.bmp"/>
				<Item Name="Function_FPGA Refnum to Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_FPGA Refnum to Session.bmp"/>
				<Item Name="Function_Generate Front Panel Activity.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Generate Front Panel Activity.bmp"/>
				<Item Name="Function_Generate Occurrence.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Generate Occurrence.bmp"/>
				<Item Name="Function_Generate User Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Generate User Event.bmp"/>
				<Item Name="Function_Generate User-Defined Trace Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Generate User-Defined Trace Event.bmp"/>
				<Item Name="Function_Get Control Values by Index.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Control Values by Index.bmp"/>
				<Item Name="Function_Get Datalog Position.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Datalog Position.bmp"/>
				<Item Name="Function_Get Drag Drop Data.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Drag Drop Data.bmp"/>
				<Item Name="Function_Get File Position.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get File Position.bmp"/>
				<Item Name="Function_Get File Size.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get File Size.bmp"/>
				<Item Name="Function_Get Help Window Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Help Window Status.bmp"/>
				<Item Name="Function_Get Menu Item Info.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Menu Item Info.bmp"/>
				<Item Name="Function_Get Menu Selection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Menu Selection.bmp"/>
				<Item Name="Function_Get Menu Short Cut Info.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Menu Short Cut Info.bmp"/>
				<Item Name="Function_Get Notifier Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Notifier Status.bmp"/>
				<Item Name="Function_Get Number of Records.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Number of Records.bmp"/>
				<Item Name="Function_Get Permissions.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Permissions.bmp"/>
				<Item Name="Function_Get Queue Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Queue Status.bmp"/>
				<Item Name="Function_Get Type and Creator.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Type and Creator.bmp"/>
				<Item Name="Function_Get Variant Attribute.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Variant Attribute.bmp"/>
				<Item Name="Function_Get Volume Info.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Volume Info.bmp"/>
				<Item Name="Function_Get Waveform Attribute.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Get Waveform Attribute.bmp"/>
				<Item Name="Function_GPIB Clear.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Clear.bmp"/>
				<Item Name="Function_GPIB Initialization.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Initialization.bmp"/>
				<Item Name="Function_GPIB Misc.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Misc.bmp"/>
				<Item Name="Function_GPIB Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Read.bmp"/>
				<Item Name="Function_GPIB Serial Poll.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Serial Poll.bmp"/>
				<Item Name="Function_GPIB Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Status.bmp"/>
				<Item Name="Function_GPIB Trigger.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Trigger.bmp"/>
				<Item Name="Function_GPIB Wait.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Wait.bmp"/>
				<Item Name="Function_GPIB Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_GPIB Write.bmp"/>
				<Item Name="Function_Handle Peek.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Handle Peek.bmp"/>
				<Item Name="Function_Handle Poke.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Handle Poke.bmp"/>
				<Item Name="Function_Hexadecimal String To Number.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hexadecimal String To Number.bmp"/>
				<Item Name="Function_Hyperbolic Cosecant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hyperbolic Cosecant.bmp"/>
				<Item Name="Function_Hyperbolic Cosine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hyperbolic Cosine.bmp"/>
				<Item Name="Function_Hyperbolic Cotangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hyperbolic Cotangent.bmp"/>
				<Item Name="Function_Hyperbolic Secant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hyperbolic Secant.bmp"/>
				<Item Name="Function_Hyperbolic Sine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hyperbolic Sine.bmp"/>
				<Item Name="Function_Hyperbolic Tangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Hyperbolic Tangent.bmp"/>
				<Item Name="Function_Implies.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Implies.bmp"/>
				<Item Name="Function_Include Fixed-Point Overflow Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Include Fixed-Point Overflow Status.bmp"/>
				<Item Name="Function_Increment.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Increment.bmp"/>
				<Item Name="Function_Index String Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Index String Array.bmp"/>
				<Item Name="Function_Insert Menu Items.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Insert Menu Items.bmp"/>
				<Item Name="Function_Integer to Fixed-Point Cast.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Integer to Fixed-Point Cast.bmp"/>
				<Item Name="Function_Interpolate 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Interpolate 1D Array.bmp"/>
				<Item Name="Function_Inverse Cosecant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Cosecant.bmp"/>
				<Item Name="Function_Inverse Cosine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Cosine.bmp"/>
				<Item Name="Function_Inverse Cotangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Cotangent.bmp"/>
				<Item Name="Function_Inverse Hyperbolic Cosecant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Hyperbolic Cosecant.bmp"/>
				<Item Name="Function_Inverse Hyperbolic Cosine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Hyperbolic Cosine.bmp"/>
				<Item Name="Function_Inverse Hyperbolic Cotangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Hyperbolic Cotangent.bmp"/>
				<Item Name="Function_Inverse Hyperbolic Secant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Hyperbolic Secant.bmp"/>
				<Item Name="Function_Inverse Hyperbolic Sine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Hyperbolic Sine.bmp"/>
				<Item Name="Function_Inverse Hyperbolic Tangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Hyperbolic Tangent.bmp"/>
				<Item Name="Function_Inverse Secant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Secant.bmp"/>
				<Item Name="Function_Inverse Sine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Sine.bmp"/>
				<Item Name="Function_Inverse Tangent (2 Input).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Tangent (2 Input).bmp"/>
				<Item Name="Function_Inverse Tangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Inverse Tangent.bmp"/>
				<Item Name="Function_IP To String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IP To String.bmp"/>
				<Item Name="Function_IrDA Close Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Close Connection.bmp"/>
				<Item Name="Function_IrDA Create Listener.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Create Listener.bmp"/>
				<Item Name="Function_IrDA Discover.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Discover.bmp"/>
				<Item Name="Function_IrDA Open Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Open Connection.bmp"/>
				<Item Name="Function_IrDA Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Read.bmp"/>
				<Item Name="Function_IrDA Wait On Listener.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Wait On Listener.bmp"/>
				<Item Name="Function_IrDA Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IrDA Write.bmp"/>
				<Item Name="Function_IVI Delete Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IVI Delete Session.bmp"/>
				<Item Name="Function_IVI New Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_IVI New Session.bmp"/>
				<Item Name="Function_Join Numbers.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Join Numbers.bmp"/>
				<Item Name="Function_Leak Variant Value Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Leak Variant Value Reference.bmp"/>
				<Item Name="Function_Lexical Class.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Lexical Class.bmp"/>
				<Item Name="Function_List Directory.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_List Directory.bmp"/>
				<Item Name="Function_List Folder.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_List Folder.bmp"/>
				<Item Name="Function_Lock Range.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Lock Range.bmp"/>
				<Item Name="Function_Logarithm Base 2.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Logarithm Base 2.bmp"/>
				<Item Name="Function_Logarithm Base 10.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Logarithm Base 10.bmp"/>
				<Item Name="Function_Logarithm Base X.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Logarithm Base X.bmp"/>
				<Item Name="Function_Logical Shift.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Logical Shift.bmp"/>
				<Item Name="Function_Lossy Enqueue Element.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Lossy Enqueue Element.bmp"/>
				<Item Name="Function_MakeAddr.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_MakeAddr.bmp"/>
				<Item Name="Function_Mantissa &amp; Exponent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Mantissa &amp; Exponent.bmp"/>
				<Item Name="Function_Match First String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Match First String.bmp"/>
				<Item Name="Function_Match Pattern.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Match Pattern.bmp"/>
				<Item Name="Function_Matrix Size.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Matrix Size.bmp"/>
				<Item Name="Function_Move (deprecated).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Move (deprecated).bmp"/>
				<Item Name="Function_Move.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Move.bmp"/>
				<Item Name="Function_Multiply (with error terminals).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Multiply (with error terminals).bmp"/>
				<Item Name="Function_Multiply Array Elements.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Multiply Array Elements.bmp"/>
				<Item Name="Function_Multiply.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Multiply.bmp"/>
				<Item Name="Function_Natural Logarithm (Arg +1).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Natural Logarithm (Arg +1).bmp"/>
				<Item Name="Function_Natural Logarithm.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Natural Logarithm.bmp"/>
				<Item Name="Function_Negate.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Negate.bmp"/>
				<Item Name="Function_New Data Value Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_New Data Value Reference.bmp"/>
				<Item Name="Function_New Directory.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_New Directory.bmp"/>
				<Item Name="Function_New File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_New File.bmp"/>
				<Item Name="Function_New VI Object.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_New VI Object.bmp"/>
				<Item Name="Function_New VI.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_New VI.bmp"/>
				<Item Name="Function_Not And.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Not And.bmp"/>
				<Item Name="Function_Not Exclusive Or.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Not Exclusive Or.bmp"/>
				<Item Name="Function_Not Or.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Not Or.bmp"/>
				<Item Name="Function_Not.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Not.bmp"/>
				<Item Name="Function_Number of Cache Levels.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number of Cache Levels.bmp"/>
				<Item Name="Function_Number To Boolean Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Boolean Array.bmp"/>
				<Item Name="Function_Number To Decimal String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Decimal String.bmp"/>
				<Item Name="Function_Number To Engineering String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Engineering String.bmp"/>
				<Item Name="Function_Number To Exponential String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Exponential String.bmp"/>
				<Item Name="Function_Number To Fractional String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Fractional String.bmp"/>
				<Item Name="Function_Number To Hexadecimal String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Hexadecimal String.bmp"/>
				<Item Name="Function_Number To Octal String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Number To Octal String.bmp"/>
				<Item Name="Function_Obtain Notifier.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Obtain Notifier.bmp"/>
				<Item Name="Function_Obtain Queue.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Obtain Queue.bmp"/>
				<Item Name="Function_Octal String To Number.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Octal String To Number.bmp"/>
				<Item Name="Function_Old VISA Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Old VISA Open.bmp"/>
				<Item Name="Function_One Button Dialog.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_One Button Dialog.bmp"/>
				<Item Name="Function_Open Application Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Open Application Reference.bmp"/>
				<Item Name="Function_Open Device.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Open Device.bmp"/>
				<Item Name="Function_Open Dynamic Bitfile Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Open Dynamic Bitfile Reference.bmp"/>
				<Item Name="Function_Open File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Open File.bmp"/>
				<Item Name="Function_Open VI Object Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Open VI Object Reference.bmp"/>
				<Item Name="Function_Open VI Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Open VI Reference.bmp"/>
				<Item Name="Function_Or Array Elements.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Or Array Elements.bmp"/>
				<Item Name="Function_Or.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Or.bmp"/>
				<Item Name="Function_Package Matrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Package Matrix.bmp"/>
				<Item Name="Function_PassControl.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_PassControl.bmp"/>
				<Item Name="Function_Path to Array of Strings.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Path to Array of Strings.bmp"/>
				<Item Name="Function_Path To String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Path To String.bmp"/>
				<Item Name="Function_Path Type.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Path Type.bmp"/>
				<Item Name="Function_Pick Line.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Pick Line.bmp"/>
				<Item Name="Function_Polar To Complex.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Polar To Complex.bmp"/>
				<Item Name="Function_Power Of 2.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Power Of 2.bmp"/>
				<Item Name="Function_Power Of 10.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Power Of 10.bmp"/>
				<Item Name="Function_Power Of X.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Power Of X.bmp"/>
				<Item Name="Function_PPoll.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_PPoll.bmp"/>
				<Item Name="Function_PPollConfig.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_PPollConfig.bmp"/>
				<Item Name="Function_PPollUnconfig.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_PPollUnconfig.bmp"/>
				<Item Name="Function_Preallocated Read from Binary File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Preallocated Read from Binary File.bmp"/>
				<Item Name="Function_Preserve Run-Time Class.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Preserve Run-Time Class.bmp"/>
				<Item Name="Function_Preview Queue Element.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Preview Queue Element.bmp"/>
				<Item Name="Function_Quit LabVIEW.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Quit LabVIEW.bmp"/>
				<Item Name="Function_Quotient &amp; Remainder.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Quotient &amp; Remainder.bmp"/>
				<Item Name="Function_Random Number (0-1).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Random Number (0-1).bmp"/>
				<Item Name="Function_RcvRespMsg.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_RcvRespMsg.bmp"/>
				<Item Name="Function_Read Datalog.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Read Datalog.bmp"/>
				<Item Name="Function_Read Device.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Read Device.bmp"/>
				<Item Name="Function_Read from Text File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Read from Text File.bmp"/>
				<Item Name="Function_ReadStatus.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_ReadStatus.bmp"/>
				<Item Name="Function_Receive.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Receive.bmp"/>
				<Item Name="Function_ReceiveSetup.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_ReceiveSetup.bmp"/>
				<Item Name="Function_Reciprocal.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Reciprocal.bmp"/>
				<Item Name="Function_RecomposeArray.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_RecomposeArray.bmp"/>
				<Item Name="Function_Refnum to Path.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Refnum to Path.bmp"/>
				<Item Name="Function_Refnum to Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Refnum to Session.bmp"/>
				<Item Name="Function_Register Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Register Session.bmp"/>
				<Item Name="Function_Release Notifier.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Release Notifier.bmp"/>
				<Item Name="Function_Release Queue.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Release Queue.bmp"/>
				<Item Name="Function_Remove Fixed-Point Overflow Status.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Remove Fixed-Point Overflow Status.bmp"/>
				<Item Name="Function_Replace Substring.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Replace Substring.bmp"/>
				<Item Name="Function_Request Deallocation.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Request Deallocation.bmp"/>
				<Item Name="Function_ResetSys.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_ResetSys.bmp"/>
				<Item Name="Function_Resize Matrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Resize Matrix.bmp"/>
				<Item Name="Function_Resource Index.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Resource Index.bmp"/>
				<Item Name="Function_Reverse 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Reverse 1D Array.bmp"/>
				<Item Name="Function_Reverse String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Reverse String.bmp"/>
				<Item Name="Function_Rotate 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Rotate 1D Array.bmp"/>
				<Item Name="Function_Rotate Left With Carry.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Rotate Left With Carry.bmp"/>
				<Item Name="Function_Rotate Right With Carry.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Rotate Right With Carry.bmp"/>
				<Item Name="Function_Rotate String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Rotate String.bmp"/>
				<Item Name="Function_Rotate.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Rotate.bmp"/>
				<Item Name="Function_Round To Nearest.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Round To Nearest.bmp"/>
				<Item Name="Function_Round Toward +Infinity.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Round Toward +Infinity.bmp"/>
				<Item Name="Function_Round Toward -Infinity.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Round Toward -Infinity.bmp"/>
				<Item Name="Function_RT FIFO Create.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_RT FIFO Create.bmp"/>
				<Item Name="Function_RT FIFO Delete.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_RT FIFO Delete.bmp"/>
				<Item Name="Function_RT FIFO Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_RT FIFO Read.bmp"/>
				<Item Name="Function_RT FIFO Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_RT FIFO Write.bmp"/>
				<Item Name="Function_Scale By Power Of 2.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Scale By Power Of 2.bmp"/>
				<Item Name="Function_Scan String For Tokens.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Scan String For Tokens.bmp"/>
				<Item Name="Function_Scan Value.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Scan Value.bmp"/>
				<Item Name="Function_Search 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Search 1D Array.bmp"/>
				<Item Name="Function_Search and Replace String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Search and Replace String.bmp"/>
				<Item Name="Function_Search Variable Container.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Search Variable Container.bmp"/>
				<Item Name="Function_Secant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Secant.bmp"/>
				<Item Name="Function_Seek.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Seek.bmp"/>
				<Item Name="Function_Select.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Select.bmp"/>
				<Item Name="Function_Send Notification.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Send Notification.bmp"/>
				<Item Name="Function_Send.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Send.bmp"/>
				<Item Name="Function_SendCmds.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SendCmds.bmp"/>
				<Item Name="Function_SendDataBytes.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SendDataBytes.bmp"/>
				<Item Name="Function_SendIFC.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SendIFC.bmp"/>
				<Item Name="Function_SendList.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SendList.bmp"/>
				<Item Name="Function_SendLLO.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SendLLO.bmp"/>
				<Item Name="Function_SendSetup.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SendSetup.bmp"/>
				<Item Name="Function_Session to Refnum.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Session to Refnum.bmp"/>
				<Item Name="Function_Set Control Values by Index.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Control Values by Index.bmp"/>
				<Item Name="Function_Set Datalog Position.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Datalog Position.bmp"/>
				<Item Name="Function_Set File Position.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set File Position.bmp"/>
				<Item Name="Function_Set File Size.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set File Size.bmp"/>
				<Item Name="Function_Set Menu Item Info.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Menu Item Info.bmp"/>
				<Item Name="Function_Set Number of Records.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Number of Records.bmp"/>
				<Item Name="Function_Set Occurrence.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Occurrence.bmp"/>
				<Item Name="Function_Set Permissions.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Permissions.bmp"/>
				<Item Name="Function_Set Type and Creator.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Type and Creator.bmp"/>
				<Item Name="Function_Set Variant Attribute.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Variant Attribute.bmp"/>
				<Item Name="Function_Set Waveform Attribute.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Set Waveform Attribute.bmp"/>
				<Item Name="Function_SetRWLS.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SetRWLS.bmp"/>
				<Item Name="Function_SetTimeOut.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_SetTimeOut.bmp"/>
				<Item Name="Function_Shared Variable to String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Shared Variable to String.bmp"/>
				<Item Name="Function_Sign.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Sign.bmp"/>
				<Item Name="Function_Sinc.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Sinc.bmp"/>
				<Item Name="Function_Sine &amp; Cosine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Sine &amp; Cosine.bmp"/>
				<Item Name="Function_Sine.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Sine.bmp"/>
				<Item Name="Function_Size Handle.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Size Handle.bmp"/>
				<Item Name="Function_Sort 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Sort 1D Array.bmp"/>
				<Item Name="Function_Sort Array of String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Sort Array of String.bmp"/>
				<Item Name="Function_Split 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Split 1D Array.bmp"/>
				<Item Name="Function_Split Number.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Split Number.bmp"/>
				<Item Name="Function_Spreadsheet String To Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Spreadsheet String To Array.bmp"/>
				<Item Name="Function_Square Root.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Square Root.bmp"/>
				<Item Name="Function_Square.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Square.bmp"/>
				<Item Name="Function_Stop.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Stop.bmp"/>
				<Item Name="Function_String Length.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_String Length.bmp"/>
				<Item Name="Function_String Subset.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_String Subset.bmp"/>
				<Item Name="Function_String To Byte Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_String To Byte Array.bmp"/>
				<Item Name="Function_String To IP.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_String To IP.bmp"/>
				<Item Name="Function_String To Path.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_String To Path.bmp"/>
				<Item Name="Function_String to Shared Variable.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_String to Shared Variable.bmp"/>
				<Item Name="Function_Strip Path.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Strip Path.bmp"/>
				<Item Name="Function_Subtract (with error terminals).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Subtract (with error terminals).bmp"/>
				<Item Name="Function_Subtract.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Subtract.bmp"/>
				<Item Name="Function_Swap Bytes.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Swap Bytes.bmp"/>
				<Item Name="Function_Swap Values.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Swap Values.bmp"/>
				<Item Name="Function_Swap Vector Element.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Swap Vector Element.bmp"/>
				<Item Name="Function_Swap Words.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Swap Words.bmp"/>
				<Item Name="Function_Tangent.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Tangent.bmp"/>
				<Item Name="Function_TCP Close Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Close Connection.bmp"/>
				<Item Name="Function_TCP Create Listener.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Create Listener.bmp"/>
				<Item Name="Function_TCP Flattened Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Flattened Read.bmp"/>
				<Item Name="Function_TCP Flattened Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Flattened Write.bmp"/>
				<Item Name="Function_TCP Flex Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Flex Read.bmp"/>
				<Item Name="Function_TCP Flex Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Flex Write.bmp"/>
				<Item Name="Function_TCP Open Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Open Connection.bmp"/>
				<Item Name="Function_TCP Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Read.bmp"/>
				<Item Name="Function_TCP Wait On Listener.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Wait On Listener.bmp"/>
				<Item Name="Function_TCP Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TCP Write.bmp"/>
				<Item Name="Function_TDMS Advanced Asynchronous Read (Data Ref).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Advanced Asynchronous Read (Data Ref).bmp"/>
				<Item Name="Function_TDMS Advanced Asynchronous Write (Data Ref).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Advanced Asynchronous Write (Data Ref).bmp"/>
				<Item Name="Function_TDMS Close.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Close.bmp"/>
				<Item Name="Function_TDMS Configure Asynchronous Reads (Data Ref).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Configure Asynchronous Reads (Data Ref).bmp"/>
				<Item Name="Function_TDMS Configure Asynchronous Writes (Data Ref).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Configure Asynchronous Writes (Data Ref).bmp"/>
				<Item Name="Function_TDMS Defragment.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Defragment.bmp"/>
				<Item Name="Function_TDMS Flush.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Flush.bmp"/>
				<Item Name="Function_TDMS Get Asynchronous Read Status (Data Ref).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Get Asynchronous Read Status (Data Ref).bmp"/>
				<Item Name="Function_TDMS Get Asynchronous Write Status (Data Ref).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Get Asynchronous Write Status (Data Ref).bmp"/>
				<Item Name="Function_TDMS Get Properties.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Get Properties.bmp"/>
				<Item Name="Function_TDMS In Memory Close.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS In Memory Close.bmp"/>
				<Item Name="Function_TDMS In Memory Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS In Memory Open.bmp"/>
				<Item Name="Function_TDMS In Memory Read Bytes.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS In Memory Read Bytes.bmp"/>
				<Item Name="Function_TDMS List Contents.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS List Contents.bmp"/>
				<Item Name="Function_TDMS Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Open.bmp"/>
				<Item Name="Function_TDMS Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Read.bmp"/>
				<Item Name="Function_TDMS Refnum To File ID.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Refnum To File ID.bmp"/>
				<Item Name="Function_TDMS Set Properties.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Set Properties.bmp"/>
				<Item Name="Function_TDMS Write IP.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Write IP.bmp"/>
				<Item Name="Function_TDMS Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TDMS Write.bmp"/>
				<Item Name="Function_Temporary Directory.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Temporary Directory.bmp"/>
				<Item Name="Function_TestSRQ.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TestSRQ.bmp"/>
				<Item Name="Function_TestSys.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TestSys.bmp"/>
				<Item Name="Function_Text to UTF-8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Text to UTF-8.bmp"/>
				<Item Name="Function_Threshold 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Threshold 1D Array.bmp"/>
				<Item Name="Function_Tick Count (ms).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Tick Count (ms).bmp"/>
				<Item Name="Function_To Byte Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Byte Integer.bmp"/>
				<Item Name="Function_To Double Precision Complex.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Double Precision Complex.bmp"/>
				<Item Name="Function_To Double Precision Float.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Double Precision Float.bmp"/>
				<Item Name="Function_To Extended Precision Complex.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Extended Precision Complex.bmp"/>
				<Item Name="Function_To Extended Precision Float.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Extended Precision Float.bmp"/>
				<Item Name="Function_To Fixed-Point.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Fixed-Point.bmp"/>
				<Item Name="Function_To Long Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Long Integer.bmp"/>
				<Item Name="Function_To Lower Case.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Lower Case.bmp"/>
				<Item Name="Function_To More Generic Class.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To More Generic Class.bmp"/>
				<Item Name="Function_To More Specific Class.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To More Specific Class.bmp"/>
				<Item Name="Function_To OLE Variant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To OLE Variant.bmp"/>
				<Item Name="Function_To Probe String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Probe String.bmp"/>
				<Item Name="Function_To Quad Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Quad Integer.bmp"/>
				<Item Name="Function_To Single Precision Complex.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Single Precision Complex.bmp"/>
				<Item Name="Function_To Single Precision Float.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Single Precision Float.bmp"/>
				<Item Name="Function_To Time Stamp.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Time Stamp.bmp"/>
				<Item Name="Function_To Unsigned Byte Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Unsigned Byte Integer.bmp"/>
				<Item Name="Function_To Unsigned Long Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Unsigned Long Integer.bmp"/>
				<Item Name="Function_To Unsigned Quad Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Unsigned Quad Integer.bmp"/>
				<Item Name="Function_To Unsigned Word Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Unsigned Word Integer.bmp"/>
				<Item Name="Function_To Upper Case.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Upper Case.bmp"/>
				<Item Name="Function_To Variant.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Variant.bmp"/>
				<Item Name="Function_To Word Integer.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_To Word Integer.bmp"/>
				<Item Name="Function_Transpose 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Transpose 1D Array.bmp"/>
				<Item Name="Function_Transpose 2D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Transpose 2D Array.bmp"/>
				<Item Name="Function_Transpose Matrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Transpose Matrix.bmp"/>
				<Item Name="Function_Trigger.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Trigger.bmp"/>
				<Item Name="Function_TriggerList.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_TriggerList.bmp"/>
				<Item Name="Function_Two Button Dialog.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Two Button Dialog.bmp"/>
				<Item Name="Function_Type and Creator.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Type and Creator.bmp"/>
				<Item Name="Function_UDP Close.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_UDP Close.bmp"/>
				<Item Name="Function_UDP Multicast Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_UDP Multicast Open.bmp"/>
				<Item Name="Function_UDP Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_UDP Open.bmp"/>
				<Item Name="Function_UDP Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_UDP Read.bmp"/>
				<Item Name="Function_UDP Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_UDP Write.bmp"/>
				<Item Name="Function_Unbitpack from Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unbitpack from Array.bmp"/>
				<Item Name="Function_Unflatten From JSON.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unflatten From JSON.bmp"/>
				<Item Name="Function_Unflatten From XML.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unflatten From XML.bmp"/>
				<Item Name="Function_Unleak Variant Value Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unleak Variant Value Reference.bmp"/>
				<Item Name="Function_Unpackage Matrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unpackage Matrix.bmp"/>
				<Item Name="Function_Unregister For Events.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unregister For Events.bmp"/>
				<Item Name="Function_Unregister Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Unregister Session.bmp"/>
				<Item Name="Function_UTF-8 to Text.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_UTF-8 to Text.bmp"/>
				<Item Name="Function_Variant To Data.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Variant To Data.bmp"/>
				<Item Name="Function_Variant To Flattened String.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Variant To Flattened String.bmp"/>
				<Item Name="Function_VI Library.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VI Library.bmp"/>
				<Item Name="Function_VISA Assert Interrupt Signal.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Assert Interrupt Signal.bmp"/>
				<Item Name="Function_VISA Assert Trigger.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Assert Trigger.bmp"/>
				<Item Name="Function_VISA Assert Utility Signal.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Assert Utility Signal.bmp"/>
				<Item Name="Function_VISA Clear.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Clear.bmp"/>
				<Item Name="Function_VISA Close.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Close.bmp"/>
				<Item Name="Function_VISA Disable Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Disable Event.bmp"/>
				<Item Name="Function_VISA Discard Events.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Discard Events.bmp"/>
				<Item Name="Function_VISA Enable Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Enable Event.bmp"/>
				<Item Name="Function_VISA Find Resource.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Find Resource.bmp"/>
				<Item Name="Function_VISA GPIB Command.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA GPIB Command.bmp"/>
				<Item Name="Function_VISA GPIB Control ATN.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA GPIB Control ATN.bmp"/>
				<Item Name="Function_VISA GPIB Control REN.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA GPIB Control REN.bmp"/>
				<Item Name="Function_VISA GPIB Pass Control.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA GPIB Pass Control.bmp"/>
				<Item Name="Function_VISA GPIB Send IFC.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA GPIB Send IFC.bmp"/>
				<Item Name="Function_VISA In 8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA In 8.bmp"/>
				<Item Name="Function_VISA In 16.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA In 16.bmp"/>
				<Item Name="Function_VISA In 32.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA In 32.bmp"/>
				<Item Name="Function_VISA In 64.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA In 64.bmp"/>
				<Item Name="Function_VISA Lock.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Lock.bmp"/>
				<Item Name="Function_VISA Map Address.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Map Address.bmp"/>
				<Item Name="Function_VISA Map Trigger.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Map Trigger.bmp"/>
				<Item Name="Function_VISA Memory Allocation Ex.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Memory Allocation Ex.bmp"/>
				<Item Name="Function_VISA Memory Allocation.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Memory Allocation.bmp"/>
				<Item Name="Function_VISA Memory Free.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Memory Free.bmp"/>
				<Item Name="Function_VISA Move In 8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move In 8.bmp"/>
				<Item Name="Function_VISA Move In 16.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move In 16.bmp"/>
				<Item Name="Function_VISA Move In 32.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move In 32.bmp"/>
				<Item Name="Function_VISA Move In 64.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move In 64.bmp"/>
				<Item Name="Function_VISA Move Out 8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move Out 8.bmp"/>
				<Item Name="Function_VISA Move Out 16.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move Out 16.bmp"/>
				<Item Name="Function_VISA Move Out 32.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move Out 32.bmp"/>
				<Item Name="Function_VISA Move Out 64.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move Out 64.bmp"/>
				<Item Name="Function_VISA Move.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Move.bmp"/>
				<Item Name="Function_VISA Open.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Open.bmp"/>
				<Item Name="Function_VISA Out 8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Out 8.bmp"/>
				<Item Name="Function_VISA Out 16.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Out 16.bmp"/>
				<Item Name="Function_VISA Out 32.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Out 32.bmp"/>
				<Item Name="Function_VISA Out 64.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Out 64.bmp"/>
				<Item Name="Function_VISA Peek 8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Peek 8.bmp"/>
				<Item Name="Function_VISA Peek 16.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Peek 16.bmp"/>
				<Item Name="Function_VISA Peek 32.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Peek 32.bmp"/>
				<Item Name="Function_VISA Peek 64.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Peek 64.bmp"/>
				<Item Name="Function_VISA Poke 8.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Poke 8.bmp"/>
				<Item Name="Function_VISA Poke 16.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Poke 16.bmp"/>
				<Item Name="Function_VISA Poke 32.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Poke 32.bmp"/>
				<Item Name="Function_VISA Poke 64.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Poke 64.bmp"/>
				<Item Name="Function_VISA Read STB.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Read STB.bmp"/>
				<Item Name="Function_VISA Read To File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Read To File.bmp"/>
				<Item Name="Function_VISA Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Read.bmp"/>
				<Item Name="Function_VISA Refnum to Session.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Refnum to Session.bmp"/>
				<Item Name="Function_VISA Status Description.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Status Description.bmp"/>
				<Item Name="Function_VISA Unlock.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Unlock.bmp"/>
				<Item Name="Function_VISA Unmap Address.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Unmap Address.bmp"/>
				<Item Name="Function_VISA Unmap Trigger.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Unmap Trigger.bmp"/>
				<Item Name="Function_VISA USB Control In.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA USB Control In.bmp"/>
				<Item Name="Function_VISA USB Control Out.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA USB Control Out.bmp"/>
				<Item Name="Function_VISA VXI Cmd or Query.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA VXI Cmd or Query.bmp"/>
				<Item Name="Function_VISA Wait on Event.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Wait on Event.bmp"/>
				<Item Name="Function_VISA Write From File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Write From File.bmp"/>
				<Item Name="Function_VISA Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_VISA Write.bmp"/>
				<Item Name="Function_Volume Info.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Volume Info.bmp"/>
				<Item Name="Function_Wait (ms).bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait (ms).bmp"/>
				<Item Name="Function_Wait For Activity.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait For Activity.bmp"/>
				<Item Name="Function_Wait For Front Panel Activity.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait For Front Panel Activity.bmp"/>
				<Item Name="Function_Wait for GPIB RQS.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait for GPIB RQS.bmp"/>
				<Item Name="Function_Wait on Notification from Multiple with Notifier History.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait on Notification from Multiple with Notifier History.bmp"/>
				<Item Name="Function_Wait on Notification from Multiple.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait on Notification from Multiple.bmp"/>
				<Item Name="Function_Wait on Notification with Notifier History.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait on Notification with Notifier History.bmp"/>
				<Item Name="Function_Wait on Notification.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait on Notification.bmp"/>
				<Item Name="Function_Wait on Occurrence.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait on Occurrence.bmp"/>
				<Item Name="Function_Wait Until Next ms Multiple.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Wait Until Next ms Multiple.bmp"/>
				<Item Name="Function_WaitSRQ.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_WaitSRQ.bmp"/>
				<Item Name="Function_Write Datalog.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Write Datalog.bmp"/>
				<Item Name="Function_Write Device.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Write Device.bmp"/>
				<Item Name="Function_Write to Text File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Write to Text File.bmp"/>
				<Item Name="Function_Y-th Root of X.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Function_Y-th Root of X.bmp"/>
				<Item Name="Global_Global Variable.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Global_Global Variable.bmp"/>
				<Item Name="GPIBReadWrite_Read File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GPIBReadWrite_Read File.bmp"/>
				<Item Name="GPIBReadWrite_Write File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GPIBReadWrite_Write File.bmp"/>
				<Item Name="GrowableFunction_Array Subset.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Array Subset.bmp"/>
				<Item Name="GrowableFunction_Delete From Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Delete From Array.bmp"/>
				<Item Name="GrowableFunction_Get Fixed-Point Components.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Get Fixed-Point Components.bmp"/>
				<Item Name="GrowableFunction_Get Submatrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Get Submatrix.bmp"/>
				<Item Name="GrowableFunction_Initialize Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Initialize Array.bmp"/>
				<Item Name="GrowableFunction_Insert Into Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Insert Into Array.bmp"/>
				<Item Name="GrowableFunction_Register Event Callback.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Register Event Callback.bmp"/>
				<Item Name="GrowableFunction_Replace Array Subset.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Replace Array Subset.bmp"/>
				<Item Name="GrowableFunction_Reshape Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Reshape Array.bmp"/>
				<Item Name="GrowableFunction_Set Matrix Diagonal.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Set Matrix Diagonal.bmp"/>
				<Item Name="GrowableFunction_Set Matrix Elements.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Set Matrix Elements.bmp"/>
				<Item Name="GrowableFunction_Set Submatrix.bmp" Type="Document" URL="../../FunctionsIcons/bmp/GrowableFunction_Set Submatrix.bmp"/>
				<Item Name="IndexArray_Get Matrix Diagonal.bmp" Type="Document" URL="../../FunctionsIcons/bmp/IndexArray_Get Matrix Diagonal.bmp"/>
				<Item Name="IndexArray_Get Matrix Elements.bmp" Type="Document" URL="../../FunctionsIcons/bmp/IndexArray_Get Matrix Elements.bmp"/>
				<Item Name="IndexArray_Index Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/IndexArray_Index Array.bmp"/>
				<Item Name="InlineCNode_Event Data Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/InlineCNode_Event Data Node.bmp"/>
				<Item Name="InlineCNode_Inline C Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/InlineCNode_Inline C Node.bmp"/>
				<Item Name="InPlaceElementStructure_In Place Element Structure.bmp" Type="Document" URL="../../FunctionsIcons/bmp/InPlaceElementStructure_In Place Element Structure.bmp"/>
				<Item Name="InRangeAndCoerce_In Range and Coerce.bmp" Type="Document" URL="../../FunctionsIcons/bmp/InRangeAndCoerce_In Range and Coerce.bmp"/>
				<Item Name="Invoke_Invoke Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Invoke_Invoke Node.bmp"/>
				<Item Name="Local_Local Variable.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Local_Local Variable.bmp"/>
				<Item Name="MathScriptCallByRef_MathScript Call By Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/MathScriptCallByRef_MathScript Call By Reference.bmp"/>
				<Item Name="MathScriptNode_MathScript Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/MathScriptNode_MathScript Node.bmp"/>
				<Item Name="NamedBundler_Build Waveform.bmp" Type="Document" URL="../../FunctionsIcons/bmp/NamedBundler_Build Waveform.bmp"/>
				<Item Name="NamedBundler_Bundle By Name.bmp" Type="Document" URL="../../FunctionsIcons/bmp/NamedBundler_Bundle By Name.bmp"/>
				<Item Name="NamedUnbundler_Get Waveform Components.bmp" Type="Document" URL="../../FunctionsIcons/bmp/NamedUnbundler_Get Waveform Components.bmp"/>
				<Item Name="NamedUnbundler_Unbundle By Name.bmp" Type="Document" URL="../../FunctionsIcons/bmp/NamedUnbundler_Unbundle By Name.bmp"/>
				<Item Name="Property_Property Node.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Property_Property Node.bmp"/>
				<Item Name="ReadWriteFile_Read from Binary File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ReadWriteFile_Read from Binary File.bmp"/>
				<Item Name="ReadWriteFile_Write to Binary File.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ReadWriteFile_Write to Binary File.bmp"/>
				<Item Name="RegisterForEvents_Register For Events.bmp" Type="Document" URL="../../FunctionsIcons/bmp/RegisterForEvents_Register For Events.bmp"/>
				<Item Name="ScriptNode_MATLAB script.bmp" Type="Document" URL="../../FunctionsIcons/bmp/ScriptNode_MATLAB script.bmp"/>
				<Item Name="Sequence_Stacked Sequence Structure.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Sequence_Stacked Sequence Structure.bmp"/>
				<Item Name="SharedVariableDynamicOpen_Create Stream.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicOpen_Create Stream.bmp"/>
				<Item Name="SharedVariableDynamicOpen_Open and Verify Variable Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicOpen_Open and Verify Variable Connection.bmp"/>
				<Item Name="SharedVariableDynamicOpen_Open Variable Connection in Background.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicOpen_Open Variable Connection in Background.bmp"/>
				<Item Name="SharedVariableDynamicOpen_Open Variable Connection.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicOpen_Open Variable Connection.bmp"/>
				<Item Name="SharedVariableDynamicRead_Direct Variable Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicRead_Direct Variable Read.bmp"/>
				<Item Name="SharedVariableDynamicRead_Read Multiple Elements from Stream.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicRead_Read Multiple Elements from Stream.bmp"/>
				<Item Name="SharedVariableDynamicRead_Read Single Element from Stream.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicRead_Read Single Element from Stream.bmp"/>
				<Item Name="SharedVariableDynamicRead_Read Variable with Timeout.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicRead_Read Variable with Timeout.bmp"/>
				<Item Name="SharedVariableDynamicRead_Read Variable.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicRead_Read Variable.bmp"/>
				<Item Name="SharedVariableDynamicRead_Scanned Variable Read.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicRead_Scanned Variable Read.bmp"/>
				<Item Name="SharedVariableDynamicWrite_Direct Variable Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicWrite_Direct Variable Write.bmp"/>
				<Item Name="SharedVariableDynamicWrite_Scanned Variable Write.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicWrite_Scanned Variable Write.bmp"/>
				<Item Name="SharedVariableDynamicWrite_Write Multiple Elements to Stream.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicWrite_Write Multiple Elements to Stream.bmp"/>
				<Item Name="SharedVariableDynamicWrite_Write Single Element to Stream.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicWrite_Write Single Element to Stream.bmp"/>
				<Item Name="SharedVariableDynamicWrite_Write Variable with Timeout.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicWrite_Write Variable with Timeout.bmp"/>
				<Item Name="SharedVariableDynamicWrite_Write Variable.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableDynamicWrite_Write Variable.bmp"/>
				<Item Name="SharedVariableNode_Shared Variable.bmp" Type="Document" URL="../../FunctionsIcons/bmp/SharedVariableNode_Shared Variable.bmp"/>
				<Item Name="StaticVIReference_Static VI Reference.bmp" Type="Document" URL="../../FunctionsIcons/bmp/StaticVIReference_Static VI Reference.bmp"/>
				<Item Name="TimedLoop_Timed Loop.bmp" Type="Document" URL="../../FunctionsIcons/bmp/TimedLoop_Timed Loop.bmp"/>
				<Item Name="TimedSequence_Timed Sequence.bmp" Type="Document" URL="../../FunctionsIcons/bmp/TimedSequence_Timed Sequence.bmp"/>
				<Item Name="TypeCast_Type Cast.bmp" Type="Document" URL="../../FunctionsIcons/bmp/TypeCast_Type Cast.bmp"/>
				<Item Name="Unbundler_Decimate 1D Array.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Unbundler_Decimate 1D Array.bmp"/>
				<Item Name="Unbundler_Split Signals.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Unbundler_Split Signals.bmp"/>
				<Item Name="Unbundler_Unbundle.bmp" Type="Document" URL="../../FunctionsIcons/bmp/Unbundler_Unbundle.bmp"/>
				<Item Name="UnitCast_Convert Unit.bmp" Type="Document" URL="../../FunctionsIcons/bmp/UnitCast_Convert Unit.bmp"/>
				<Item Name="WhileLoop_While Loop #1.bmp" Type="Document" URL="../../FunctionsIcons/bmp/WhileLoop_While Loop #1.bmp"/>
				<Item Name="WhileLoop_While Loop #2.bmp" Type="Document" URL="../../FunctionsIcons/bmp/WhileLoop_While Loop #2.bmp"/>
			</Item>
			<Item Name="container.vi" Type="VI" URL="../../FunctionsIcons/container.vi"/>
			<Item Name="ConvertPrimitivesToIcons.vi" Type="VI" URL="../icons/ConvertPrimitivesToIcons.vi"/>
			<Item Name="getIconList.vi" Type="VI" URL="../../FunctionsIcons/getIconList.vi"/>
		</Item>
		<Item Name="icons" Type="Folder">
			<Item Name="Fallout3_0000.ico" Type="Document" URL="../icons/Fallout3_0000.ico"/>
			<Item Name="fallout_3_vault_boy_by_tylertut.png" Type="Document" URL="../icons/fallout_3_vault_boy_by_tylertut.png"/>
			<Item Name="vault_boy_vector_by_warnerator-d318mok.jpg" Type="Document" URL="../icons/vault_boy_vector_by_warnerator-d318mok.jpg"/>
		</Item>
		<Item Name="modules" Type="Folder">
			<Item Name="PIC18F4550 USB LVLIB" Type="Folder">
				<Item Name="Choose_USB.vi" Type="VI" URL="../modules/PIC18F4550 USB LVLIB/Choose_USB.vi"/>
				<Item Name="Close_USB.vi" Type="VI" URL="../modules/PIC18F4550 USB LVLIB/Close_USB.vi"/>
				<Item Name="Open_USB.vi" Type="VI" URL="../modules/PIC18F4550 USB LVLIB/Open_USB.vi"/>
				<Item Name="Read_USB.vi" Type="VI" URL="../modules/PIC18F4550 USB LVLIB/Read_USB.vi"/>
				<Item Name="test_ping.vi" Type="VI" URL="../modules/PIC18F4550 USB LVLIB/test_ping.vi"/>
				<Item Name="Write_USB.vi" Type="VI" URL="../modules/PIC18F4550 USB LVLIB/Write_USB.vi"/>
			</Item>
			<Item Name="PipBoy" Type="Folder">
				<Item Name="PipBoy_ConvertImageToIcon.vi" Type="VI" URL="../modules/PipBoy/PipBoy_ConvertImageToIcon.vi"/>
				<Item Name="PipBoy_SetIconName.vi" Type="VI" URL="../modules/PipBoy/PipBoy_SetIconName.vi"/>
				<Item Name="PipBoy_SetImage.vi" Type="VI" URL="../modules/PipBoy/PipBoy_SetImage.vi"/>
				<Item Name="PipBoy_SetPageNum.vi" Type="VI" URL="../modules/PipBoy/PipBoy_SetPageNum.vi"/>
			</Item>
			<Item Name="support" Type="Folder">
				<Item Name="Message Queue" Type="Folder">
					<Item Name="Message Queue.lvlib" Type="Library" URL="../modules/support/Message Queue/Message Queue.lvlib"/>
				</Item>
				<Item Name="User Event - Stop" Type="Folder">
					<Item Name="User Event - Stop.lvlib" Type="Library" URL="../modules/support/User Event - Stop/User Event - Stop.lvlib"/>
				</Item>
				<Item Name="Check Loop Error.vi" Type="VI" URL="../modules/support/Check Loop Error.vi"/>
				<Item Name="Error Handler - Event Handling Loop.vi" Type="VI" URL="../modules/support/Error Handler - Event Handling Loop.vi"/>
				<Item Name="Error Handler - Message Handling Loop.vi" Type="VI" URL="../modules/support/Error Handler - Message Handling Loop.vi"/>
			</Item>
			<Item Name="TdmsIcons" Type="Folder">
				<Item Name="TdmsIcons_CloseFile.vi" Type="VI" URL="../modules/TdmsIcons/TdmsIcons_CloseFile.vi"/>
				<Item Name="TdmsIcons_OpenFile.vi" Type="VI" URL="../modules/TdmsIcons/TdmsIcons_OpenFile.vi"/>
				<Item Name="TdmsIcons_ReadIcon.vi" Type="VI" URL="../modules/TdmsIcons/TdmsIcons_ReadIcon.vi"/>
				<Item Name="TdmsIcons_WriteIcon.vi" Type="VI" URL="../modules/TdmsIcons/TdmsIcons_WriteIcon.vi"/>
			</Item>
		</Item>
		<Item Name="needed" Type="Folder">
			<Item Name="Icons.tdms" Type="Document" URL="../needed/Icons.tdms"/>
			<Item Name="PipBoy.ini" Type="Document" URL="../needed/PipBoy.ini"/>
		</Item>
		<Item Name="tests" Type="Folder">
			<Property Name="NI.SortType" Type="Int">1</Property>
			<Item Name="Drop Add Function Inside While Loop2.vi" Type="VI" URL="../tests/Drop Add Function Inside While Loop2.vi"/>
			<Item Name="GetIcons.vi" Type="VI" URL="../tests/GetIcons.vi"/>
			<Item Name="GroupInfo.vi" Type="VI" URL="../tests/GroupInfo.vi"/>
			<Item Name="InMemo.vi" Type="VI" URL="../tests/InMemo.vi"/>
			<Item Name="ReadIcon.vi" Type="VI" URL="../tests/ReadIcon.vi"/>
			<Item Name="RemapIcon.vi" Type="VI" URL="../tests/RemapIcon.vi"/>
			<Item Name="SaveIcon.vi" Type="VI" URL="../tests/SaveIcon.vi"/>
			<Item Name="SaveReadImage.vi" Type="VI" URL="../tests/SaveReadImage.vi"/>
			<Item Name="SaveReadImage2.vi" Type="VI" URL="../tests/SaveReadImage2.vi"/>
			<Item Name="Untitled 1.vi" Type="VI" URL="../tests/Untitled 1.vi"/>
			<Item Name="Untitled 7.vi" Type="VI" URL="../tests/Untitled 7.vi"/>
			<Item Name="Untitled Project 1.aliases" Type="Document" URL="../tests/Untitled Project 1.aliases"/>
			<Item Name="Untitled Project 1.lvlps" Type="Document" URL="../tests/Untitled Project 1.lvlps"/>
			<Item Name="Untitled Project 1.lvproj" Type="Document" URL="../tests/Untitled Project 1.lvproj"/>
			<Item Name="WriteIconsTDMS.vi" Type="VI" URL="../tests/WriteIconsTDMS.vi"/>
		</Item>
		<Item Name="PipBoy_Fmt_PaddPagesWithEmptyPictures.vi" Type="VI" URL="../functions/PipBoy_Fmt_PaddPagesWithEmptyPictures.vi"/>
		<Item Name="PipBoy_GetIconsFromTdms.vi" Type="VI" URL="../functions/PipBoy_GetIconsFromTdms.vi"/>
		<Item Name="PipBoy_Main.vi" Type="VI" URL="../PipBoy_Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="Array of VData to VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VArray__ogtk.vi"/>
				<Item Name="Array of VData to VCluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array of VData to VCluster__ogtk.vi"/>
				<Item Name="Array Size(s)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array Size(s)__ogtk.vi"/>
				<Item Name="Array to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Array to Array of VData__ogtk.vi"/>
				<Item Name="Build Error Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/Build Error Cluster__ogtk.vi"/>
				<Item Name="Cluster to Array of VData__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Cluster to Array of VData__ogtk.vi"/>
				<Item Name="Current VIs Parents Ref__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Current VIs Parents Ref__ogtk.vi"/>
				<Item Name="Encode Section and Key Names__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Encode Section and Key Names__ogtk.vi"/>
				<Item Name="Fit VI window to Largest Dec__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/appcontrol/appcontrol.llb/Fit VI window to Largest Dec__ogtk.vi"/>
				<Item Name="Format Numeric Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Format Numeric Array__ogtk.vi"/>
				<Item Name="Format Variant Into String__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Format Variant Into String__ogtk.vi"/>
				<Item Name="Get Array Element TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Array Element TD__ogtk.vi"/>
				<Item Name="Get Array Element TDEnum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Array Element TDEnum__ogtk.vi"/>
				<Item Name="Get Cluster Element Names__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Cluster Element Names__ogtk.vi"/>
				<Item Name="Get Cluster Elements TDs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Cluster Elements TDs__ogtk.vi"/>
				<Item Name="Get Data Name from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name from TD__ogtk.vi"/>
				<Item Name="Get Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Data Name__ogtk.vi"/>
				<Item Name="Get Default Data from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Default Data from TD__ogtk.vi"/>
				<Item Name="Get Element TD from Array TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Element TD from Array TD__ogtk.vi"/>
				<Item Name="Get Header from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Header from TD__ogtk.vi"/>
				<Item Name="Get Last PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Last PString__ogtk.vi"/>
				<Item Name="Get PString__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get PString__ogtk.vi"/>
				<Item Name="Get Refnum Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Refnum Type Enum from Data__ogtk.vi"/>
				<Item Name="Get Refnum Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Refnum Type Enum from TD__ogtk.vi"/>
				<Item Name="Get Strings from Enum TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Strings from Enum TD__ogtk.vi"/>
				<Item Name="Get Strings from Enum__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Strings from Enum__ogtk.vi"/>
				<Item Name="Get TDEnum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get TDEnum from Data__ogtk.vi"/>
				<Item Name="Get Variant Attributes__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Variant Attributes__ogtk.vi"/>
				<Item Name="Get Waveform Type Enum from Data__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Waveform Type Enum from Data__ogtk.vi"/>
				<Item Name="Get Waveform Type Enum from TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Get Waveform Type Enum from TD__ogtk.vi"/>
				<Item Name="NotifyIcon - .NET EventCallback.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/SubVIs/NotifyIcon - .NET EventCallback.vi"/>
				<Item Name="NotifyIcon - Create ContextMenu.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/SubVIs/NotifyIcon - Create ContextMenu.vi"/>
				<Item Name="NotifyIcon - Create Menu.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/SubVIs/NotifyIcon - Create Menu.vi"/>
				<Item Name="NotifyIcon - Create SubMenuItem.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/SubVIs/NotifyIcon - Create SubMenuItem.vi"/>
				<Item Name="NotifyIcon - Create.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Create.vi"/>
				<Item Name="NotifyIcon - Destroy.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Destroy.vi"/>
				<Item Name="NotifyIcon - Get All MenuItems.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/SubVIs/NotifyIcon - Get All MenuItems.vi"/>
				<Item Name="NotifyIcon - Get MenuItem.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Get MenuItem.vi"/>
				<Item Name="NotifyIcon - Interpret Event Data.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Interpret Event Data.vi"/>
				<Item Name="NotifyIcon - Register .NET Events Callback.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/SubVIs/NotifyIcon - Register .NET Events Callback.vi"/>
				<Item Name="NotifyIcon - Register LabVIEW User Events.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Register LabVIEW User Events.vi"/>
				<Item Name="NotifyIcon - Set ContextMenu.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Set ContextMenu.vi"/>
				<Item Name="NotifyIcon - Set Icon.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Set Icon.vi"/>
				<Item Name="NotifyIcon - Show BalloonTip.vi" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/NotifyIcon - Show BalloonTip.vi"/>
				<Item Name="NotifyIcon .NET Callback Parameter.ctl" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/TypeDefs/NotifyIcon .NET Callback Parameter.ctl"/>
				<Item Name="NotifyIcon Event Data.ctl" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/TypeDefs/NotifyIcon Event Data.ctl"/>
				<Item Name="NotifyIcon Event Registration Actions.ctl" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/TypeDefs/NotifyIcon Event Registration Actions.ctl"/>
				<Item Name="NotifyIcon Events.ctl" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/TypeDefs/NotifyIcon Events.ctl"/>
				<Item Name="NotifyIcon User Event Ref.ctl" Type="VI" URL="/&lt;userlib&gt;/NotifyIcon/TypeDefs/NotifyIcon User Event Ref.ctl"/>
				<Item Name="Parse String with TDs__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Parse String with TDs__ogtk.vi"/>
				<Item Name="Read INI Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Read INI Cluster__ogtk.vi"/>
				<Item Name="Read Key (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Read Key (Variant)__ogtk.vi"/>
				<Item Name="Read Section Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Read Section Cluster__ogtk.vi"/>
				<Item Name="Refnum Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Refnum Subtype Enum__ogtk.ctl"/>
				<Item Name="Reshape 1D Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape 1D Array__ogtk.vi"/>
				<Item Name="Reshape Array to 1D VArray__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Reshape Array to 1D VArray__ogtk.vi"/>
				<Item Name="Resolve Timestamp Format__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Resolve Timestamp Format__ogtk.vi"/>
				<Item Name="Scripting Tools.lvlib" Type="Library" URL="/&lt;userlib&gt;/_LAVACR/Scripting Tools/Scripting Tools.lvlib"/>
				<Item Name="Set Data Name__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Set Data Name__ogtk.vi"/>
				<Item Name="Set Enum String Value__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Set Enum String Value__ogtk.vi"/>
				<Item Name="Split Cluster TD__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Split Cluster TD__ogtk.vi"/>
				<Item Name="Strip Units__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Strip Units__ogtk.vi"/>
				<Item Name="Trim Whitespace (String Array)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace (String Array)__ogtk.vi"/>
				<Item Name="Trim Whitespace (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace (String)__ogtk.vi"/>
				<Item Name="Trim Whitespace__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/string/string.llb/Trim Whitespace__ogtk.vi"/>
				<Item Name="Type Descriptor Enumeration__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Enumeration__ogtk.ctl"/>
				<Item Name="Type Descriptor Header__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor Header__ogtk.ctl"/>
				<Item Name="Type Descriptor__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Type Descriptor__ogtk.ctl"/>
				<Item Name="Variant to Header Info__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Variant to Header Info__ogtk.vi"/>
				<Item Name="Waveform Subtype Enum__ogtk.ctl" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/Waveform Subtype Enum__ogtk.ctl"/>
				<Item Name="Write INI Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Write INI Cluster__ogtk.vi"/>
				<Item Name="Write Key (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Write Key (Variant)__ogtk.vi"/>
				<Item Name="Write Section Cluster__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/variantconfig/variantconfig.llb/Write Section Cluster__ogtk.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="AsciiToInt.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/AsciiToInt.vi"/>
				<Item Name="Bit-array To Byte-array.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Bit-array To Byte-array.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Path.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Check Path.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Clear-68016.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/Clear-68016.vi"/>
				<Item Name="ClearError.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ClearError.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="configureNumberOfValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/configureNumberOfValues.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Create Mask By Alpha.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Create Mask By Alpha.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Directory of Top Level VI.vi" Type="VI" URL="/&lt;vilib&gt;/picture/jpeg.llb/Directory of Top Level VI.vi"/>
				<Item Name="Draw 1-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 1-Bit Pixmap.vi"/>
				<Item Name="Draw 4-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 4-Bit Pixmap.vi"/>
				<Item Name="Draw 8-Bit Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw 8-Bit Pixmap.vi"/>
				<Item Name="Draw Flattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Flattened Pixmap.vi"/>
				<Item Name="Draw True-Color Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw True-Color Pixmap.vi"/>
				<Item Name="Draw Unflattened Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Unflattened Pixmap.vi"/>
				<Item Name="Empty Picture" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Empty Picture"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ExtractSubstring.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ExtractSubstring.vi"/>
				<Item Name="fileViewerConfigData.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/fileViewerConfigData.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="FixBadRect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/FixBadRect.vi"/>
				<Item Name="Flatten Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pixmap.llb/Flatten Pixmap.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="formatPropertyList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/formatPropertyList.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get Class Hierarchy from Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/Get Class Hierarchy from Class Name.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get GObject Label.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/Get GObject Label.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get Type of Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Get Type of Variant.vi"/>
				<Item Name="getChannelList.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/getChannelList.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="getNamesFromPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/getNamesFromPath.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="GoTo.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/GoTo.vi"/>
				<Item Name="imagedata.ctl" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/imagedata.ctl"/>
				<Item Name="initFileContentsTree.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initFileContentsTree.vi"/>
				<Item Name="InitFromConfiguration.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/InitFromConfiguration.vi"/>
				<Item Name="initHelpButtonVisibility.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initHelpButtonVisibility.vi"/>
				<Item Name="InitScrollbarAndListBox.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/InitScrollbarAndListBox.vi"/>
				<Item Name="initTabValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/initTabValues.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="loadAndFormatValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/loadAndFormatValues.vi"/>
				<Item Name="LoadBufferForMultiListBoxAndFormat.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/LoadBufferForMultiListBoxAndFormat.vi"/>
				<Item Name="LogicalSort.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/LogicalSort.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="lveventtype.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/lveventtype.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/Numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVPoint32TypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPoint32TypeDef.ctl"/>
				<Item Name="LVPointTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPointTypeDef.ctl"/>
				<Item Name="LVPositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVPositionTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVRowAndColumnUnsignedTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRowAndColumnUnsignedTypeDef.ctl"/>
				<Item Name="NewVIObject_LVRelativeDirectionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/_script/New VI Object TypeDefs/NewVIObject_LVRelativeDirectionTypeDef.ctl"/>
				<Item Name="NewVIObject_LVRelativePositionTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/_script/New VI Object TypeDefs/NewVIObject_LVRelativePositionTypeDef.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_XNodeSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/XNodeSupport/NI_XNodeSupport.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Palette Menu.lvlib" Type="Library" URL="/&lt;vilib&gt;/Palette API/Palette Menu/Palette Menu.lvlib"/>
				<Item Name="panelResize_tdms.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/panelResize_tdms.vi"/>
				<Item Name="panelstate.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/panelstate.ctl"/>
				<Item Name="Picture to Pixmap.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Picture to Pixmap.vi"/>
				<Item Name="Read Palette.vi" Type="VI" URL="/&lt;vilib&gt;/Palette API/Read Palette.vi"/>
				<Item Name="Read PNG File.vi" Type="VI" URL="/&lt;vilib&gt;/picture/png.llb/Read PNG File.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Select Event Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/Select Event Type.ctl"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="setListBoxColumnWidths.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/setListBoxColumnWidths.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="sizeaction.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/sizeaction.ctl"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="status.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/status.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="TDMS - File Viewer.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMS - File Viewer.vi"/>
				<Item Name="TDMSFileViewer_LaunchHelp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMSFileViewer_LaunchHelp.vi"/>
				<Item Name="TDMSFileViewerLocalizedText.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/TDMSFileViewerLocalizedText.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="TRef Traverse for References.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Traverse for References.vi"/>
				<Item Name="TRef Traverse.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Traverse.vi"/>
				<Item Name="TRef TravTarget.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef TravTarget.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Type Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/Type Enum.ctl"/>
				<Item Name="UpdateBufferForMultiListBoxIfNecessary.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/UpdateBufferForMultiListBoxIfNecessary.vi"/>
				<Item Name="UpdateListBoxAfterKeyEvent.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/UpdateListBoxAfterKeyEvent.vi"/>
				<Item Name="UpdateScrollbarBeforeKeyEvent.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/UpdateScrollbarBeforeKeyEvent.vi"/>
				<Item Name="VariantType to Type Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/GetType.llb/VariantType to Type Code.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="VI Scripting - Traverse.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/traverseref.llb/VI Scripting - Traverse.lvlib"/>
				<Item Name="VISA Get USB Interrupt Data.vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Get USB Interrupt Data.vi"/>
				<Item Name="VISA Open Access Mode.ctl" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Open Access Mode.ctl"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System.Drawing" Type="Document" URL="System.Drawing">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="System.Windows.Forms" Type="Document" URL="System.Windows.Forms">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="PipBoy" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{C6A80716-5930-4A41-AF4F-67CAE9E24A68}</Property>
				<Property Name="App_INI_GUID" Type="Str">{00FA9BC5-A9B5-4237-903A-85EBA32C3D69}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{CC889AD0-9806-40F5-9398-A01708B91983}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">PipBoy</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/PipBoy</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{4A2A0485-C747-46FB-A3AC-6AF7D4D8B23D}</Property>
				<Property Name="Bld_version.build" Type="Int">18</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">PipBoy.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/PipBoy/PipBoy.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/PipBoy/data</Property>
				<Property Name="Destination[2].destName" Type="Str">needed</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/PipBoy/needed</Property>
				<Property Name="Destination[3].destName" Type="Str">icons</Property>
				<Property Name="Destination[3].path" Type="Path">../builds/NI_AB_PROJECTNAME/PipBoy/icons</Property>
				<Property Name="DestinationCount" Type="Int">4</Property>
				<Property Name="Exe_iconItemID" Type="Ref">/My Computer/icons/Fallout3_0000.ico</Property>
				<Property Name="Source[0].itemID" Type="Str">{D7F4818D-215B-45E6-B6EB-26E3C8C20F86}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/PipBoy_Main.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="Source[2].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[2].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[2].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">3</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/icons</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Container</Property>
				<Property Name="Source[3].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[3].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[3].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/needed</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[3].type" Type="Str">Container</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_fileDescription" Type="Str">PipBoy</Property>
				<Property Name="TgtF_internalName" Type="Str">PipBoy</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 </Property>
				<Property Name="TgtF_productName" Type="Str">PipBoy</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{7BF686DE-1A6B-41E9-9596-DE4BC4D17217}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">PipBoy.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
