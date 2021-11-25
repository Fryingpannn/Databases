import React from "react";
import { Link } from "react-router-dom";
import Button from "@mui/material/Button";
import Grid from "@mui/material/Grid";

const PersonActions = () => {
  return (
    <Grid container spacing={2}>
      <Grid item xs={12}>
        <Link to="/"><Button variant="contained">Home</Button></Link>
      </Grid>
      <Grid item xs={6}>
        <Link to="/person/create"><Button variant="contained">Create</Button></Link>
      </Grid>
      <Grid item xs={6}>
        <Link to="/person/delete"><Button variant="contained">Delete</Button></Link>
      </Grid>
      <Grid item xs={6}>
      <Link to="/person/display"><Button variant="contained">Display</Button></Link>
      </Grid>
      <Grid item xs={6}>
        <Link to="/person/edit"><Button variant="contained">Edit</Button></Link>
      </Grid>
    </Grid>
  );
};

export default PersonActions;