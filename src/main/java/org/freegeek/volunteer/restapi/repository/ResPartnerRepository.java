package org.freegeek.volunteer.restapi.repository;

import org.freegeek.volunteer.restapi.entity.ResPartner;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by tom on 12/22/18.
 */
@RepositoryRestResource(collectionResourceRel="res_partner", path = "volunteer")
public interface ResPartnerRepository extends PagingAndSortingRepository<ResPartner, Integer>{
    List<ResPartner> findByName(@Param("name") String name);
}
