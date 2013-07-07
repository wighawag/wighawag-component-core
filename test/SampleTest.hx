package;

import wighawag.game.logic.AISystem;
import wighawag.game.logic.AIComponent;
import wighawag.core.StateComponent;
import wighawag.core.PositionComponent;
import wighawag.core.PlacementComponent;
import wighawag.core.AssetComponent;
import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;

/**
* Auto generated ExampleTest for MassiveUnit. 
* This is an example test class can be used as a template for writing normal and async tests 
* Refer to munit command line tool for more information (haxelib run munit)
*/
class SampleTest 
{
	private var timer:Timer;
	
	public function new() 
	{
		new AssetComponent(Xml.parse('<AssetComponent id="jumpjones" scale="true" />'));
        new PlacementComponent(0,0,1,1);
        new PositionComponent(0,0);
        new StateComponent("");

        new AISystem();
	}
	
	@BeforeClass
	public function beforeClass():Void
	{
	}
	
	@AfterClass
	public function afterClass():Void
	{
	}
	
	@Before
	public function setup():Void
	{
	}
	
	@After
	public function tearDown():Void
	{
	}
	
	
	@Test
	public function testExample():Void
	{
		Assert.isTrue(true);
	}
	
	@AsyncTest
	public function testAsyncExample(factory:AsyncFactory):Void
	{
		var handler:Dynamic = factory.createHandler(this, onTestAsyncExampleComplete, 300);
		timer = Timer.delay(handler, 200);
	}
	
	private function onTestAsyncExampleComplete():Void
	{
		Assert.isFalse(false);
	}
	
	
	/**
	* test that only runs when compiled with the -D testDebug flag
	*/
	@TestDebug
	public function testExampleThatOnlyRunsWithDebugFlag():Void
	{
		Assert.isTrue(true);
	}

}
