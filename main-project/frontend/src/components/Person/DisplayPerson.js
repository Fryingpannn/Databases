import React, { useMemo, useState, useEffect } from "react";
import axios from "axios";
import Table from "./Table";
import styled from 'styled-components'
import {Link, useLocation} from 'react-router-dom';
import Grid from "@mui/material/Grid";
import Button from "@mui/material/Button";

const Styles = styled.div`
  padding: 1rem;

  table {
    border-spacing: 0;
    border: 1px solid black;

    tr {
      :last-child {
        td {
          border-bottom: 0;
        }
      }
    }

    th,
    td {
      margin: 0;
      padding: 0.5rem;
      border-bottom: 1px solid black;
      border-right: 1px solid black;

      :last-child {
        border-right: 0;
      }
    }
  }
`

function DisplayPerson() {
  const [loadingData, setLoadingData] = useState(true);
  const location = useLocation();
  const columns = useMemo(() => [
    {
      Header: "First Name",
      accessor: "firstName",
    },
    {
      Header: "Last Name",
      accessor: "lastName",
    },
    {
      Header: "Address",
      accessor: "address",
    },
    {
      Header: "Phone Number",
      accessor: "phoneNumber",
    },
    {
      Header: "Middle Initial",
      accessor: "middleInitial",
    },
    {
      Header: "province",
      accessor: "province",
    },
    {
      Header: "city",
      accessor: "city",
    },
    {
      Header: "postalCode",
      accessor: "postalCode",
    },
    {
      Header: "citizenship",
      accessor: "citizenship",
    },
    {
      Header: "ID",
      accessor: "pid",
    },
    {
      Header: "Date of Birth",
      accessor: "dateOfBirth",
    },
    {
      Header: "Email",
      accessor: "email",
    },
  ],[]);
  const [error,setError] = useState(false)
  const [data, setData] = useState([]);
  console.log("data",data);

  useEffect(() => {
    const personID = location.state.pID
    console.log("is useEffect running")
    console.log("personID",personID)
    async function getData() {
      try{
        await axios
            .get(`http://localhost:8080/person?pid=${personID}`)
            .then((response) => {
              console.log(response);
              console.log("do ir each here")
              const responseArr = [response]
              console.log("responseArr", responseArr)
              const tuples = responseArr.map((responseInstance) => responseInstance = responseInstance.data)
              console.log("responseArr after chagne", tuples)
              setData(tuples);
              setLoadingData(false);
            });
      }catch(e){
          console.log("catch handler hit")
        setError(true)
      }

    }
    if (loadingData) {
      getData();
    }
  }, [loadingData, location.state.pID]);

  if(error){
    return (
        <div>
          <h3>Error! This person does not exist. Please go back and enter a person with a valid id.</h3>
          <Link to="/">
            <Button variant="contained">Home</Button>
          </Link>
        </div>
    )
  }
  return (
    <div className="App">
      {loadingData ? (
        <p>Loading Please wait...</p>
      ) : (
          <div>
            <Styles>
                <Table columns={columns} data={data} />
            </Styles>
            <Link to="/">
            <Button variant="contained">Home</Button>
            </Link>
          </div>
      )}
    </div>
  );
}

export default DisplayPerson
