import { React, useState } from "react";
import {useNavigate} from 'react-router-dom';
import Grid from "@mui/material/Grid";

function PersonToDisplayForm() {
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
    navigate('/person/display/table',{state:{pID:inputs.pID}});
  };

  return (
    <form onSubmit={handleSubmit}>
      <Grid container spacing={2}>
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

export default PersonToDisplayForm;