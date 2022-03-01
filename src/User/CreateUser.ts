import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

interface IUser {
    email: string;
    name: string;
    password: string;
}

class CreateUser {
    public async execute({ email, name, password }: IUser) {
        await prisma.user.create({
            data: {
                email: email,
                name: name,
                password: password
            }
        });

        return {};
    }
}

export { CreateUser };
