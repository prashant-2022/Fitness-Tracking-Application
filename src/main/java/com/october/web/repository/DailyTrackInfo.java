package com.october.web.repository;

import java.time.LocalDate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.october.web.model.DailyTrack;
import com.october.web.model.User;


@Repository
public interface DailyTrackInfo extends JpaRepository<DailyTrack, Integer> {
    DailyTrack findByUserAndDate(User user, LocalDate date);
}
