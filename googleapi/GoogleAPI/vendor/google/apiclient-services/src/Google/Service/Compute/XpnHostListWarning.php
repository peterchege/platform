<?php
/*
 * Copyright 2014 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

class Google_Service_Compute_InterconnectLocation extends Google_Collection
{
  protected $collection_key = 'regionInfos';
  public $address;
  public $availabilityZone;
  public $city;
  public $continent;
  public $creationTimestamp;
  public $description;
  public $facilityProvider;
  public $facilityProviderFacilityId;
  public $id;
  public $kind;
  public $name;
  public $peeringdbFacilityId;
  protected $regionInfosType = 'Google_Service_Compute_InterconnectLocationRegionInfo';
  protected $regionInfosDataType = 'array';
  public $selfLink;

  public function setAddress($address)
  {
    $this->address = $address;
  }
  public function getAddress()
  {
    return $this->address;
  }
  public function setAvailabilityZone($availabilityZone)
  {
    $this->availabilityZone = $availabilityZone;
  }
  public function getAvailabilityZone()
  