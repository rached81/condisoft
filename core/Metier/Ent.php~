<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * Ent
 *
 * @ORM\Table(name="ent")
 * @ORM\Entity
 */

class Ent
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idENT", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $ident;

    /**
     * @var integer
     *
     * @ORM\Column(name="ENTcod", type="integer", nullable=true)
     */
    private $entcod;

    /**
     * @var string
     *
     * @ORM\Column(name="ENTnom", type="string", length=45, nullable=true)
     */
    private $entnom;

    /**
     * @var integer
     *
     * @ORM\Column(name="SRVidsup", type="integer", nullable=true)
     */
    private $srvidsup;

    /**
     * @var integer
     *
     * @ORM\Column(name="idHERA", type="integer", nullable=true)
     */
    private $idhera;



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
     * Set entcod
     *
     * @param integer $entcod
     *
     * @return Ent
     */
    public function setEntcod($entcod)
    {
        $this->entcod = $entcod;

        return $this;
    }

    /**
     * Get entcod
     *
     * @return integer
     */
    public function getEntcod()
    {
        return $this->entcod;
    }

    /**
     * Set entnom
     *
     * @param string $entnom
     *
     * @return Ent
     */
    public function setEntnom($entnom)
    {
        $this->entnom = $entnom;

        return $this;
    }

    /**
     * Get entnom
     *
     * @return string
     */
    public function getEntnom()
    {
        return $this->entnom;
    }

    /**
     * Set srvidsup
     *
     * @param integer $srvidsup
     *
     * @return Ent
     */
    public function setSrvidsup($srvidsup)
    {
        $this->srvidsup = $srvidsup;

        return $this;
    }

    /**
     * Get srvidsup
     *
     * @return integer
     */
    public function getSrvidsup()
    {
        return $this->srvidsup;
    }

    /**
     * Set idhera
     *
     * @param integer $idhera
     *
     * @return Ent
     */
    public function setIdhera($idhera)
    {
        $this->idhera = $idhera;

        return $this;
    }

    /**
     * Get idhera
     *
     * @return integer
     */
    public function getIdhera()
    {
        return $this->idhera;
    }
}
