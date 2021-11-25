import { React, useState } from "react";
import { Link } from "react-router-dom";
import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";

function EditPersonForm() {
  const [inputs, setInputs] = useState({});

  const handleChange = (event) => {
    const name = event.target.name;
    const value = event.target.value;
    setInputs((values) => ({ ...values, [name]: value }));
  };

  const handleSubmit = (event) => {
    event.preventDefault();
    console.log(inputs);
    //axios.put('http://localhost:8080/person', inputs.pID)
    //.then((response) => {
    // navigate('/person/display/table',{state:{pID:response.pID}});
    //});
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

export default EditPersonForm;
