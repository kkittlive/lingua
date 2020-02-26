import "bootstrap";
import "../plugins/flatpickr"
import { loadDynamicBannerText } from '../components/banner';
import { initAutocomplete } from "../plugins/init_autocomplete"
import { initUpdateNavbarOnScroll } from '../components/navbar';

loadDynamicBannerText();

initUpdateNavbarOnScroll();

initAutocomplete()

