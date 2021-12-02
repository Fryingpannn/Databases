import { React, useState, useEffect } from "react";
import Grid from "@mui/material/Grid";
import axios from 'axios';
import { useNavigate, useLocation } from 'react-router-dom'

function EditPersonForm() {
    const [loadingData, setLoadingData] = useState(true);
    const location = useLocation();
    const [inputs, setInputs] = useState({});
    const navigate = useNavigate();

    useEffect(() => {
        console.log("is useEffect being triggered")
        const personID = location.state.pID
        async function getData() {
            await axios.get(`http://localhost:8080/person?pid=${personID}`)
                .then((response) => {
                    console.log(response);
                    const responseArr = [response]
                    const personToEditData = responseArr.map((responseInstance) => responseInstance = responseInstance.data)[0]
                    console.log("inputs", inputs)
                    console.log("personToEditData", personToEditData)
                    setInputs({
                        firstName: personToEditData.firstName,
                        lastName: personToEditData.lastName,
                        address: personToEditData.address,
                        phoneNumber: personToEditData.phoneNumber,
                        middleInitial:personToEditData.middleInitial,
                        province: personToEditData.province,
                        city: personToEditData.city,
                        postalCode: personToEditData.postalCode,
                        citizenship: personToEditData.citizenship,
                        dateOfBirth: personToEditData.dateOfBirth,
                        email: personToEditData.email
                    })
                    setLoadingData(false);
                });
        }
        if (loadingData) {
            getData();
        }
    }, [loadingData, location.state.pID])

    const handleChange = (event) => {
        const name = event.target.name;
        const value = event.target.value;
        setInputs((values) => ({ ...values, [name]: value }));
    };

    const handleSubmit = async (event) => {
        event.preventDefault();
        console.log("inputs after submit",inputs);
        await axios.put('http://localhost:8080/person', inputs.pID)
            .then((response) => {
                navigate('/person/display/table',{state:{pID:response.pID}});
            });
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

export default EditPersonForm;