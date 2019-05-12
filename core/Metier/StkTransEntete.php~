<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkTransEntete
 *
 * @ORM\Table(name="stk_trans_entete", indexes={@ORM\Index(name="fk_stk_trans_entete_stk_etat1_idx", columns={"trans_etatCode"})})
 * @ORM\Entity
 */
class StkTransEntete
{
    /**
     * @var string
     *
     * @ORM\Column(name="trans_code", type="string", length=10, nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $transCode;

    /**
     * @var integer
     *
     * @ORM\Column(name="trans_exercice", type="integer", nullable=true)
     */
    private $transExercice;

    /**
     * @var integer
     *
     * @ORM\Column(name="trans_magdem", type="integer", nullable=true)
     */
    private $transMagdem;

    /**
     * @var integer
     *
     * @ORM\Column(name="trans_magliv", type="integer", nullable=true)
     */
    private $transMagliv;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="stk_trans_datedem", type="datetime", nullable=true)
     */
    private $stkTransDatedem;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="stk_trans_dateliv", type="datetime", nullable=true)
     */
    private $stkTransDateliv;

    /**
     * @var string
     *
     * @ORM\Column(name="trans_obs", type="text", length=65535, nullable=true)
     */
    private $transObs;

    /**
     * @var \StkEtat
     *
     * @ORM\ManyToOne(targetEntity="StkEtat")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="trans_etatCode", referencedColumnName="etat_code")
     * })
     */
    private $transEtatcode;



    /**
     * Get transCode
     *
     * @return string
     */
    public function getTransCode()
    {
        return $this->transCode;
    }
    
       /**
     * Set transCode
     *
     * @param integer $transCode
     *
     * @return StkTransEntete
     */
    public function setTransCode($transCode)
    {
        $this->transCode = $transCode;

        return $this;
    }

    /**
     * Set transExercice
     *
     * @param integer $transExercice
     *
     * @return StkTransEntete
     */
    public function setTransExercice($transExercice)
    {
        $this->transExercice = $transExercice;

        return $this;
    }

    /**
     * Get transExercice
     *
     * @return integer
     */
    public function getTransExercice()
    {
        return $this->transExercice;
    }

    /**
     * Set transMagdem
     *
     * @param integer $transMagdem
     *
     * @return StkTransEntete
     */
    public function setTransMagdem($transMagdem)
    {
        $this->transMagdem = $transMagdem;

        return $this;
    }

    /**
     * Get transMagdem
     *
     * @return integer
     */
    public function getTransMagdem()
    {
        return $this->transMagdem;
    }

    /**
     * Set transMagliv
     *
     * @param integer $transMagliv
     *
     * @return StkTransEntete
     */
    public function setTransMagliv($transMagliv)
    {
        $this->transMagliv = $transMagliv;

        return $this;
    }

    /**
     * Get transMagliv
     *
     * @return integer
     */
    public function getTransMagliv()
    {
        return $this->transMagliv;
    }

    /**
     * Set stkTransDatedem
     *
     * @param \DateTime $stkTransDatedem
     *
     * @return StkTransEntete
     */
    public function setStkTransDatedem($stkTransDatedem)
    {
        $this->stkTransDatedem = $stkTransDatedem;

        return $this;
    }

    /**
     * Get stkTransDatedem
     *
     * @return \DateTime
     */
    public function getStkTransDatedem()
    {
        return $this->stkTransDatedem;
    }

    /**
     * Set stkTransDateliv
     *
     * @param \DateTime $stkTransDateliv
     *
     * @return StkTransEntete
     */
    public function setStkTransDateliv($stkTransDateliv)
    {
        $this->stkTransDateliv = $stkTransDateliv;

        return $this;
    }

    /**
     * Get stkTransDateliv
     *
     * @return \DateTime
     */
    public function getStkTransDateliv()
    {
        return $this->stkTransDateliv;
    }

    /**
     * Set transObs
     *
     * @param string $transObs
     *
     * @return StkTransEntete
     */
    public function setTransObs($transObs)
    {
        $this->transObs = $transObs;

        return $this;
    }

    /**
     * Get transObs
     *
     * @return string
     */
    public function getTransObs()
    {
        return $this->transObs;
    }

    /**
     * Set transEtatcode
     *
     * @param \StkEtat $transEtatcode
     *
     * @return StkTransEntete
     */
    public function setTransEtatcode(\StkEtat $transEtatcode = null)
    {
        $this->transEtatcode = $transEtatcode;

        return $this;
    }

    /**
     * Get transEtatcode
     *
     * @return \StkEtat
     */
    public function getTransEtatcode()
    {
        return $this->transEtatcode;
    }
}
