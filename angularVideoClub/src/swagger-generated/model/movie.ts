/**
 * Api Documentation
 * Api Documentation
 *
 * OpenAPI spec version: 1.0
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */
import { MovieCategory } from './movieCategory';
import { User } from './user';


export interface Movie { 
    description?: string;
    director?: string;
    duration?: string;
    id?: number;
    imageUrl?: string;
    movieCategory?: MovieCategory;
    rating?: string;
    seen?: number;
    title?: string;
    users?: Array<User>;
    year?: string;
}
