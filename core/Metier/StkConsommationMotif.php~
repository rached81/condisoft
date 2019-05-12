<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * StkConsommationMotif
 *
 * @ORM\Table(name="stk_consommation_motif")
 * @ORM\Entity
 */
class StkConsommationMotif
{
    
     /**
     * @var integer
     *
     * @ORM\Column(name="consmot_code", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $consmotCode;

    /**
     * @var string
     *
     * @ORM\Column(name="consmot_lib", type="string", length=150, nullable=true)
     */
    private $consmotLib;
    
    
    

    /**
     * Get consmotCode
     *
     * @return integer
     */
    public function getConsmotCode()
    {
        return $this->consmotCode;
    }

    /**
     * Set consmotLib
     *
     * @param string $consmotLib
     *
     * @return StkConsommationMotif
     */
    public function setConsmotLib($consmotLib)
    {
        $this->consmotLib = $consmotLib;

        return $this;
    }

    /**
     * Get consmotLib
     *
     * @return string
     */
    public function getConsmotLib()
    {
        return $this->consmotLib;
    }
}
