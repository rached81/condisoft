<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkDemApproEnt
 *
 * @ORM\Table(name="stk_dem_appro_ent", indexes={@ORM\Index(name="fk_demande_approvisionnement_entete_stk_etat1_idx", columns={"demapro_etatCode"})})
 * @ORM\Entity
 */
class StkDemApproEnt
{
    /**
     * @var string
     *
     * @ORM\Column(name="demapro_code", type="string", length=10, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $demaproCode;

    /**
     * @var integer
     *
     * @ORM\Column(name="demapro_exercice", type="integer", nullable=true)
     */
    private $demaproExercice;

    /**
     * @var integer
     *
     * @ORM\Column(name="demapro_magCode", type="integer", nullable=true)
     */
    private $demaproMagcode;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="demapro_date", type="date", nullable=true)
     */
    private $demaproDate;

    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="demapro_etatCode", referencedColumnName="etat_code")
     * })
     */
    private $demaproEtatcode;



    /**
     * Get demaproCode
     *
     * @return string
     */
    public function getDemaproCode()
    {
        return $this->demaproCode;
    }

    /**
     * Set demaproExercice
     *
     * @param integer $demaproExercice
     *
     * @return StkDemApproEnt
     */
    public function setDemaproExercice($demaproExercice)
    {
        $this->demaproExercice = $demaproExercice;

        return $this;
    }

    /**
     * Get demaproExercice
     *
     * @return integer
     */
    public function getDemaproExercice()
    {
        return $this->demaproExercice;
    }
    
    
    /**
     * Set demaproCode
     *
     * @param integer $demaproCode
     *
     * @return StkDemApproEnt
     */
    public function setDemaproCode($demaproCode)
    {
        $this->demaproCode = $demaproCode;

        return $this;
    }

    /**
     * Set demaproMagcode
     *
     * @param integer $demaproMagcode
     *
     * @return StkDemApproEnt
     */
    public function setDemaproMagcode($demaproMagcode)
    {
        $this->demaproMagcode = $demaproMagcode;

        return $this;
    }

    /**
     * Get demaproMagcode
     *
     * @return integer
     */
    public function getDemaproMagcode()
    {
        return $this->demaproMagcode;
    }

    /**
     * Set demaproDate
     *
     * @param \DateTime $demaproDate
     *
     * @return StkDemApproEnt
     */
    public function setDemaproDate($demaproDate)
    {
        $this->demaproDate = $demaproDate;

        return $this;
    }

    /**
     * Get demaproDate
     *
     * @return \DateTime
     */
    public function getDemaproDate()
    {
        return $this->demaproDate;
    }

    /**
     * Set demaproEtatcode
     *
     * @param \StkEtat $demaproEtatcode
     *
     * @return StkDemApproEnt
     */
    public function setDemaproEtatcode(\StkEtat $demaproEtatcode = null)
    {
        $this->demaproEtatcode = $demaproEtatcode;

        return $this;
    }

    /**
     * Get demaproEtatcode
     *
     * @return \StkEtat
     */
    public function getDemaproEtatcode()
    {
        return $this->demaproEtatcode;
    }
}
