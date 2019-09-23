<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * @ORM\Entity(repositoryClass="App\Repository\UserRepository")
 */
class User implements UserInterface
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=180, unique=true)
     */
    private $mail;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $tipi;

    /**
     * @var string The hashed password
     * @ORM\Column(type="string")
     */
    private $password;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $isim;

    /**
     * @ORM\Column(type="string", length=10, nullable=true)
     */
    private $durumu;

    /**
     * @ORM\Column(type="string", length=150, nullable=true)
     */
    private $address;

    /**
     * @ORM\Column(type="string", length=15, nullable=true)
     */
    private $city;

    /**
     * @ORM\Column(type="string", length=20, nullable=true)
     */
    private $phone;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMail(): ?string
    {
        return $this->mail;
    }

    public function setMail(string $mail): self
    {
        $this->mail = $mail;

        return $this;
    }

    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUsername(): string
    {
        return (string) $this->mail;
    }

    /**
     * @see UserInterface
     */
    public function getTipi()
    {
        //var_dump($this->tipi);


         //$tipi = explode(',',$this->tipi);   //ROLE_ADMIN,ROLE_USER
        // $tipi = $this->tipi;
        //return array_unique($tipi);
        if($this->tipi == null)
            $this->tipi = "";

       return array($this->tipi);
    }

    public function setTipi($tipi): self
    {
        if($this->tipi == null)
            $this->tipi = "";

        $this->tipi = $tipi;

        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getPassword(): string
    {
        return (string) $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = password_hash($password,PASSWORD_BCRYPT);
        return $this;
    }

    /**
     * @see UserInterface
     */
    public function getSalt()
    {
        // not needed when using the "bcrypt" algorithm in security.yaml
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }

    public function getIsim(): ?string
    {
        return $this->isim;
    }

    public function setIsim(?string $isim): self
    {
        $this->isim = $isim;

        return $this;
    }

    public function getDurumu(): ?string
    {
        return $this->durumu;
    }

    public function setDurumu(string $durumu): self
    {
        $this->durumu = $durumu;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(?string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getPhone(): ?string
    {
        return $this->phone;
    }

    public function setPhone(?string $phone): self
    {
        $this->phone = $phone;

        return $this;
    }
}
