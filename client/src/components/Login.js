import React, {useState} from 'react'
import {
  MDBContainer,
  MDBTabs,
  MDBTabsItem,
  MDBTabsLink,
  MDBTabsContent,
  MDBTabsPane,
  MDBBtn,
  MDBIcon,
  MDBInput,
  MDBCheckbox
}

from 'mdb-react-ui-kit';
import { useNavigate } from 'react-router-dom';




function Login() {



  const [justifyActive, setJustifyActive] = useState('tab1');;
  const [password, setPassword] = useState("")
  const [username, setUsername] = useState("");
  const [usernameCreate, setUserNameCreate] = useState("");
  const [email, setEmail] = useState("");
  const [name, setName] = useState("");
  const [lastName, setLastName] = useState("");
  const [passwordCreate, setPasswordCreate] = useState("");

  const navigate = useNavigate()

  function handleLogin(e) {
    e.preventDefault();
    fetch("/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ username, password }),
    }).then((r) => {
       if (r.ok) {
         localStorage.setItem("user", JSON.stringify({username}))
         navigate("/games")
       } else {
         r.json().then((err) => console.log(err.errors));
       }
     });
  }

  function handleSignup(e) {
    e.preventDefault();
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ usernameCreate, passwordCreate, email, name, lastName }),
    })//.then((r) => {
    //   setIsLoading(false);
    //   if (r.ok) {
    //     r.json().then((user) => onLogin(user));
    //   } else {
    //     r.json().then((err) => setErrors(err.errors));
    //   }
    // });
  }

  

  const handleJustifyClick = (value) => {
    if (value === justifyActive) {
      return;
    }

    setJustifyActive(value);
  };
  return (
    <MDBContainer className="p-3 my-5 d-flex flex-column w-50">

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
        

        <MDBInput wrapperClass='mb-4' label='Username' id='form1' type='username' onChange={(e) => { setUsername(e.target.value) }}/>
        <MDBInput wrapperClass='mb-4' label='Password' id='form2' type='password' onChange={(e) => { setPassword(e.target.value) }}/>

        <div className="d-flex justify-content-between mx-4 mb-4">
          <MDBCheckbox name='flexCheck' value='' id='flexCheckDefault' label='Remember me' />
          <a href="!#">Forgot password?</a>
        </div>

        <MDBBtn onClick={(e) => handleLogin(e)} className="mb-4 w-100">Sign in</MDBBtn>
        <p className="text-center">Not a member? <a href="#!">Register</a></p>

      </MDBTabsPane>

      <MDBTabsPane show={justifyActive === 'tab2'}>

      

          <p className="text-center mt-3">or:</p>
      

        <MDBInput wrapperClass='mb-4' label='Name' id='form1' type='text' onChange={(e) => { setName(e.target.value) }} />
        <MDBInput wrapperClass='mb-4' label='LastName' id='form1' type='text' onChange={(e) => { setLastName(e.target.value) }} />
        <MDBInput wrapperClass='mb-4' label='Username' id='form1' type='text' onChange={(e) => { setUserNameCreate(e.target.value) }} />
        <MDBInput wrapperClass='mb-4' label='Email' id='form1' type='email' onChange={(e) => { setEmail(e.target.value) }} />
        <MDBInput wrapperClass='mb-4' label='Password' id='form1' type='password' onChange={(e) => { setPasswordCreate(e.target.value) }} />

        {/* <div className='d-flex justify-content-center mb-4'>
          <MDBCheckbox name='flexCheck' id='flexCheckDefault' label='I have read and agree to the terms' />
        </div> */}

        <MDBBtn onSubmit={(e) => handleSignup(e)} className="mb-4 w-100">Sign up</MDBBtn>

      </MDBTabsPane>

    </MDBTabsContent>

  </MDBContainer>
  )
}

export default Login