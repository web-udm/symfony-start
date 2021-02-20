<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ConferenceController extends AbstractController
{
    /**
     * @Route("/", name="homepage")
     */
    public function index(): Response
    {
        /*return $this->render('conference/index.html.twig', [
            'controller_name' => 'ConferenceController',
        ]);*/

        return new Response("<img src='img/website-under-construction-image-6.gif'>");
    }

    /**
     * @Route("/hello", name="hello")
     */
    public function hello(Request $request): Response
    {
        $name = $request->query->get('name');

        return new Response("Hello, $name");
    }
}
