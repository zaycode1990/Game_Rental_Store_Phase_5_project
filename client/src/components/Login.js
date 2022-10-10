import React, {useState, useContext} from 'react'
import {
  MDBContainer,
  MDBTabs,
  MDBTabsItem,
  MDBTabsLink,
  MDBTabsContent,
  MDBTabsPane,
  MDBBtn,
  MDBInput,
  MDBCheckbox
}
from 'mdb-react-ui-kit';
import {UserContext} from '../UserContext'
import { useNavigate } from 'react-router-dom';




function Login({errors, setErrors}) {


  const {user, setUser} = useContext(UserContext)
  const [justifyActive, setJustifyActive] = useState('tab1');;
  const [password, setPassword] = useState("")
  const [username, setUsername] = useState("");
  const [usernameCreate, setUserNameCreate] = useState("");
  const [email, setEmail] = useState("");
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [passwordCreate, setPasswordCreate] = useState("");
  const [city, setCity] = useState("")
  const [state, setState] = useState("")
  const [country, setCountry] = useState("")
  const [zip, setZip] = useState("")
  const [creditCard, setCreditCard] = useState("")
  const [phoneNumber, setPhoneNumber] = useState("")
  const navigate = useNavigate()
  
  
  const resetForm = () => {
  setUserNameCreate("")
  setPasswordCreate("")
  setEmail("")
  setFirstName("")
  setLastName("")
  setCity("")
  setState("")
  setCountry("")
  setZip("")
  setCreditCard("")
  setPhoneNumber("")
} 
 async function handleLogin(e) {
    e.preventDefault();
   const login = await fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    })
    

    const requestJSON = await  login.json()
    console.log(requestJSON)
    if (login.ok)
    { 
      setUser(requestJSON)
      setUsername("")
      setPassword("")
      resetForm() 
      navigate("/")
    }
  
    else {
      setErrors(requestJSON.error)
      console.log(requestJSON.error)
    }
  }
       

  console.log(user)

async function handleSignup(e) {
    e.preventDefault()
 const signup =  await  fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ 
        username: usernameCreate,
         password: passwordCreate, 
         email: email, 
         first_name: firstName, 
         last_name: lastName, 
         city: city, 
         state: state, 
         country: country,
         zip: zip, 
         credit_card: creditCard, 
         phone_number: phoneNumber }),
    
  })

  const requestJSON = await signup.json()
  if (signup.ok)
  { 
  navigate("/")
  resetForm() 
  }

  else {
    console.log(requestJSON, "signup")
    setErrors(requestJSON.error)
  }
}


  const errMessages = errors.map((err, idx) => <p className='errorStyle' key={idx}>{err}</p>)

  const handleJustifyClick = (value) => {
    setErrors([])
    if (value === justifyActive) {
      return;
    }

    setJustifyActive(value);
  };
  return (
    <MDBContainer  className="p-3 my-5 d-flex flex-column w-50">



    <MDBTabs pills justify className='mb-3 d-flex flex-row justify-content-between'>
      <MDBTabsItem>
        <MDBTabsLink onClick={() => handleJustifyClick('tab1')} active={justifyActive === 'tab1'}>
          Login
        </MDBTabsLink>
      </MDBTabsItem>
      <MDBTabsItem>
        <MDBTabsLink onClick={() => handleJustifyClick('tab2')} active={justifyActive === 'tab2'}>
          Register
        </MDBTabsLink>
      </MDBTabsItem>
    </MDBTabs>

    <MDBTabsContent>


      <MDBTabsPane show={justifyActive === 'tab1'}>

     

          <p className="text-center mt-3">or:</p>
        

  {errMessages}
        
        <MDBInput wrapperClass='mb-4' label='Username' id='form1.5' type='username' onChange={(e) => { setUsername(e.target.value) }}/>
        
        
       

        <MDBInput wrapperClass='mb-4' label='Password' id='form2.5' type='password' onChange={(e) => { setPassword(e.target.value) }}/>
          
       

        <div className="d-flex justify-content-between mx-4 mb-4">
          <MDBCheckbox name='flexCheck' value='' id='flexCheckDefault' label='Remember me' />
          <a href="!#">Forgot password?</a>
        </div>

        <MDBBtn onClick={(e) => handleLogin(e)} className="mb-4 w-100">Sign in</MDBBtn>
        <p className="text-center">Not a member? <a href="#!">Register</a></p>

      </MDBTabsPane>

      <MDBTabsPane show={justifyActive === 'tab2'}>

      

          <p className="text-center mt-3">or:</p>
      
        {errMessages}

        <MDBInput wrapperClass='mb-4' label='First Name' id='form1' type='text' onChange={(e) => { setFirstName(e.target.value) }} />
          
        

        <MDBInput wrapperClass='mb-4' label='Last Name' id='form2' type='text' onChange={(e) => { setLastName(e.target.value) }} />

        

        <MDBInput wrapperClass='mb-4' label='Username' id='form3' type='text' onChange={(e) => { setUserNameCreate(e.target.value) }} />

       

        <MDBInput wrapperClass='mb-4' label='Email' id='form4' type='email' onChange={(e) => { setEmail(e.target.value) }} />

        

        <MDBInput wrapperClass='mb-4' label='Password' id='form5' type='password' onChange={(e) => { setPasswordCreate(e.target.value) }} />

       

        <MDBInput wrapperClass='mb-4' label='City' id='form6' type='text' onChange={(e) => { setCity(e.target.value) }} />

        

        <MDBInput wrapperClass='mb-4' label='State' id='form7' type='text' onChange={(e) => { setState(e.target.value) }} />
        
       

        <MDBInput wrapperClass='mb-4' label='Country' id='form8' type='text' onChange={(e) => { setCountry(e.target.value) }} />

       

        <MDBInput wrapperClass='mb-4' label='Zip' id='form9' maxLength={10} type='number' onChange={(e) => { setZip(e.target.value) }} />

       

        <MDBInput wrapperClass='mb-4' label='Credit Card' maxLength={16} id='form10' type='text' onChange={(e) => { setCreditCard(e.target.value) }} />

       

        <MDBInput wrapperClass='mb-4' label='Phone Number' maxLength={16} id='form11' type="text" onChange={(e) => { setPhoneNumber(e.target.value) }} />
        

        <MDBBtn onClick={(e) => handleSignup(e)} className="mb-4 w-100">Sign up</MDBBtn>

      </MDBTabsPane>

    </MDBTabsContent>

  </MDBContainer>
  )
}

export default Login