<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="LaunchCC.vi" Type="VI" URL="../LaunchCC.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="QuickDrop Parse Plugin Variant.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/QuickDropSupport/QuickDrop Parse Plugin Variant.vi"/>
				<Item Name="QuickDrop Plugin Data ver1.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/QuickDropSupport/QuickDrop Plugin Data ver1.ctl"/>
				<Item Name="TRef Get All FP References.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/traverseref.llb/TRef Get All FP References.vi"/>
			</Item>
			<Item Name="Clone Control.vi" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/plugins/Clone Control.vi"/>
			<Item Name="QuickDrop Plugin Template.vit" Type="VI" URL="/&lt;resource&gt;/dialog/QuickDrop/QuickDrop Plugin Template.vit"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="LaunchCC" Type="EXE">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{1E39C2DA-2F9D-4F26-AF37-751AC2B9A445}</Property>
				<Property Name="App_INI_GUID" Type="Str">{43C89357-0FED-4F77-848E-82E1E0604296}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_winsec.description" Type="Str">http://www.SAPHIR.com</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B3AE6777-B984-41DF-B81F-50251B88EC3D}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">LaunchCC</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/LaunchCC</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{012B804C-507C-46D8-8CC4-BCFDF5849427}</Property>
				<Property Name="Bld_version.build" Type="Int">37</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">LaunchCC.exe</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/LaunchCC/LaunchCC.exe</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/LaunchCC/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{7EF96D04-2D0E-40C1-B80F-9414BF84F96F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/LaunchCC.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">VI</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">SAPHIR</Property>
				<Property Name="TgtF_fileDescription" Type="Str">LaunchCC</Property>
				<Property Name="TgtF_internalName" Type="Str">LaunchCC</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2015 SAPHIR</Property>
				<Property Name="TgtF_productName" Type="Str">LaunchCC</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{1561B84B-3988-43E4-AC4A-D4240595B298}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LaunchCC.exe</Property>
			</Item>
		</Item>
	</Item>
</Project>
