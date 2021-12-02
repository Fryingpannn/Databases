import React from "react";
import { Routes, Route } from "react-router-dom";
import Home from './components/Home'
import PersonActions from "./components/Person/PersonActions";
import CreatePersonForm from "./components/Person/CreatePersonForm"
import DeletePersonForm from "./components/Person/DeletePersonForm"
import PersonToDisplayForm from "./components/Person/PersonToDisplayForm"
import PersonToEditForm from "./components/Person/PersonToEditForm"
import DisplayPerson from "./components/Person/DisplayPerson";
import EditPersonForm from "./components/Person/EditPersonForm";

const AppRoutes = () => (
    <Routes>
        <Route index element={<Home />}/>
        <Route path="/person" element={<PersonActions />} />
        <Route path="/person/create" element={<CreatePersonForm />}/>
        <Route path="/person/delete" element={<DeletePersonForm />}/>
        <Route path="/person/display" element={<PersonToDisplayForm />}/>
        <Route path="/person/display/table" element={<DisplayPerson/>}/>
        <Route path="/person/edit" element={<PersonToEditForm />}/>
        <Route path ="person/edit/pid" element = {<EditPersonForm/>}/>
    </Routes>
);

export default AppRoutes
