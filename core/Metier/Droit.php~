<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Droit
 *
 * @ORM\Table(name="droit", indexes={@ORM\Index(name="fk_DROIT_GRBDROIT1_idx", columns={"idGRBDROIT"})})
 * @ORM\Entity
 */


class Droit
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idDROIT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $iddroit;

    /**
     * @var string
     *
     * @ORM\Column(name="DROITnom", type="string", length=45, nullable=true)
     */
    private $droitnom;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DROITdcr", type="date", nullable=true)
     */
    private $droitdcr;

    /**
     * @var string
     *
     * @ORM\Column(name="DROITmark", type="string", length=45, nullable=true)
     */
    private $droitmark;

    /**
     * @var integer
     *
     * @ORM\Column(name="idGRBDROIT", type="integer", nullable=false)
     */
    private $idgrbdroit;



    /**
     * Get iddroit
     *
     * @return integer
     */
    public function getIddroit()
    {
        return $this->iddroit;
    }

    /**
     * Set droitnom
     *
     * @param string $droitnom
     *
     * @return Droit
     */
    public function setDroitnom($droitnom)
    {
        $this->droitnom = $droitnom;

        return $this;
    }

    /**
     * Get droitnom
     *
     * @return string
     */
    public function getDroitnom()
    {
        return $this->droitnom;
    }

    /**
     * Set droitdcr
     *
     * @param \DateTime $droitdcr
     *
     * @return Droit
     */
    public function setDroitdcr($droitdcr)
    {
        $this->droitdcr = $droitdcr;

        return $this;
    }

    /**
     * Get droitdcr
     *
     * @return \DateTime
     */
    public function getDroitdcr()
    {
        return $this->droitdcr;
    }

    /**
     * Set droitmark
     *
     * @param string $droitmark
     *
     * @return Droit
     */
    public function setDroitmark($droitmark)
    {
        $this->droitmark = $droitmark;

        return $this;
    }

    /**
     * Get droitmark
     *
     * @return string
     */
    public function getDroitmark()
    {
        return $this->droitmark;
    }

    /**
     * Set idgrbdroit
     *
     * @param integer $idgrbdroit
     *
     * @return Droit
     */
    public function setIdgrbdroit($idgrbdroit)
    {
        $this->idgrbdroit = $idgrbdroit;

        return $this;
    }

    /**
     * Get idgrbdroit
     *
     * @return integer
     */
    public function getIdgrbdroit()
    {
        return $this->idgrbdroit;
    }
}
