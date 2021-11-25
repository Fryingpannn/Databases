import React from "react";
import { Link } from "react-router-dom";
import Button from "@mui/material/Button";
import Grid from "@mui/material/Grid";

const Home = () => {
  return (
    <Grid container spacing={2}>
      <Grid item xs={12}>
        <Link to="person"><Button variant="contained">Person</Button></Link>
      </Grid>
    </Grid>
  );
};

export default Home;
