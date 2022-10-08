import React from 'react'
import {
    MDBCard,
    MDBCardBody,
    MDBCardTitle,
    MDBCardText,
    MDBCardImage,
    MDBBtn
  } from 'mdb-react-ui-kit';
function GameDetails({currentGame}) {
// const nav = useNavigate()
//     useEffect(() => {
//      if (currentGame === null) {
//       nav("/login")
//      }

//     },[nav, currentGame])

console.log(currentGame)

  return (

    <div >
   <MDBCard >
      <MDBCardImage src={currentGame.img} position='top' alt='video game' />
      <MDBCardBody>
        <MDBCardTitle>{currentGame.title}</MDBCardTitle>
        <MDBCardText>
         {currentGame.platform} | {currentGame.publisher}
        </MDBCardText>
        {currentGame.game_reviews.map(review =>{
          return (<div>
            <h1>{review.user.username}</h1>
            <MDBCardText>{review.title}</MDBCardText>
            <MDBCardText>{review.desc}</MDBCardText>
            
          </div>)})}
    <div>{currentGame.title}</div>
    </MDBCardBody>
    </MDBCard>
    </div>
  )
}

export default GameDetails