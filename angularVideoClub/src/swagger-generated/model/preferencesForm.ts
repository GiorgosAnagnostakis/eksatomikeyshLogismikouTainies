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


export interface PreferencesForm { 
    age?: number;
    id?: number;
    movieCategories?: Array<MovieCategory>;
    user?: User;
}
