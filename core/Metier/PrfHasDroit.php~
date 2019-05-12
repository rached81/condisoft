<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * PrfHasDroit
 *
 * @ORM\Table(name="prf_has_droit", indexes={@ORM\Index(name="fk_PRF_has_DROIT_DROIT1_idx", columns={"idDROIT"}), @ORM\Index(name="fk_PRF_has_DROIT_PRF1_idx", columns={"idPRF"})})
 * @ORM\Entity
 */
class PrfHasDroit
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idPRF", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $idprf;

    /**
     * @var integer
     *
     * @ORM\Column(name="idDROIT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $iddroit;



    /**
     * Set idprf
     *
     * @param integer $idprf
     *
     * @return PrfHasDroit
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
     * Set iddroit
     *
     * @param integer $iddroit
     *
     * @return PrfHasDroit
     */
    public function setIddroit($iddroit)
    {
        $this->iddroit = $iddroit;

        return $this;
    }

    /**
     * Get iddroit
     *
     * @return integer
     */
    public function getIddroit()
    {
        return $this->iddroit;
    }
}
