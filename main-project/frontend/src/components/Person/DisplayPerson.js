import React, { useMemo, useState, useEffect } from "react";
import axios from "axios";
import Table from "./Table";
import styled from 'styled-components'
import {useLocation} from 'react-router-dom';

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

  const [data, setData] = useState([]);

  useEffect(() => {
    const personID = location.state.pID
    console.log("personID",personID)
    async function getData() {
      await axios
        //.get("https://covidtracking.com/api/v1/states/current.json")
        //axios.get(`localhost:8080/person?pid=${personID}`), inputs)
        //.then((response) => {
          //console.log(response);
          //setData([response]);
          //setLoadingData(false);
        //});
    }
    if (loadingData) {
      getData();
    }
  }, [loadingData, location.state.pID]);

  return (
    <div className="App">
      {loadingData ? (
        <p>Loading Please wait...</p>
      ) : (
        <Styles>
            <Table columns={columns} data={data} />
        </Styles>
      )}
    </div>
  );
}

export default DisplayPerson
