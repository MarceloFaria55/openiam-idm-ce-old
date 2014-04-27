package org.openiam.idm.srvc.edu.course.service;


import org.apache.commons.lang.StringUtils;
import org.openiam.dozer.converter.*;
import org.openiam.exception.data.DataException;
import org.openiam.idm.srvc.edu.course.domain.CourseEntity;
import org.openiam.idm.srvc.edu.course.domain.ProgramEntity;
import org.openiam.idm.srvc.edu.course.domain.TermEntity;
import org.openiam.idm.srvc.edu.course.dto.Course;
import org.openiam.idm.srvc.edu.course.dto.CourseSearch;
import org.openiam.idm.srvc.edu.course.dto.CourseSearchResult;
import org.openiam.idm.srvc.edu.course.dto.Program;
import org.openiam.idm.srvc.edu.course.dto.term.Term;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public class CourseManagementServiceImpl implements CourseManagementService {

    protected ProgramDAO programDao;
    protected CourseDAO courseDao;
    protected TermDAO termDao;
    protected CourseTermDAO courseTermDAO;

    @Autowired
    private CourseDozerConverter courseDozerConverter;
    @Autowired
    private ProgramDozerConverter programDozerConverter;

    @Autowired
    private TermDozerConverter termDozerConverter;

    @Autowired
    private CourseTermDozerConverter courseTermDozerMapper;


    @Autowired
    private CourseTermUserDozerConverter courseTermUserDozerConverter;


    @Transactional(readOnly = true)
    public List<Program> getAllPrograms() {

        return programDozerConverter.convertToDTOList(programDao.getAllPrograms(), false);


    }

    @Transactional
    public void removeProgram(String programId) {
        if (programId == null) {
            throw new NullPointerException("programId is null");
        }

        ProgramEntity pe = programDao.findById(programId);
        if (pe != null) {
            programDao.remove(pe);
        }

    }

    @Transactional
    public Program addProgram(Program program) {
        if (program == null) {
            throw new NullPointerException("Program is null");

        }
        try {
            ProgramEntity pe = programDozerConverter.convertToEntity(program,true);
            programDao.add(pe);

            program.setId(pe.getId());
            return program;

        }catch (Exception e) {
            throw new DataException(e.getMessage(), e.getCause());
        }


    }

    @Transactional
    public Program updateProgram(Program program) {
        if (program == null) {
            throw new NullPointerException("Program is null");

        }
        try {
            ProgramEntity pe = programDozerConverter.convertToEntity(program,true);
            programDao.update(pe);

            return program;

        }catch (Exception e) {
            throw new DataException(e.getMessage(), e.getCause());
        }

    }

    @Transactional
    public Course addCourse(Course course) {
        if (course == null) {
            throw new NullPointerException("Course is null");

        }
        try {

            CourseEntity entity = courseDozerConverter.convertToEntity(course, true);
            courseDao.add(entity);
            course.setId(entity.getId());
            return course;

        }catch (Exception e) {
            throw new DataException(e.getMessage(), e.getCause());
        }
    }

    @Transactional
    public Course updateCourse(Course course) {
        if (course == null) {
            throw new NullPointerException("Course is null");

        }
        try {

            CourseEntity entity = courseDozerConverter.convertToEntity(course, true);
            courseDao.update(entity);
            course.setId(entity.getId());
            return course;

        }catch (Exception e) {
            throw new DataException(e.getMessage(), e.getCause());
        }
    }




    @Transactional
    public void removeCourse(String courseId) {
        if (courseId == null) {
            throw new NullPointerException("Course is null");

        }

        CourseEntity c = courseDao.findById(courseId);
        if (c != null) {

            courseDao.remove(c);
        }

    }

    @Override
    public List<CourseSearchResult> searchCourses(CourseSearch search) {
        return courseDao.searchCourses(search);
    }

    public CourseSearchResult getCourseByTerm(String courseId, String termId) {
        return courseDao.getCourseByTerm(courseId, termId);
    }


    /* Term operation */

    @Transactional
    public Term addTerm(Term term) {
        if (term == null) {
            throw new NullPointerException("Term is null");

        }
        try {

            TermEntity entity = termDozerConverter.convertToEntity(term, true);
            termDao.add(entity);

            term.setId(entity.getId());
            return term;

        }catch (Exception e) {
            throw new DataException(e.getMessage(), e.getCause());
        }




    }

    @Transactional
    public Term updateTerm(Term term) {
        if (term == null) {
            throw new NullPointerException("Term is null");

        }
        try {

            TermEntity entity = termDozerConverter.convertToEntity(term, true);
            termDao.update(entity);

            return term;

        }catch (Exception e) {
            throw new DataException(e.getMessage(), e.getCause());
        }

    }

    @Transactional
    public void removeTerm(String termId) {
        TermEntity t = termDao.findById(termId);
        if (t != null) {

            termDao.remove(t);
        }

    }

    @Transactional(readOnly = true)
    public List<Term> getTermsByDistrict(String districtId) {
        return termDozerConverter.convertToDTOList(termDao.getTermsByDistrict(districtId), false);

    }

    public void updateTermList(List<Term> termList ) {

        if (termList != null && !termList.isEmpty()) {

            for (Term t : termList) {

                TermEntity entity = termDozerConverter.convertToEntity(t, true);

                if (StringUtils.isEmpty(entity.getId()))  {

                    termDao.add(entity);


                }else {
                    termDao.update(entity);
                }

            }

        }

    }

    @Override
    public boolean hasCourses(String termId) {
        return termDao.hasCourses(termId);
    }

    public ProgramDAO getProgramDao() {
        return programDao;
    }

    public void setProgramDao(ProgramDAO programDao) {
        this.programDao = programDao;
    }

    public CourseDAO getCourseDao() {
        return courseDao;
    }

    public void setCourseDao(CourseDAO courseDao) {
        this.courseDao = courseDao;
    }

    public TermDAO getTermDao() {
        return termDao;
    }

    public void setTermDao(TermDAO termDao) {
        this.termDao = termDao;
    }

    public CourseTermDAO getCourseTermDAO() {
        return courseTermDAO;
    }

    public void setCourseTermDAO(CourseTermDAO courseTermDAO) {
        this.courseTermDAO = courseTermDAO;
    }
}
