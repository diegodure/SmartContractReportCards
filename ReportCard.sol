pragma solidity >=0.4.22 <0.7.0;

contract ReportCard{
    
    address owner;
    
    event Status(string msg, address user);
    
    struct Actas{
        uint numero;
        string codigo;
        string carrera;
        string materia;
        string curso;
        string periodo;
        string notas;
    }
    
    mapping(uint => Actas) Act;
    
    constructor() public{
        owner = msg.sender;
        emit Status('Se ha creado el contrato exitosamente', owner);
        
    }
    
    function setActa(uint _numero, string memory _codigo, string memory _carrera, string memory _materia
    , string memory _curso, string memory _periodo, string memory _notas)public onlyOwner{
        Act[_numero] = Actas({
            numero: _numero,
            codigo: _codigo,
            carrera: _carrera,
            materia: _materia,
            curso: _curso,
            periodo: _periodo,
            notas: _notas
        });
        emit Status('Se ha registrado la acta de calificaciones', msg.sender);
    }
    
    function getActa(uint _numero)public onlyOwner view returns(uint, string memory, string memory, string memory
    , string memory, string memory, string memory){
        
        return (Act[_numero].numero, Act[_numero].codigo, Act[_numero].carrera, Act[_numero].materia, Act[_numero].curso,
        Act[_numero].periodo, Act[_numero].notas);
        
    }
    
    
     modifier onlyOwner{
        if(msg.sender != owner){
            revert();
        }else{
            _;
        }
    }
}