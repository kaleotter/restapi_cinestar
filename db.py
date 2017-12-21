from sqlalchemy import create_engine, Column, Integer, String, year, datetime, decimal
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine('mysql://accessusr:Student@192.168.0.64/CineStarMain', echo = True)

Base = declarative_base()

class Users(Base):
    __tablename__ = 'Users'
    
    userID = Column(Integer, primary_key = True, autoincrement=True)
    username = Column(String)
    email = Column(String)
    password = Column(String)
    
    
    def __repr__(self):
        return "<Users(username='%s', email='%s', password='%s')>" % (
                        self.username, self.email, self.password)
    


    
class Movies (Base):
    __tablename__ ='Movies'
    
    Title = Column(String) 
    year = Column(year(4))
    Certification = Column(String(45))
    release_date = Column(DATETIME)
    Runtime = Column(String())
    Genres = Column(String(1000)) 
    Directors = Column(String(1000)) 
    Writers = Column(String(1000)) 
    Actors = Column(String(1000)) 
    Synopsis = Column(String(5000)) 
    languages = Column(String(500)) 
    Country = Column(String(70)) 
    awards = Column(String(500)) 
    Poster_URL = Column(String(1000)) 
    IMDBRating = Column (decimal(1,0)) 
    MetaScore =Column(decimal(1,0)) 
    Type = Column(String(50)) 
    DVD =Column(date(4))
    Website = Column(String(500)
    
    def __repr__(self):
        return "<Movies(username='%s', email='%s', password='%s')>"