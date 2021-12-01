<?php
namespace Beer\Controller;

use Beer\Form\BeerForm;
use Beer\Model\Beer;
use Beer\Model\BeerTable;
use Laminas\Mvc\Controller\AbstractActionController;
use Laminas\View\Model\ViewModel;

class BeerController extends AbstractActionController
{
    private $table;
    public function __construct(BeerTable $table)
    {
        $this->table = $table;
    }
    public function indexAction()
    {

        return new ViewModel(['beers' => $this->table->fetchAll()]);
    }
    public function addAction()
    {
        $form = new BeerForm();
        $form->get('submit')->setValue('Add');

        $request = $this->getRequest();

        if (! $request->isPost()) {
            return ['form' => $form];
        }

        $beer = new Beer();
        $form->setInputFilter($beer->getInputFilter());
        $form->setData($request->getPost());

        if (! $form->isValid()) {
            return ['form' => $form];
        }

        $beer->exchangeArray($form->getData());
        $this->table->saveBeer($beer);
        return $this->redirect()->toRoute('beer');
    }
    public function editAction()
    {
        $id = (int) $this->params()->fromRoute('id', 0);

        if (0 === $id) {
            return $this->redirect()->toRoute('beer', ['action' => 'add']);
        }

        // Retrieve the Beer with the specified id. Doing so raises
        // an exception if the Beer is not found, which should result
        // in redirecting to the landing page.
        try {
            $beer = $this->table->getBeer($id);
        } catch (\Exception $e) {
            return $this->redirect()->toRoute('beer', ['action' => 'index']);
        }

        $form = new BeerForm();
        $form->bind($beer);
        $form->get('submit')->setAttribute('value', 'Edit');

        $request = $this->getRequest();
        $viewData = ['id' => $id, 'form' => $form];

        if (! $request->isPost()) {
            return $viewData;
        }

        $form->setInputFilter($beer->getInputFilter());
        $form->setData($request->getPost());

        if (! $form->isValid()) {
            return $viewData;
        }

        $this->table->saveBeer($beer);

        // Redirect to Beer list
        return $this->redirect()->toRoute('beer', ['action' => 'index']);
    }

    public function deleteAction()
    {
        $id = (int) $this->params()->fromRoute('id', 0);
        if (!$id) {
            return $this->redirect()->toRoute('Beer');
        }

        $request = $this->getRequest();
        if ($request->isPost()) {
            $del = $request->getPost('del', 'No');

            if ($del == 'Yes') {
                $id = (int) $request->getPost('id');
                $this->table->deleteBeer($id);
            }

            // Redirect to list of Beers
            return $this->redirect()->toRoute('beer');
        }

        return [
            'id'    => $id,
            'beer' => $this->table->getBeer($id),
        ];
    }
}
