<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Mag
 *
 * @ORM\Table(name="mag", indexes={@ORM\Index(name="fk_MAG_ETAT1_idx", columns={"ETATCOD"})})
 * @ORM\Entity
 */
class Mag
{
    /**
     * @var integer
     *
     * @ORM\Column(name="MAGCOD", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $magcod;

    /**
     * @var string
     *
     * @ORM\Column(name="MAGLIB", type="string", length=45, nullable=true)
     */
    private $maglib;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="MAGDCR", type="date", nullable=true)
     */
    private $magdcr;

    /**
     * @var integer
     *
     * @ORM\Column(name="OPECOD", type="integer", nullable=true)
     */
    private $opecod;

    /**
     * @var integer
     *
     * @ORM\Column(name="OPEEXE", type="integer", nullable=true)
     */
    private $opeexe;

    /**
     * @var integer
     *
     * @ORM\Column(name="TMAGCOD", type="integer", nullable=true)
     */
    private $tmagcod;

    /**
     * @var integer
     *
     * @ORM\Column(name="ETATCOD", type="integer", nullable=false)
     */
    private $etatcod;



    /**
     * Get magcod
     *
     * @return integer
     */
    public function getMagcod()
    {
        return $this->magcod;
    }

    /**
     * Set maglib
     *
     * @param string $maglib
     *
     * @return Mag
     */
    public function setMaglib($maglib)
    {
        $this->maglib = $maglib;

        return $this;
    }

    /**
     * Get maglib
     *
     * @return string
     */
    public function getMaglib()
    {
        return $this->maglib;
    }

    /**
     * Set magdcr
     *
     * @param \DateTime $magdcr
     *
     * @return Mag
     */
    public function setMagdcr($magdcr)
    {
        $this->magdcr = $magdcr;

        return $this;
    }

    /**
     * Get magdcr
     *
     * @return \DateTime
     */
    public function getMagdcr()
    {
        return $this->magdcr;
    }

    /**
     * Set opecod
     *
     * @param integer $opecod
     *
     * @return Mag
     */
    public function setOpecod($opecod)
    {
        $this->opecod = $opecod;

        return $this;
    }

    /**
     * Get opecod
     *
     * @return integer
     */
    public function getOpecod()
    {
        return $this->opecod;
    }

    /**
     * Set opeexe
     *
     * @param integer $opeexe
     *
     * @return Mag
     */
    public function setOpeexe($opeexe)
    {
        $this->opeexe = $opeexe;

        return $this;
    }

    /**
     * Get opeexe
     *
     * @return integer
     */
    public function getOpeexe()
    {
        return $this->opeexe;
    }

    /**
     * Set tmagcod
     *
     * @param integer $tmagcod
     *
     * @return Mag
     */
    public function setTmagcod($tmagcod)
    {
        $this->tmagcod = $tmagcod;

        return $this;
    }

    /**
     * Get tmagcod
     *
     * @return integer
     */
    public function getTmagcod()
    {
        return $this->tmagcod;
    }

    /**
     * Set etatcod
     *
     * @param integer $etatcod
     *
     * @return Mag
     */
    public function setEtatcod($etatcod)
    {
        $this->etatcod = $etatcod;

        return $this;
    }

    /**
     * Get etatcod
     *
     * @return integer
     */
    public function getEtatcod()
    {
        return $this->etatcod;
    }
}
