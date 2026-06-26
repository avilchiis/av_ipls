import "./App.css";
import { useEffect, useState } from "react";
import { MantineProvider } from "@mantine/core";
import { isEnvBrowser } from "./hooks/useNuiEvents";
import { Lang } from "./reducers/atoms";
import { getLang } from "./hooks/getLang";
import { useSetAtom } from "jotai";
import { Admin } from "./components/Admin/Admin";

const App = () => {
  const setLang = useSetAtom(Lang);
  const [loaded, setLoaded] = useState(false);

  const fetchInit = async () => {
    try {
      const response = await getLang();
      setLang(response);
      setLoaded(true);
    } catch (error) {
      console.error("Error loading init data:", error);
    }
  };

  useEffect(() => {
    if (isEnvBrowser()) {
      document.body.style.background = `url("https://r2.fivemanage.com/QmVAYSlqeAlD4IxVbdvu5/background2.jpg") no-repeat center center fixed`;
      document.body.style.backgroundSize = "cover";
    }
    if (!loaded) {
      fetchInit();
    }
  }, []);
  if (!loaded) return null;
  return (
    <MantineProvider defaultColorScheme="dark">
      <Admin />
    </MantineProvider>
  );
};

export default App;
