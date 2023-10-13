import { Injectable } from '@nestjs/common';
import { Prisma } from '@prisma/client';
import { PrismaService } from 'src/common/prisma_service/prisma.service';

@Injectable()
export class CategoriesService {

  constructor(private readonly prisma: PrismaService){}

  create(createCategoryDto: Prisma.CategoryCreateInput) {
    return this.prisma.category.create({
      data: createCategoryDto
    });
  }

  findAll() {
    return this.prisma.category.findMany();
  }

  findOne(id: number) {
    return this.prisma.category.findUnique({
      where:{
       id 
      }
    });
  }

  update(id: number, updateCategoryDto: Prisma.CategoryUpdateInput) {
    return this.prisma.category.update({
      where:{
        id
      },
      data:updateCategoryDto
    });
  }

  remove(id: number) {
    return this.prisma.category.delete({
      where:{
        id
      }
    });
  }
}
