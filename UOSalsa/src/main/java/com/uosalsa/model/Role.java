package com.uosalsa.model;
import javax.persistence.*;



@Entity
@Table(name = "role")
public class Role {
	
	private Long id;
    private String name; 
    
    public Role() {
    }
    
    
    public Role(String name) {
		super();
		this.name = name;
	}

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "ID", unique = true, nullable = false, precision = 32, scale = 0)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
