import http from 'k6/http';
import { check, sleep } from 'k6';

const isNumeric = (value) => /^\d+$/.test(value);

const default_vus = 1000;

const target_vus_env = `${__ENV.TARGET_VUS}`;
const target_vus = isNumeric(target_vus_env) ? Number(target_vus_env) : default_vus;

export let options = {
  insecureSkipTLSVerify: true,
  stages: [
      // Ramp-up from 1 to TARGET_VUS virtual users (VUs) in 30s
      { duration: '30s', target: target_vus },

      // Stay at rest on TARGET_VUS VUs for 1m30s
      { duration: '1m30s', target: target_vus },

      // Ramp-down from TARGET_VUS to 0 VUs for 20s
      { duration: '20s', target: 0 }
  ]
};

export default function () {
  const res = http.get('https://host.docker.internal:5001/Thread/Thread'); //, {headers: {Accepts: 'application/json'}});
  check(res, { 'status is 200': (r) => r.status === 200 });
  sleep(1);
};