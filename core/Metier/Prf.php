<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Prf
 *
 * @ORM\Table(name="prf", indexes={@ORM\Index(name="fk_PRF_ENT1_idx", columns={"idENT"}), @ORM\Index(name="fk_PRF_ETAT1_idx", columns={"PRFetat"})})
 * @ORM\Entity
 */
class Prf
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idPRF", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idprf;

    /**
     * @var string
     *
     * @ORM\Column(name="PRFnom", type="string", length=45, nullable=true)
     */
    private $prfnom;

    /**
     * @var integer
     *
     * @ORM\Column(name="PRFtype", type="integer", nullable=true)
     */
    private $prftype;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="PRFdcr", type="date", nullable=true)
     */
    private $prfdcr;

    /**
     * @var integer
     *
     * @ORM\Column(name="idENT", type="integer", nullable=false)
     */
    private $ident;

    /**
     * @var integer
     *
     * @ORM\Column(name="PRFetat", type="integer", nullable=false)
     */
    private $prfetat;



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
     * Set prfnom
     *
     * @param string $prfnom
     *
     * @return Prf
     */
    public function setPrfnom($prfnom)
    {
        $this->prfnom = $prfnom;

        return $this;
    }

    /**
     * Get prfnom
     *
     * @return string
     */
    public function getPrfnom()
    {
        return $this->prfnom;
    }

    /**
     * Set prftype
     *
     * @param integer $prftype
     *
     * @return Prf
     */
    public function setPrftype($prftype)
    {
        $this->prftype = $prftype;

        return $this;
    }

    /**
     * Get prftype
     *
     * @return integer
     */
    public function getPrftype()
    {
        return $this->prftype;
    }

    /**
     * Set prfdcr
     *
     * @param \DateTime $prfdcr
     *
     * @return Prf
     */
    public function setPrfdcr($prfdcr)
    {
        $this->prfdcr = $prfdcr;

        return $this;
    }

    /**
     * Get prfdcr
     *
     * @return \DateTime
     */
    public function getPrfdcr()
    {
        return $this->prfdcr;
    }

    /**
     * Set ident
     *
     * @param integer $ident
     *
     * @return Prf
     */
    public function setIdent($ident)
    {
        $this->ident = $ident;

        return $this;
    }

    /**
     * Get ident
     *
     * @return integer
     */
    public function getIdent()
    {
        return $this->ident;
    }

    /**
     * Set prfetat
     *
     * @param integer $prfetat
     *
     * @return Prf
     */
    public function setPrfetat($prfetat)
    {
        $this->prfetat = $prfetat;

        return $this;
    }

    /**
     * Get prfetat
     *
     * @return integer
     */
    public function getPrfetat()
    {
        return $this->prfetat;
    }
}
