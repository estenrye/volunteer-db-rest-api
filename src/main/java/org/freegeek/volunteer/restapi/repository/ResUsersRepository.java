package org.freegeek.volunteer.restapi.repository;

import java.util.List;
import org.freegeek.volunteer.restapi.entity.ResUsers;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
/**
 * Created by tom on 12/21/18.
 */
@RepositoryRestResource(collectionResourceRel = "res_users", path = "users")
public interface ResUsersRepository extends PagingAndSortingRepository<ResUsers, Integer> {
    List<ResUsers> findByLogin(@Param("login") String login);
}