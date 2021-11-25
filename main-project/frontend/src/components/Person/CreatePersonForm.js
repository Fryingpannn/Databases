import { React, useState } from "react";
import Grid from "@mui/material/Grid";
import axios from 'axios';
import { useNavigate } from 'react-router-dom'

function CreatePersonForm() {
  const [inputs, setInputs] = useState({});
  const navigate = useNavigate();

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs((values) => ({ ...values, [name]: value }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    console.log(inputs);
    //axios.post('http://localhost:8080/person', inputs)
    //.then((response) => {
      //navigate('/person/display/table',{ state: { pID:response.pID }});
    //});
  };

  return (
    <form onSubmit={handleSubmit}>
      <Grid container spacing={2}>
        <Grid item xs={4}>
          <h3>first name:</h3>
            <input
              type="text"
              name="firstName"
              value={inputs.firstName || ""}
              onChange={handleChange}
            />

        </Grid>
        <Grid item xs={4}>
        <h3>last name:</h3>
            <input
              type="text"
              name="lastName"
              value={inputs.lastName || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
        <h3>Address:</h3>
            <input
              type="text"
              name="address"
              value={inputs.address || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>phone number:</h3>
            <input
              type="text"
              name="phoneNumber"
              value={inputs.phoneNumber || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>middle initial:</h3>
            <input
              type="text"
              name="middleInitial"
              value={inputs.middleInitial || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>province:</h3>
            <input
              type="text"
              name="province"
              value={inputs.province || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>city:</h3>
            <input
              type="text"
              name="city"
              value={inputs.city || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>postal code:</h3>
            <input
              type="text"
              name="postalCode"
              value={inputs.postalCode || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>citizenship:</h3>
            <input
              type="text"
              name="citizenship"
              value={inputs.citizenship || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>date of birth (YYYY-MM-DD):</h3>
            <input
              type="text"
              name="dateOfBirth"
              value={inputs.dateOfBirth || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <h3>email:</h3>
            <input
              type="text"
              name="email"
              value={inputs.email || ""}
              onChange={handleChange}
            />
        </Grid>
        <Grid item xs={4}>
          <input type="submit" />
        </Grid>
      </Grid>
    </form>
  );
}

export default CreatePersonForm;
