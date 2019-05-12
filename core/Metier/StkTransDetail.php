<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkTransDetail
 *
 * @ORM\Table(name="stk_trans_detail", uniqueConstraints={@ORM\UniqueConstraint(name="fk_stk_trans_detail_stk_trans_entete1_idx", columns={"trans_code"})}, indexes={@ORM\Index(name="fk_stk_trans_detail_stk_article1_idx", columns={"trans_artCode"})})
 * @ORM\Entity
 */
class StkTransDetail
{
     /**
     * @var \StkTransEntete
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkTransEntete")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="trans_code", referencedColumnName="trans_code")
     * })
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
     * @ORM\Column(name="trans_seq", type="integer", nullable=true)
     */
    private $transSeq;

    /**
     * @var float
     *
     * @ORM\Column(name="trans_qtedem", type="float", precision=10, scale=0, nullable=true)
     */
    private $transQtedem;

    /**
     * @var float
     *
     * @ORM\Column(name="trans_qteliv", type="float", precision=10, scale=0, nullable=true)
     */
    private $transQteliv;

    /**
     * @var \StkArticle
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="StkArticle")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="trans_artCode", referencedColumnName="art_code")
     * })
     */
    private $transArtcode;



    /**
     * Set transCode
     *
     * @param string $transCode
     *
     * @return StkTransDetail
     */
    public function setTransCode($transCode)
    {
        $this->transCode = $transCode;

        return $this;
    }

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
     * Set transExercice
     *
     * @param integer $transExercice
     *
     * @return StkTransDetail
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
     * Set transSeq
     *
     * @param integer $transSeq
     *
     * @return StkTransDetail
     */
    public function setTransSeq($transSeq)
    {
        $this->transSeq = $transSeq;

        return $this;
    }

    /**
     * Get transSeq
     *
     * @return integer
     */
    public function getTransSeq()
    {
        return $this->transSeq;
    }

    /**
     * Set transQtedem
     *
     * @param float $transQtedem
     *
     * @return StkTransDetail
     */
    public function setTransQtedem($transQtedem)
    {
        $this->transQtedem = $transQtedem;

        return $this;
    }

    /**
     * Get transQtedem
     *
     * @return float
     */
    public function getTransQtedem()
    {
        return $this->transQtedem;
    }

    /**
     * Set transQteliv
     *
     * @param float $transQteliv
     *
     * @return StkTransDetail
     */
    public function setTransQteliv($transQteliv)
    {
        $this->transQteliv = $transQteliv;

        return $this;
    }

    /**
     * Get transQteliv
     *
     * @return float
     */
    public function getTransQteliv()
    {
        return $this->transQteliv;
    }

    /**
     * Set transArtcode
     *
     * @param \StkArticle $transArtcode
     *
     * @return StkTransDetail
     */
    public function setTransArtcode(\StkArticle $transArtcode)
    {
        $this->transArtcode = $transArtcode;

        return $this;
    }

    /**
     * Get transArtcode
     *
     * @return \StkArticle
     */
    public function getTransArtcode()
    {
        return $this->transArtcode;
    }
}
