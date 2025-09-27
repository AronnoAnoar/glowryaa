<?php

namespace App\Enums;

enum CustomerStatus: string
{
    case REGULAR = 'Regular';
    case VIP = 'Vip';
    case FRAUD = 'Fraud';

    public function label(): string
    {
        // Customer table available status 1->Active, 0->De-Active, 2->Regular, 3->VIP, 4->Fraud
        return match($this) {
            self::REGULAR => '2',
            self::VIP => '3',
            self::FRAUD => '4',
        };
    }
}
