<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Oper
 *
 * @ORM\Table(name="oper")
 * @ORM\Entity
 */
class Oper
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idOPER", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idoper;

    /**
     * @var integer
     *
     * @ORM\Column(name="idMODUL", type="integer", nullable=false)
     */
    private $idmodul;

    /**
     * @var string
     *
     * @ORM\Column(name="actionOPER", type="string", length=100, nullable=false)
     */
    private $actionoper;

    /**
     * @var string
     *
     * @ORM\Column(name="descriptOPER", type="string", length=150, nullable=false)
     */
    private $descriptoper;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateOPER", type="datetime", nullable=false)
     */
    private $dateoper;

    /**
     * @var string
     *
     * @ORM\Column(name="catOPER", type="string", length=1, nullable=false)
     */
    private $catoper;

    /**
     * @var integer
     *
     * @ORM\Column(name="idPRF", type="integer", nullable=false)
     */
    private $idprf;

    /**
     * @var integer
     *
     * @ORM\Column(name="IDUTIL", type="integer", nullable=false)
     */
    private $idutil;

    /**
     * @var string
     *
     * @ORM\Column(name="UTINOM", type="string", length=50, nullable=false)
     */
    private $utinom;

    /**
     * @var string
     *
     * @ORM\Column(name="UTIPNOM", type="string", length=50, nullable=false)
     */
    private $utipnom;

    /**
     * @var string
     *
     * @ORM\Column(name="paramOPER", type="text", length=65535, nullable=false)
     */
    private $paramoper;

    /**
     * @var string
     *
     * @ORM\Column(name="ipOPER", type="string", length=20, nullable=false)
     */
    private $ipoper;



    /**
     * Get idoper
     *
     * @return integer
     */
    public function getIdoper()
    {
        return $this->idoper;
    }

    /**
     * Set idmodul
     *
     * @param integer $idmodul
     *
     * @return Oper
     */
    public function setIdmodul($idmodul)
    {
        $this->idmodul = $idmodul;

        return $this;
    }

    /**
     * Get idmodul
     *
     * @return integer
     */
    public function getIdmodul()
    {
        return $this->idmodul;
    }

    /**
     * Set actionoper
     *
     * @param string $actionoper
     *
     * @return Oper
     */
    public function setActionoper($actionoper)
    {
        $this->actionoper = $actionoper;

        return $this;
    }

    /**
     * Get actionoper
     *
     * @return string
     */
    public function getActionoper()
    {
        return $this->actionoper;
    }

    /**
     * Set descriptoper
     *
     * @param string $descriptoper
     *
     * @return Oper
     */
    public function setDescriptoper($descriptoper)
    {
        $this->descriptoper = $descriptoper;

        return $this;
    }

    /**
     * Get descriptoper
     *
     * @return string
     */
    public function getDescriptoper()
    {
        return $this->descriptoper;
    }

    /**
     * Set dateoper
     *
     * @param \DateTime $dateoper
     *
     * @return Oper
     */
    public function setDateoper($dateoper)
    {
        $this->dateoper = $dateoper;

        return $this;
    }

    /**
     * Get dateoper
     *
     * @return \DateTime
     */
    public function getDateoper()
    {
        return $this->dateoper;
    }

    /**
     * Set catoper
     *
     * @param string $catoper
     *
     * @return Oper
     */
    public function setCatoper($catoper)
    {
        $this->catoper = $catoper;

        return $this;
    }

    /**
     * Get catoper
     *
     * @return string
     */
    public function getCatoper()
    {
        return $this->catoper;
    }

    /**
     * Set idprf
     *
     * @param integer $idprf
     *
     * @return Oper
     */
    public function setIdprf($idprf)
    {
        $this->idprf = $idprf;

        return $this;
    }

    /**
     * Get idprf
     *
     * @return integer
     */
    public function getIdprf()
    {
        return $this->idprf;
    }

    /**
     * Set idutil
     *
     * @param integer $idutil
     *
     * @return Oper
     */
    public function setIdutil($idutil)
    {
        $this->idutil = $idutil;

        return $this;
    }

    /**
     * Get idutil
     *
     * @return integer
     */
    public function getIdutil()
    {
        return $this->idutil;
    }

    /**
     * Set utinom
     *
     * @param string $utinom
     *
     * @return Oper
     */
    public function setUtinom($utinom)
    {
        $this->utinom = $utinom;

        return $this;
    }

    /**
     * Get utinom
     *
     * @return string
     */
    public function getUtinom()
    {
        return $this->utinom;
    }

    /**
     * Set utipnom
     *
     * @param string $utipnom
     *
     * @return Oper
     */
    public function setUtipnom($utipnom)
    {
        $this->utipnom = $utipnom;

        return $this;
    }

    /**
     * Get utipnom
     *
     * @return string
     */
    public function getUtipnom()
    {
        return $this->utipnom;
    }

    /**
     * Set paramoper
     *
     * @param string $paramoper
     *
     * @return Oper
     */
    public function setParamoper($paramoper)
    {
        $this->paramoper = $paramoper;

        return $this;
    }

    /**
     * Get paramoper
     *
     * @return string
     */
    public function getParamoper()
    {
        return $this->paramoper;
    }

    /**
     * Set ipoper
     *
     * @param string $ipoper
     *
     * @return Oper
     */
    public function setIpoper($ipoper)
    {
        $this->ipoper = $ipoper;

        return $this;
    }

    /**
     * Get ipoper
     *
     * @return string
     */
    public function getIpoper()
    {
        return $this->ipoper;
    }
}
