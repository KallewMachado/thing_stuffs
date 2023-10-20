import { Module } from '@nestjs/common';
import { CategoriesService } from './categories.service';
import { CategoriesController } from './categories.controller';
import { CommonModule } from 'src/common/common.module';
import { AuthModule } from 'src/auth/auth.module';
import { FirebaseService } from 'src/auth/firebase/firebase.service';

@Module({
  imports: [CommonModule, AuthModule],
  controllers: [CategoriesController],
  providers: [CategoriesService, FirebaseService],
})
export class CategoriesModule {}
