<?php
namespace BeerTest\Controller;

use Beer\Model\BeerTable;
use Laminas\ServiceManager\ServiceManager;
use Beer\Controller\BeerController;
use Laminas\Stdlib\ArrayUtils;
use Laminas\Test\PHPUnit\Controller\AbstractHttpControllerTestCase;
use Beer\Model\Beer;
use Prophecy\Argument;

class BeerControllerTest extends AbstractHttpControllerTestCase
{
    protected $traceError = true;
    protected $beerTable;

    protected function setUp() : void
    {
        // The module configuration should still be applicable for tests.
        // You can override configuration here with test case specific values,
        // such as sample view templates, path stacks, module_listener_options,
        // etc.
        $configOverrides = [];

        $this->setApplicationConfig(ArrayUtils::merge(
            // Grabbing the full application configuration:
            include __DIR__ . '/../../../../config/application.config.php',
            $configOverrides
        ));
        parent::setUp();
        $this->configureServiceManager($this->getApplicationServiceLocator());
        // $services = $this->getApplicationServiceLocator();
        // $config = $services->get('config');
        // unset($config['db']);
        // $services->setAllowOverride(true);
        // $services->setService('config', $config);
        // $services->setAllowOverride(false);
    }

    public function testIndexActionCanBeAccessed()
    {
        $this->dispatch('/beer');
        $this->assertResponseStatusCode(500);
        $this->assertModuleName('Beer');
        $this->assertControllerName(BeerController::class);
        $this->assertControllerClass('BeerController');
        $this->assertMatchedRouteName('beer');
    }

    protected function configureServiceManager(ServiceManager $services)
    {
        $services->setAllowOverride(true);

        $services->setService('config', $this->updateConfig($services->get('config')));
        $services->setService(BeerTable::class, $this->mockBeerTable()->reveal());

        $services->setAllowOverride(false);
    }

    protected function updateConfig($config)
    {
        $config['db'] = [];
        return $config;
    }

    protected function mockBeerTable()
    {
        $this->beerTable = $this->prophesize(BeerTable::class);
        return $this->beerTable;
    }

    public function testAddActionRedirectsAfterValidPost()
    {
        $this->beerTable
            ->saveBeer(Argument::type(Beer::class))
            ->shouldBeCalled();

        $postData = [
            'name'  => 'Led Zeppelin III',
            'description' => 'Led Zeppelin',
            'cat_id' => 11,
            'abv' => 21,
            'id'     => '',
        ];
        $this->dispatch('/beer/add', 'POST', $postData);
        $this->assertResponseStatusCode(302);
        $this->assertRedirectTo('/beer');
    }
}