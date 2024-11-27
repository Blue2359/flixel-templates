<?xml version="1.0" encoding="utf-8"?>
<project>
	<!-- _________________________ Application Settings _________________________ -->
		<app file="${PROJECT_NAME}" main="Main" version="0.0.1" company="${COMPANY_NAME}" />

		<app title="${PROJECT_NAME} - (DEBUG)" if="debug" />
		<app title="${PROJECT_NAME}" unless="debug" />

		<app preloader="flixel.system.FlxPreloader" />
		<set name="SWF_VERSION" value="11.8" />

		<window width="${WIDTH}" height="${HEIGHT}" resizable="true" orientation="landscape" background="#000000"
			hardware="true" />
	<!-- _____________________________ Path Settings ____________________________ -->
		<set name="BUILD_DIR" value="export/debug" if="debug" />
		<set name="BUILD_DIR" value="export/release" unless="debug" />
		<source path="source" />
		<assets path="assets" />
	<!-- _______________________________ Libraries ______________________________ -->
		<haxelib name="flixel" />
		<!--<haxelib name="flixel-addons" />-->
	<!-- ______________________________ Haxedefines _____________________________ -->
		<haxedef name="FLX_NO_DEBUG" unless="debug" />
		<haxedef name="FLX_NO_MOUSE" if="mobile" />
		<haxedef name="FLX_NO_KEYBOARD" if="mobile" />
		<haxedef name="FLX_NO_TOUCH" if="desktop" />
		<haxedef name="FLX_NO_HEALTH" /> <!-- Disables legacy health system -->

		<!--<haxedef name="FLX_NO_GAMEPAD" />--> <!-- Disables gamepad support -->
		<!--<haxedef name="FLX_NO_MOUSE_ADVANCED" />--> <!-- Disables right/middle mouse buttons -->
		<!--<haxedef name="FLX_NO_SOUND_TRAY" />--> <!--Disables flixel sound tray -->
		<!--<haxedef name="FLX_NO_SOUND_SYSTEM" />--> <!-- Disables flixel sound system -->
		<!--<haxedef name="FLX_NO_FOCUS_LOST_SCREEN" />--> <!-- Disables flixel focus lost screen -->
		<!-- <haxedef name="NAPE_RELEASE_BUILD" unless="debug" /> --> <!-- Boosts nape performance on release -->

		<!--
			Handles code completion/compilation error reporting
			See: https://haxe.org/manual/compiler-usage-reporting.html
		-->
		<haxedef name="message.reporting" value="pretty" />
</project>
