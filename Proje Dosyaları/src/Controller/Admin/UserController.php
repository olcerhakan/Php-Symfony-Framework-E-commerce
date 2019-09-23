<?php

namespace App\Controller\Admin;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/admin/user")
 */
class UserController extends AbstractController
{
    /**
     * @Route("/", name="admin_user", methods="GET")
     */
    public function index(UserRepository $userRepository)
    {
        $users = $this->getDoctrine()
            ->getRepository(User::class)
            ->findAll();
        return $this->render('admin/user/index.html.twig', [
            'users' =>  $users,
        ]);
    }

    /**
     * @Route("/new", name="admin_user_new", methods="GET|POST")
     */
    public function new(Request $request):Response
    {
        $user= new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if($form->isSubmitted() ) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();
            return $this->redirectToRoute('admin_user');
        }

        return $this->render('admin/user/create_form.html.twig',[
            'form' => $form->createView(),

        ]);
    }

    /**
     * @Route("/edit/{id}", name="admin_user_edit", methods="GET|POST")
     */
    public function edit(Request $request, User $users):Response
    {
        $form = $this->createForm(UserType::class, $users);  //formu aldık
        $form->handleRequest($request);  //veritabanıyla eşitledik

        if($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();    //veritabanına kaydetme
            return $this->redirectToRoute('admin_user');
        }

        return $this->render('admin/user/edit_form.html.twig', [
            'user'=>$users,
            'form' => $form->createView(),

        ]);
    }
    /**
     * @Route("/delete/{id}", name="admin_user_delete")
     */
    public function delete(User $users)
    {
        $em = $this->getDoctrine()->getManager();
        $em->remove($users);
        $em->flush();
        return $this->redirectToRoute('admin_user');
    }


    /**
     * @Route("/admin/user/create", name="admin_user_create", methods="GET|POST")

     */
   // public function create(Request $request):Response
   // {
    //    $user = new User();
     //   $form = $this->createForm(UserType::class, $user);
   //     $form->handleRequest($request);

    //    if ($form->isSubmitted()) {
   //         $em = $this->getDoctrine()->getManager();
  //          $em->persist($user);
  //          $em->flush();
   //         return $this->redirectToRoute('admin_user');

  //      }


  //      return $this->render('admin/user/create_form.html.twig', [

   //         'form' => $form->createView(),

   //     ]);


   // }

}
