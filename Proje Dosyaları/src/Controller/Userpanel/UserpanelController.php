<?php

namespace App\Controller\Userpanel;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/userpanel")
 */
class UserpanelController extends AbstractController
{
    /**
     * @Route("/", name="userpanel")
     */
    public function index()
    {
        return $this->render('userpanel/show.html.twig');
    }

    /**
     * @Route("/edit", name="userpanel_edit", methods="GET|POST")
     */
    public function edit(Request $request): Response
    {
        $userssession= $this->getUser();  //Calling Login User Data

        $user = $this->getDoctrine()
            ->getRepository(User::class)
            ->find($userssession->getid());



        if($request->isMethod('POST'))  //her hangi form kullanmıyoruz form submit demedik
        {   $submittedToken = $request->request->get('token');

            if($this->isCsrfTokenValid('user-form', $submittedToken)) {

                $user->setIsim($request->request->get('isim'));
                $user->setPassword($request->request->get('password'));
                $user->setAddress($request->request->get('address'));        //Bunları üstteki $user yazan yerdeki gibi eriştiğimiz için sağlıyoruz
                $user->setCity($request->request->get('city'));
                $user->setPhone($request->request->get('phone'));

                $this->getDoctrine()->getManager()->flush();

                $this->addFlash('success', "Üye Bilgisi Başarıyla Güncellendi");

                return $this->redirectToRoute('userpanel_show');
            }
        }
        return $this->render('userpanel/edit.html.twig', ['user' =>$user ]);
    }


    /**
     * @Route("/show", name="userpanel_show", methods="GET")
     */
    public function show()
    {
        return $this->render('userpanel/show.html.twig');
    }


}
