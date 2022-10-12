import React, { useContext } from 'react'

import {
  MDBBtn,
  MDBCard,
  MDBCardBody,
  MDBCardImage,
  MDBCardText,
  MDBCol,
  MDBContainer,
  MDBIcon,
  MDBRow,
  MDBTypography,
} from "mdb-react-ui-kit";
import { UserContext } from '../UserContext'



function Cart({ setGamesInCart, gamesInCart, handleDeleteCartGame, thankYouMessage, setThankYouMessage }) {

  const { user } = useContext(UserContext)


  const gameID = gamesInCart.map(game => game.id)


  function handleCartCheckout(e) {
    e.preventDefault();
    fetch("/user_games", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ user_id: user.id, game_id: gameID }),
    })
    debugger
    setGamesInCart([])
    setThankYouMessage("Checkout Successful. Thanks for Renting!")
    setTimeout(() => {
      setThankYouMessage("")
    }, 2000)
  }




  const cartItems = gamesInCart.map(game => {
    return (
      <div>
        <MDBRow key={game.id} className="mb-4 d-flex justify-content-between align-items-center">
          <MDBCol md="2" lg="2" xl="2">
            <MDBCardImage
              src={game.img}
              fluid className="rounded-3" alt="Game" />
          </MDBCol>
          <MDBCol md="3" lg="3" xl="3">
            <MDBTypography tag="h6" className="text-muted">
              {game.platform}
            </MDBTypography>
            <MDBTypography tag="h6" className="text-black mb-0">
              {game.title}
            </MDBTypography>
            <MDBBtn style={{ marginTop: "7px" }} onClick={() => { handleDeleteCartGame(game.id) }} color='danger' floating tag='a'>
              <MDBIcon fas icon="times" />
            </MDBBtn>
          </MDBCol>

        </MDBRow>

        <hr className="my-4" />
      </div>
    )
  }
  )

  return (
    <section className="h-100 h-custom" style={{ backgroundColor: "#eee" }}>
      <MDBContainer className="py-5 h-100">
        <MDBRow className="justify-content-center align-items-center h-100">
          <MDBCol size="12">
            <MDBCard className="card-registration card-registration-2" style={{ borderRadius: "15px" }}>
              <MDBCardBody className="p-0">
                <MDBRow className="g-0">
                  <MDBCol lg="8">
                    <div className="p-5">
                      <div className="d-flex justify-content-between align-items-center mb-5">
                        <MDBTypography tag="h1" className="fw-bold mb-0 text-black">
                          Shopping Cart
                        </MDBTypography>
                        <MDBTypography className="mb-0 text-muted">
                          {gamesInCart.length} items
                        </MDBTypography>
                      </div>

                      <hr className="my-4" />


                      {cartItems}

                      <div className="pt-5">
                        <MDBTypography tag="h6" className="mb-0">
                          <MDBCardText className="text-body">
                            <MDBIcon fas icon="long-arrow-alt-left me-2" />
                            Back to games
                          </MDBCardText>
                        </MDBTypography>
                      </div>
                    </div>
                  </MDBCol>
                  <MDBCol lg="4" className="bg-grey">
                    <div className="p-5">
                      <MDBTypography tag="h3" className="fw-bold mb-5 mt-2 pt-1">
                        Summary
                      </MDBTypography>

                      <hr className="my-4" />

                      <div className="d-flex justify-content-center mb-4">
                        <MDBTypography tag="h5" className="text-uppercase">
                          items {gamesInCart.length}
                        </MDBTypography>
                      </div>

                      <MDBTypography tag="h5" className="text-uppercase mb-3">
                        Shipping
                      </MDBTypography>

                      <div className="mb-4 pb-2">
                        <select className="select p-2 rounded bg-grey" style={{ width: "100%" }}>
                          <option value="1">Standard-Delivery- $12.00</option>
                          <option value="2">Game Download- $0</option>
                        </select>
                      </div>

                      <hr className="my-4" />
                      {user.id !== false ? <>
                        <MDBBtn onClick={(e) => handleCartCheckout(e)} color="dark" block size="lg">
                          Checkout
                        </MDBBtn>

                        <h1>{thankYouMessage}</h1>
                      </>
                        :
                        null

                      }
                    </div>
                  </MDBCol>
                </MDBRow>
              </MDBCardBody>
            </MDBCard>
          </MDBCol>
        </MDBRow>
      </MDBContainer>
    </section>
  );
}

export default Cart