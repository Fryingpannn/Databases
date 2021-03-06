import { React, useState } from "react";
import { Link } from "react-router-dom";
import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";
import axios from 'axios';

function DeletePersonForm() {
  const [inputs, setInputs] = useState({});

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs((values) => ({ ...values, [name]: value }));
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    console.log(inputs);
    await axios.delete(await axios.delete(`http://localhost:8080/person?pid=${inputs.pID}`))
    .then((result) => {

    });
  };

  return (
    <form onSubmit={handleSubmit}>
      <Grid container spacing={2}>
        <Grid item xs={12}>
          <Link to="/">
            <Button variant="contained">Home</Button>
          </Link>
        </Grid>
        <Grid item xs={12}>
          <h3>Person ID</h3>
          <input
            type="text"
            name="pID"
            value={inputs.pID || ""}
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

export default DeletePersonForm;
