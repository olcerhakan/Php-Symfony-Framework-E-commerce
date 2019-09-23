<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity(repositoryClass="App\Repository\UsersRepository")
 */
class Users
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=20)
     */

    private $isim;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $mail;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $sifre;

    /**
     * @ORM\Column(type="string", length=10)
     */
    private $tipi;

    /**
     * @ORM\Column(type="string", length=10)
     */
    private $durumu;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdd_at;

    /**
     * @ORM\Column(type="datetime")
     */
    private $updatedd_at;

    public function getId(): ?int
    {
        return $this->id;
    }


    public function getIsim(): ?string
    {
        return $this->isim;
    }

    public function setIsim(string $isim): self
    {
        $this->isim = $isim;

        return $this;
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

    public function getSifre(): ?string
    {
        return $this->sifre;
    }

    public function setSifre(string $sifre): self
    {
        $this->sifre = $sifre;

        return $this;
    }

    public function getTipi(): ?string
    {
        return $this->tipi;
    }

    public function setTipi(string $tipi): self
    {
        $this->tipi = $tipi;

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

    public function getCreateddAt(): ?\DateTimeInterface
    {
        return $this->createdd_at;
    }

    public function setCreateddAt(\DateTimeInterface $createdd_at): self
    {
        $this->createdd_at = $createdd_at;

        return $this;
    }

    public function getUpdateddAt(): ?\DateTimeInterface
    {
        return $this->updatedd_at;
    }

    public function setUpdateddAt(\DateTimeInterface $updatedd_at): self
    {
        $this->updatedd_at = $updatedd_at;

        return $this;
    }
}
