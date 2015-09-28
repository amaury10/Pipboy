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
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Clear-68016.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/Clear-68016.vi"/>
				<Item Name="ClearError.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/ClearError.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="configureNumberOfValues.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/tdmsutil.llb/configureNumberOfValues.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
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
