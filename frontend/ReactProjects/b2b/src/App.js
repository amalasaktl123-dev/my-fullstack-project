/*function App() {
    return (
        <p>
            B2B Login Page
        </p>
    );
}
export default App;*/
import { Routes, Route } from "react-router-dom";
import Login from "./B2B_Files/Login";
import Dashboard from "./B2B_Files/Dashboard";
import Insert from "./B2B_Files/Insert";

function App() {
  return (
    <Routes>
      <Route path="/" element={<Login />} />
      <Route path="/dashboard" element={<Dashboard />} />
       <Route path="/insertion" element={<Insert />} />
    </Routes>
  );
}

export default App;
