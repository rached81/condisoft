<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * DroitHasModul
 *
 * @ORM\Table(name="droit_has_modul", indexes={@ORM\Index(name="fk_DROIT_has_MODUL_MODUL1_idx", columns={"idMODUL"}), @ORM\Index(name="fk_DROIT_has_MODUL_DROIT1_idx", columns={"idDROIT"})})
 * @ORM\Entity
 */


class DroitHasModul
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idDROIT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $iddroit;

    /**
     * @var integer
     *
     * @ORM\Column(name="idMODUL", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     */
    private $idmodul;



    /**
     * Set iddroit
     *
     * @param integer $iddroit
     *
     * @return DroitHasModul
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

    /**
     * Set idmodul
     *
     * @param integer $idmodul
     *
     * @return DroitHasModul
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
}
