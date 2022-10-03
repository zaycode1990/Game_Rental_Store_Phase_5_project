import React from 'react'
import {
  MDBCard,
  MDBCardBody,
  MDBCardTitle,
  MDBCardText,
  MDBCardImage,
  MDBBtn
} from 'mdb-react-ui-kit';
function Games({games}) {

  
  
const gamesImage = games.map( game => 
  <div>
   <MDBCard key={game.id}>
      <MDBCardImage src={game.image_url} position='top' alt='...' width={400} height={400}/>
      <MDBCardBody>
        <MDBCardTitle>{game.title}</MDBCardTitle>
        <MDBCardText>
         {game.platform} | {game.publisher}
        </MDBCardText>
        <MDBBtn href='#'>Add to cart</MDBBtn>
      </MDBCardBody>
    </MDBCard>
    </div>
  
  );
  
  


  return (
   <div className='flexgames'>
    {gamesImage}
    </div>
  )
}

export default Games