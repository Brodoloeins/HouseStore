import { Router } from 'express';
import { CreateUser } from './User/CreateUser';
import { celebrate, Joi, Segments } from 'celebrate';

const routes = Router();
const createUser = new CreateUser();

routes.post('/create', 
    celebrate({
        [Segments.BODY]: {
            email: Joi.string().required(),
            name: Joi.string().required(),
            password: Joi.string().required()
        }
    })
, createUser.execute)

export { routes }
