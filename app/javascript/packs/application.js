import "bootstrap";
import "../plugins/flatpickr"
import { loadDynamicBannerText } from '../components/banner';
import { initAutocomplete } from "../plugins/init_autocomplete"
import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

loadDynamicBannerText();

initUpdateNavbarOnScroll();

initAutocomplete()

initMapbox();
