import {Inject, Injectable} from '@nestjs/common';
import {
    CheckPasswordRequest,
    CheckPasswordResponse,
    FindUserByIdRequest,
    FindUserByResponse,
} from "./users.proto.typs";
import {Observable} from "rxjs";
import {ClientGrpc} from "@nestjs/microservices";


export interface UsersService {
    FindUserById(data: FindUserByIdRequest): Observable<FindUserByResponse>
    CheckPassword(data: CheckPasswordRequest): Observable<FindUserByResponse>
}
@Injectable()
export class UsersService {
    private usersService : UsersService;
    constructor(@Inject('USER_SERVICE') private usersClient: ClientGrpc) {}
    onModuleInit() {
        this.usersService = this.usersClient.getService<UsersService>('UsersService');

    }
    findUserById(data: FindUserByIdRequest): Observable<FindUserByResponse> {
        console.log('call findUserById 1', data);
        const foundUser = this.usersService.findUserById(data);
        console.log('call findUserById in service', foundUser.forEach((value) => console.log(value)));
        return foundUser;
    }
    checkPassword(data: CheckPasswordRequest): Observable<CheckPasswordResponse> {
        console.log('call checkPassword');

        const checkedPassword = this.usersService.checkPassword(data);
        console.log('call checkPassword in service', checkedPassword.forEach((value) => console.log(value)));
        return checkedPassword;
    }
    testing(data: FindUserByIdRequest): FindUserByIdRequest {
        console.log('call testing', data);
        return {id : data.id}
    }
}
