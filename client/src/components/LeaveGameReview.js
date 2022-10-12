import React, { useContext, useState } from 'react'
import {
    MDBRow,
    MDBCol,
    MDBInput,
    MDBCard,
    MDBCardBody,
    MDBCardTitle,
    MDBCardText,
    MDBCardImage,
    MDBBtn
} from 'mdb-react-ui-kit';
import { UserContext } from '../UserContext'

function LeaveGameReview({ currentGame }) {

    const { user } = useContext(UserContext)
    const [review, setReview] = useState("")
    const [title, setTitle] = useState("")

    function handleSubmitReview(e) {
        e.preventDefault()
        fetch('/game_reviews', {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ user_id: user.id, game_id: currentGame.id, title: title, desc: review })
        }).then(r => r.json()).then(data => console.log(data)).catch(error => console.log(error))

    }


    const gameReviewCardStyle = {
        maxWidth: "15rem",
        marginLeft: "auto",
        marginRight: "auto"
    }


    return (
        <div className="container">
            <div className="row">
                <div className="col-md">
                    <div >
                        <MDBCard >
                            <MDBCardImage style={gameReviewCardStyle} src={currentGame.img} position='top' alt='video game' />
                            <MDBCardBody>
                                <MDBCardTitle>{currentGame.title}</MDBCardTitle>
                                <MDBCardText>
                                    {currentGame.platform} | {currentGame.publisher}
                                </MDBCardText>
                                {currentGame.game_reviews.map(review => {
                                    return (<div>
                                        <h1>{review.user.username}</h1>
                                        <MDBCardText>{review.title}</MDBCardText>
                                        <MDBCardText>{review.desc}</MDBCardText>

                                    </div>)
                                })}
                                <div>{currentGame.title}</div>
                            </MDBCardBody>
                        </MDBCard>

                    </div>
                </div>
                <div className="col-md">
                    <>
                        <form onSubmit={handleSubmitReview} >
                            <MDBRow className='mb-4'>
                                <MDBCol>
                                    <MDBInput value={title} id='title' label='Title' onChange={(e) => setTitle(e.target.value)} />
                                </MDBCol>
                            </MDBRow>

                            <div className="form-group">

                                <textarea
                                    className="form-control"
                                    id="exampleFormControlTextarea1"
                                    rows="5"
                                    value={review}
                                    onChange={(e) => setReview(e.target.value)}

                                />
                            </div>


                            <MDBBtn className='mb-4' type='submit' block>
                                Submit Review
                            </MDBBtn>
                        </form>
                    </>
                </div>
            </div>
        </div>

    )
}

export default LeaveGameReview
