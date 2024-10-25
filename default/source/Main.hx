package;

class Main extends openfl.display.Sprite
{
	/**
	 * Constant global literal storing
	 * game setup config values.
	 */
	public static final setup = {
		dimensions: [0, 0], // Game dimensions in pixels; ([0, 0] to use project defaults).
		initState: states.PlayState, // Startup state for the game; (HaxeFlixel splash first, if `splash` is true).
		frames: 120, // The default framerate the game should be running at.
		splash: false // Whether to fire up the HaxeFlixel splash screen on start-up.
	};

	public function new()
	{
		super();
		
		FlxSprite.defaultAntialiasing = true;
		addChild(new flixel.FlxGame(
			setup.dimensions[0], setup.dimensions[1], setup.initState,
			setup.frames, setup.frames, !setup.splash
		));
		FlxG.game.focusLostFramerate = 30;
	}
}
