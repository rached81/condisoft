<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Modul
 *
 * @ORM\Table(name="modul", indexes={@ORM\Index(name="fk_MODUL_MENU1_idx", columns={"idMENU"}), @ORM\Index(name="fk_MODUL_ETAT1_idx", columns={"idETAT"})})
 * @ORM\Entity
 */
class Modul
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idMODUL", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idmodul;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULnom", type="string", length=45, nullable=true)
     */
    private $modulnom;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULpath", type="string", length=45, nullable=true)
     */
    private $modulpath;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULtask", type="string", length=45, nullable=true)
     */
    private $modultask;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULmod", type="string", length=45, nullable=true)
     */
    private $modulmod;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULmnseq", type="string", length=45, nullable=true)
     */
    private $modulmnseq;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="MODULdcr", type="date", nullable=true)
     */
    private $moduldcr;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULtype", type="string", length=45, nullable=true)
     */
    private $modultype;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULcat", type="string", length=1, nullable=false)
     */
    private $modulcat;

    /**
     * @var string
     *
     * @ORM\Column(name="MODULicon", type="string", length=100, nullable=false)
     */
    private $modulicon;

    /**
     * @var integer
     *
     * @ORM\Column(name="idMENU", type="integer", nullable=false)
     */
    private $idmenu;

    /**
     * @var integer
     *
     * @ORM\Column(name="MODULupdate", type="integer", nullable=false)
     */
    private $modulupdate;

    /**
     * @var integer
     *
     * @ORM\Column(name="idETAT", type="integer", nullable=false)
     */
    private $idetat;



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
     * Set modulnom
     *
     * @param string $modulnom
     *
     * @return Modul
     */
    public function setModulnom($modulnom)
    {
        $this->modulnom = $modulnom;

        return $this;
    }

    /**
     * Get modulnom
     *
     * @return string
     */
    public function getModulnom()
    {
        return $this->modulnom;
    }

    /**
     * Set modulpath
     *
     * @param string $modulpath
     *
     * @return Modul
     */
    public function setModulpath($modulpath)
    {
        $this->modulpath = $modulpath;

        return $this;
    }

    /**
     * Get modulpath
     *
     * @return string
     */
    public function getModulpath()
    {
        return $this->modulpath;
    }

    /**
     * Set modultask
     *
     * @param string $modultask
     *
     * @return Modul
     */
    public function setModultask($modultask)
    {
        $this->modultask = $modultask;

        return $this;
    }

    /**
     * Get modultask
     *
     * @return string
     */
    public function getModultask()
    {
        return $this->modultask;
    }

    /**
     * Set modulmod
     *
     * @param string $modulmod
     *
     * @return Modul
     */
    public function setModulmod($modulmod)
    {
        $this->modulmod = $modulmod;

        return $this;
    }

    /**
     * Get modulmod
     *
     * @return string
     */
    public function getModulmod()
    {
        return $this->modulmod;
    }

    /**
     * Set modulmnseq
     *
     * @param string $modulmnseq
     *
     * @return Modul
     */
    public function setModulmnseq($modulmnseq)
    {
        $this->modulmnseq = $modulmnseq;

        return $this;
    }

    /**
     * Get modulmnseq
     *
     * @return string
     */
    public function getModulmnseq()
    {
        return $this->modulmnseq;
    }

    /**
     * Set moduldcr
     *
     * @param \DateTime $moduldcr
     *
     * @return Modul
     */
    public function setModuldcr($moduldcr)
    {
        $this->moduldcr = $moduldcr;

        return $this;
    }

    /**
     * Get moduldcr
     *
     * @return \DateTime
     */
    public function getModuldcr()
    {
        return $this->moduldcr;
    }

    /**
     * Set modultype
     *
     * @param string $modultype
     *
     * @return Modul
     */
    public function setModultype($modultype)
    {
        $this->modultype = $modultype;

        return $this;
    }

    /**
     * Get modultype
     *
     * @return string
     */
    public function getModultype()
    {
        return $this->modultype;
    }

    /**
     * Set modulcat
     *
     * @param string $modulcat
     *
     * @return Modul
     */
    public function setModulcat($modulcat)
    {
        $this->modulcat = $modulcat;

        return $this;
    }

    /**
     * Get modulcat
     *
     * @return string
     */
    public function getModulcat()
    {
        return $this->modulcat;
    }

    /**
     * Set modulicon
     *
     * @param string $modulicon
     *
     * @return Modul
     */
    public function setModulicon($modulicon)
    {
        $this->modulicon = $modulicon;

        return $this;
    }

    /**
     * Get modulicon
     *
     * @return string
     */
    public function getModulicon()
    {
        return $this->modulicon;
    }

    /**
     * Set idmenu
     *
     * @param integer $idmenu
     *
     * @return Modul
     */
    public function setIdmenu($idmenu)
    {
        $this->idmenu = $idmenu;

        return $this;
    }

    /**
     * Get idmenu
     *
     * @return integer
     */
    public function getIdmenu()
    {
        return $this->idmenu;
    }

    /**
     * Set modulupdate
     *
     * @param integer $modulupdate
     *
     * @return Modul
     */
    public function setModulupdate($modulupdate)
    {
        $this->modulupdate = $modulupdate;

        return $this;
    }

    /**
     * Get modulupdate
     *
     * @return integer
     */
    public function getModulupdate()
    {
        return $this->modulupdate;
    }

    /**
     * Set idetat
     *
     * @param integer $idetat
     *
     * @return Modul
     */
    public function setIdetat($idetat)
    {
        $this->idetat = $idetat;

        return $this;
    }

    /**
     * Get idetat
     *
     * @return integer
     */
    public function getIdetat()
    {
        return $this->idetat;
    }
}
