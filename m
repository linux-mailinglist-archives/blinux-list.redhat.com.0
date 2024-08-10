Return-Path: <blinux-list+bncBCAJTHUAX4NBBN64322QMGQEPBPZXPI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDB194DDE5
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 20:15:21 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44feeac4be2sf40188031cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 11:15:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723313720; cv=pass;
        d=google.com; s=arc-20160816;
        b=lJ370aFXIB1e9JfzdIwCqW1AX9bkH6sFeEjhItO1vRWzCP4r2aBSCahpxTKvJew7P8
         X4jQH0oVSmMU89XtA8jcMKlASi+lm4CxJ9v+sW+y4OhtdRFVstvXT/DxtavLiOKSVvS3
         Xj99doFlFcj11O2r8bTA0SsMO/9xBafxWbvK28NxLasLqKwfNqpnteu7VUev698KnKz7
         ujP1BsbNOp5kJu7SjMHJDrQblA1mZ+z9OsU1oWBsKnBXt0xzkvBMuotWZMJjB1XgU1WH
         bJDT7QG3iiOWo7fFC+rOL2lGWGqpJFGSa3fHdxOFk3eex+FquQIHINjTaApF9Lev9cXW
         qk6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:delivered-to;
        bh=ZQuXNXfM/GLmgNhXb8LViy96f+3A4MLZAEpFkHh9TSg=;
        fh=fZITDVfoKgaV1n+bLRQw5LRmJLOC6fAL6tZxGbQZ1q8=;
        b=vkYml6OIalvmrNGGFokpqSaw/24lo0OazUaffFahZQEO+ymqo+5icnBg1KG7etmC0B
         FO/zlfxgf2gKMBjO/LijRQ9C3w8Aiy2Vg6N+c2PeoUG0BW05YLinzOV1f+wfvQMe+sX1
         Ob0uBfAfYXwAs76MF0dcGQyx4c2Upk5ffZf92ZktQU/V3Px/DaPFoVFz5kNa9q/eRTO/
         s0Rxo7PoLBjS7yYmnFdtASBwrbidUjxS2AB6tL+VlJH/YRxO9GM4k4ZSjla4E47yYtbj
         xh2BCXKY4Af8gzJlev+XBVPeVJHBWf1yOlDo6jMGAT6/1MzTIxqpIRk9BfMnEnkWCunN
         83Xg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.223.136 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723313720; x=1723918520;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZQuXNXfM/GLmgNhXb8LViy96f+3A4MLZAEpFkHh9TSg=;
        b=an2e8cD2nJzFzEfUr3mcPd+PEYSggrGTeh1LqS4TDC2Ztk0/aw9RJNRALr0fpJVzvK
         ZYH0Sj/cy3QO9hO1VDIeQx62Ma0oqDRxkA3ZLyWqbbwkNQ6JpPr7+A+xoNIid0QBtxCo
         bD1YiGDj7+YNXnEmYZmtKCnE3ZZ0U1QJf9arnnQvpiD1FKX1/u6lydwSXyEICDtzPiOc
         8aE9teyqRf+yJCMLoe8inaXbK5sxWwYIrSnoFtqUCdC+XVpJBnlNZyNIO3WAs5ryoggw
         9SVa8MntG0X3gosBwf9peVzX4iXUbD7CTsknZQ99NCNgXZlp3PrRo8AKHcOsC+ANC6Gp
         UUNw==
X-Forwarded-Encrypted: i=2; AJvYcCVq9zxq8DnqtH0RTUeF4dhB4zROP3fHJqrKrsAYiM2ZqEHb5FHn3EBBf1Gi/aMpebOK3iX1utq7weabmaaT3OwPieNaTBxezrKl
X-Gm-Message-State: AOJu0Yx55ocE4LpVefJ1ouMtTGczRmkm4Xa6Qb7D0TPYa4dPKsuNfkn2
	leGP3w9D0gS/RkynBRQIVMtWDNRqKdkroReYKF1et1ge2me/AEd5vWnSkFlBeAc=
X-Google-Smtp-Source: AGHT+IFYslnPqvX+LE2hhu+KWyq8EW2UY8Ci45oEaK40bMrPZbZP5wYUo0epyz6oF0lRBpAwHOjyag==
X-Received: by 2002:a05:622a:1b18:b0:44f:f06a:d6f5 with SMTP id d75a77b69052e-453125d613amr59901631cf.36.1723313719779;
        Sat, 10 Aug 2024 11:15:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5813:0:b0:447:ed03:aa4b with SMTP id d75a77b69052e-451d12f6c25ls46255771cf.2.-pod-prod-09-us;
 Sat, 10 Aug 2024 11:15:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU1VBL4eFS/4bEQn5uY7oXL1RbILNt43ZGMg71G8YEbK5AP9SILSPwxgJ+ejUW+AmnnzWxSyTnN6CawKOL4k5nyXtd7MT6IaOKrLOxt
X-Received: by 2002:a05:620a:2444:b0:7a1:452f:9dad with SMTP id af79cd13be357-7a4c1780f4emr599818885a.4.1723313718702;
        Sat, 10 Aug 2024 11:15:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723313718; cv=none;
        d=google.com; s=arc-20160816;
        b=n1B2dFjSKWsWCVKSYupFZvFMxL9MEHQIu9LfuR6o4Nj5PtnP2jxEIBZbLdPUYZg532
         2UOGqhNonTu5H49gbTqD3lEjuVlwJLq3P66jkP19GyRCODkfeMekg1MAM28Ik7LjDzS8
         hMoEZP3HzhgJ9xUH+CNP4r6zEx8YeabbxRub/I8nRx2RG5Wk4W2TU688CeDIyr2w4VXI
         JZZnFzLo+DBWQg5TQ5wKUBWaBfmEn42Ybft/KuCosKy2MkXnGE0MrqWHnxfEgPpXCxAI
         nYe1DxBS5V3pa+gUKcOEXVFK4NZFY+Fzb9nuIMQAdbARh9UgR5su98XU99ZlWZKzHnkL
         0fIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to;
        bh=tMJJmpvPDQ8/j8ORRDrjMD6qAoITweiBb3kI8WCuDQY=;
        fh=SWFb/jWiRNaTWrWJgrX6g10SFMeiahkudMc/kQeoVPI=;
        b=tq24EDurEDp/uCuqR/uhMpNglJp93kjlw5eWqNDb10oF0FF4NdVx++MceJa65m0/9w
         /CUdLz4QL2Mn7a6a9Bb0+mTuZ0VXDvCYiHwDlwCPavMnAtFC+sa0ewy6A7ithdFFRORg
         lP7JDgiXV4qu/VNsyCzC2jPOyyZ5b5KnCye+T4vkf+d5IlVK7z7jJ1emqo/6kgtignBF
         rV1o/nL8leit4RLHiOvWN0IyeiUsUjoyAnWDN2hAUG/3MK5Rpka8ornDSYoR+RS0/eV3
         ecdhXWpkL3taYs0O/sk+p54ZTAnDUWmdpfrot0TG7/mGAdRc7eyi1Qti6rXmAO0a9s28
         LIXw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.223.136 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a4c7df89f7si229115985a.294.2024.08.10.11.15.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 11:15:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.223.136 as permitted sender) client-ip=40.107.223.136;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-39-CbXxVQCLNu2wAh9xWAtx0w-1; Sat,
 10 Aug 2024 14:15:16 -0400
X-MC-Unique: CbXxVQCLNu2wAh9xWAtx0w-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 58D8C1955F3D
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 18:15:15 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 339B73001FD6; Sat, 10 Aug 2024 18:15:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3052030001A4
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 18:15:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 834EE1954B0E
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 18:15:13 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2136.outbound.protection.outlook.com [40.107.223.136]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-652-VgMO1LaXMyu5ZlYF7sv8Vw-1; Sat, 10 Aug 2024 14:15:10 -0400
X-MC-Unique: VgMO1LaXMyu5ZlYF7sv8Vw-1
Received: from DM6PR18MB2506.namprd18.prod.outlook.com (2603:10b6:5:181::30)
 by IA2PR18MB6010.namprd18.prod.outlook.com (2603:10b6:208:4ac::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.30; Sat, 10 Aug
 2024 18:15:04 +0000
Received: from DM6PR18MB2506.namprd18.prod.outlook.com
 ([fe80::6751:842f:6630:688c]) by DM6PR18MB2506.namprd18.prod.outlook.com
 ([fe80::6751:842f:6630:688c%6]) with mapi id 15.20.7849.015; Sat, 10 Aug 2024
 18:15:04 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Karen Lewellen <klewellen@shellworld.net>, Paul Merrell <marbux@gmail.com>
CC: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?
Thread-Topic: taking a screenshot using either Links or e-links?
Thread-Index: AQHa6ocv1PPds3AkdUS1QAwsi7mPaLIfVwEAgAAhDQCAABkngIAADKiAgAEvB10=
Date: Sat, 10 Aug 2024 18:15:04 +0000
Message-ID: <DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2@DM6PR18MB2506.namprd18.prod.outlook.com>
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
 <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
 <CAJ1g4g9XWT9LpS_69mqzxHKQKOYkmyWbSE_kiwbG3d_=2snvLA@mail.gmail.com>
 <Pine.LNX.4.64.2408092006300.4155520@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2408092006300.4155520@users.shellworld.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR18MB2506:EE_|IA2PR18MB6010:EE_
x-ms-office365-filtering-correlation-id: 75868a44-1e0c-4589-6f16-08dcb9685b9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|69100299015|376014|366016|1800799024|7093399012|38070700018
x-microsoft-antispam-message-info: =?utf-8?B?N3lGWGk5RFVsZzdaSVNjdlcyWU5XdEZCRi8xR2gvdlhMUmpMallWWnAySjJw?=
 =?utf-8?B?MFJIRjdDQUhOOUVyNmJtdjZ3S3NzVFY2M2lDeTA2bGhzMzRSR0VlV2M3WkNn?=
 =?utf-8?B?eWFOUXJyTGZ1VlVuaWxTejNEbXBlK0VFaXJRd1NDYnJ1Vm1hMnpjekJCckg0?=
 =?utf-8?B?alJjWmxibTcxWXU0OGpnZTFGeXVqbUlJUkY2Wlc1RDNxVE8yU3dqQVhYeHB5?=
 =?utf-8?B?UTVaR01mNGFGSitGakV0TG1PVXc3enBHakQ5bXlOanpySjVwT0RMVWwya0hx?=
 =?utf-8?B?MndIZk5CUGZjRmtxTDBLNEdtZk9QRW03RHVtR3lPWmhXenZyV1hmVmFaN1d3?=
 =?utf-8?B?WkM5WGkvM3pJNVV6Z1djVFdTYW54WnBueWJneDdySUt0djVkMFk5Yi9CazBO?=
 =?utf-8?B?NVdWSXBOYUI3VERpOXluVFFGVzdqVWJNc2NjWFFaRG9wOTA5Q2czTFZkTWVJ?=
 =?utf-8?B?K0xWcXI0NE42YWhpcllBNjhQclFpSG9QRlZKcFJHZWhkVmxuWXYyRldteUpU?=
 =?utf-8?B?T1hYV1hoY1dldEhwMEwyWmNnS2J3Y2ZFN0lNS0loek9zMnVTWXc2UGZrVkMy?=
 =?utf-8?B?c09Db1k5Z1ZFVG1naG9GT2V6aCtMVTJ4ZS85bnNSZjNaakNodXNLcE10d2hC?=
 =?utf-8?B?MlhyZmtGK0FWbG5LakJOdzhLeHZjd1hFL05aeitBQytZdUVWWTR3enZQWlB2?=
 =?utf-8?B?TW1WN2ovd2Z3eWptMFVOeHR2MVF5NDFkMzB0UksrekRLbldXbC81dEIrVlJl?=
 =?utf-8?B?WmRVMXp3RWZtUjVRcWdOWDRBTzZvdVV5cFJzWnlZb2pBUUY1ZmhLbUpldVBZ?=
 =?utf-8?B?bkZuS1VYZGpmTjhzOWxqVHFkaDU5VS9YeFMwbXZZclN6Y2RQZEc4cjJZdVRX?=
 =?utf-8?B?UlNKbjVkUHRjaURtRjRURkdrK1dibVpGQ1Q0dTdRSkZ6NnRieTBveVgyYkF3?=
 =?utf-8?B?T0x6NWdLcy9ndm9BanhVTERyenRsZUV4OXZxTE5yR1VZZlZyZDBaTGNnN1RV?=
 =?utf-8?B?NVpVcjdSVFdkL0M2VTFSS3FqU2wvcExkbUgwYk1Qamc2YlJEUWEyMy9SK3NW?=
 =?utf-8?B?Z3JCcmdUeWVoeS9lTEs4dyt2NE5TRUpDNUVzaVpzeit4eHFhTCszdnFTeXlR?=
 =?utf-8?B?LzVTYU9SWDRIYUxsUDhOTE9IL3MxY1RDd2JPdi9NbllUSW9kUjdIaDZ1R256?=
 =?utf-8?B?REl6UjdHdTU3V3FjSXdQcmRhM3UyZm52Qk5CVk1GWm5ZV2FRRXJ4NjE1LzV5?=
 =?utf-8?B?UTJNM3RYeDl6cytGRmgvV0oxSmNCemxtMUNaUENmRFVkc2FjVGFVeHgwUDY1?=
 =?utf-8?B?RjhiUHZta3JaaGovSkJGQTRwRkVFS3VwOEdVZks2akkxazJEa1g5YmhIalU0?=
 =?utf-8?B?TTVsTmNTRVlNSTA2TmMyWEVIUFpPbjA4UnJ4eFZkRjJoNVkwRHdlaDZjSncr?=
 =?utf-8?B?VGQ4alJCdjFwMW9MYTVhem00emhFbHBSaXFCNVVaeTBIcnJNUWpFS1ZqWVpG?=
 =?utf-8?B?aHp5eGErN0FacjZMZTRDS3RLS3hmOXlHSEdkbFhnWkZzQisrUHdoS0dXb0xq?=
 =?utf-8?B?dERWMDNuNTFvMm9Ya2ZvdU81SzNFQmtQMWdEaW50SDlEeHBSNzNHQlAvNU9k?=
 =?utf-8?B?VEk3WVJMYTN5UjZZUzdMcjlLSHJEVktHRStrZmhLeCtsb2ZESmJ2eUh3RWNK?=
 =?utf-8?B?NDIvSG5sVTVsVWoycGNxU2syV3ZGRFNZSDNzakZNK1pZM0QrYWRhTnpQZmtU?=
 =?utf-8?B?NGN2Rm5PbTZlYjE2L1V1dVRIeUw0NWtpM0pud1V3eXl3TmlubW10QmVPVFFR?=
 =?utf-8?B?SVJrTXk3T3FUOUhOallSaDZFSHRsQzNMdTFZTzFlMS9kSGg3dHNUaXZSSzdX?=
 =?utf-8?Q?2DVMuV3TOZGqv?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR18MB2506.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(69100299015)(376014)(366016)(1800799024)(7093399012)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eitxNjZVYkYzYXUvbjdGdmE2Zk9wMFNKdTdBRU9YYmw5cmlRdFRIajdyV2lV?=
 =?utf-8?B?S1pYSDhHd1prenk4UlBKNWNtU1BZNUx3SnhGZ1VrZWVFMEpyc1dGMEVadXps?=
 =?utf-8?B?TTFlRXg4UFhIYVh6bDJzTWpiVVpnVmpURlp1U1BHQWszcHJPT0xtb3A4Qk9S?=
 =?utf-8?B?M0NoZFkvejZRZDdqYTI4WjRiNzBoZEMyVENlK2wwK1VzWThuL1ZOMW5kc0p6?=
 =?utf-8?B?bkhOTEozdCtkRFhsK1R5OHk2R3dyZ0ZwbnhFZVIraDkwVFJkYTN5WDZFOCtF?=
 =?utf-8?B?QWszRysyT1Z6M1ZSMDlHeDZEd2F6MFVucDdHdUoybVRRU3IrYkVlYTd4Q2hK?=
 =?utf-8?B?bFErdjNQQS83b0hEZ3JyQjhMeklLTHVaekx5ZzdycExGaERZc1ZvUmE5Y1l1?=
 =?utf-8?B?SXg0MytMT2FJbExhUmNkd3NkL2MxblV4S0V0OUVUTWY4NU5aWkM2OVN0RG1V?=
 =?utf-8?B?UkxOaWFhR1RyMDFGQjUxOTRVQlkvRkJOY3QvWjA3Sk1DQjk3M3hZQkpKS1Ft?=
 =?utf-8?B?ZktqajkxdGhtV0VQVWUxdTV2WEpHWkx0VGVxSEIySUJFeDRYR0JoVHdtclV2?=
 =?utf-8?B?N2Q4RDhrQ29pM1ZhcnluLzdwL1ZuL2pidWV2eGpCWjIrWTBTVTRaQTBMNkpl?=
 =?utf-8?B?bnpQWVFWTEUyelZxRXowQThUOHJxYVpjaGJHT29qMFMrVGtSZnhIcHBKYnhX?=
 =?utf-8?B?cWtMUC91SlFBNzY1Z0t3aE4vN3FnT1JrUDZDL2ZTOVJqanBSanpMRk5hV0tI?=
 =?utf-8?B?VUdrUGE2NUNKRWNNK3B5ZGVvWEJQOEY0WFdUT2V0NWZTTEVnRGU1SDNxZkhP?=
 =?utf-8?B?Z0w5ZmdXazg5ME5vVzRGZi9VNFBnL1JOVjc5dWVNYnZmbzAzMDJLK0UwYUFh?=
 =?utf-8?B?aGRUK1Btc1hJdjhiSG1IaGJ2WnZLeDhPWitwbjVwcUVrQ2J6dVRQVTlaQ0tU?=
 =?utf-8?B?Z0VUTmswVGc0WHEzYTZPSUFCNGl6K0haVmRxYVVaTTQ5V0drTnlWTkFURHNu?=
 =?utf-8?B?U2pJZncwYVNKRjdVU2pTSHAxemljL2w3S3dUNVJPWUlzSTJSdFF6ZmJVQnoz?=
 =?utf-8?B?RVhsQVhaT1N0OWwwSStFMUFIZHU0eVd4MEdiS3AyUjdvNUN6ZHRpMnk3NXI3?=
 =?utf-8?B?Vjcra01RSHRiOW5raFg4OEJSZXVLTUF3VDB3QTJsZytwaC8zTzdzbzZ0KzhD?=
 =?utf-8?B?N1VKamhCTnlia1JMZUdkcHEvcnFVQVcvQ2lybSs1R1AyWDFBeUNJdmZVeTFz?=
 =?utf-8?B?WkxVSDJTMUZpZit1T3dHSlRsZ0VtdU9UUEhoc0xjODNYa2JoQXhFb1BEQ2No?=
 =?utf-8?B?SU9FQ0RScysxaFp6NFpSUThKY1F6ZEQ0dXdVWFZMS0VWeUxSVEtyTFk2aUNs?=
 =?utf-8?B?ekNUK2VjS2s0cnR0NVJCRFlPdUlrenlGcHFRdkRUVlVzV0F3NUgzMlNOUFpp?=
 =?utf-8?B?NzJUZkVhU2xtQWh0RmozQUJLRmpzVDVNVnJneEJQbEJaTk9HZDFDbVlzWUMw?=
 =?utf-8?B?bVNuRmV4Ymwrb1F3QkduRGtrUWozdjMzTnhtdEJ2VndwTW5BSWVWU0FKaDVD?=
 =?utf-8?B?SzExSmxxMG5kSFRqSUJRaXZkbkxSTUw5RDZMS0phZUhnTUpEVno4WExkOEo3?=
 =?utf-8?B?TWZNUFBBSHQ2YVNYTHhtUXE5ajZISmlYTWw4WVFQSFVMd09qRGQvZ0VYWWFx?=
 =?utf-8?B?NHUyY01vWkhtOWZpM3Q3UkJNUlR5NjZFc0VZSDBMNndZblVhMFRQRnNsRTly?=
 =?utf-8?B?KzRZQXdKRk5UdVhYUFFyckQ1ZFVpakJFWGFkWURjU0lDbE0zeTArR2w1UmJ0?=
 =?utf-8?B?ejRuS1BhckNsbDdUZVFrL1BSbUZvQXRYMGYrUmE5ZktqRFVLdG1SOXIrakU1?=
 =?utf-8?B?bmhPcDJXV3Q4aFFjOElBa09nL1hRaXBveU5CZWhjR3ZSTHVrVmNZaE1Wa1kv?=
 =?utf-8?B?T24vYWJoQ1dXVmVLbDdrNXFSRldpZE9lMW1ad0Jqd3VoVU9KZ2k2clA3dzNu?=
 =?utf-8?B?MUZJV3FmSTF1TENIZmtuSFhHMFhjK01kVlVqN00xcGcwSWFpRUJYR2FUT1Vw?=
 =?utf-8?B?cnljVUt1SUdaS0swTkJhZzZDdDB4TWE1UnJZdzQ3MnBMbjRZNmg0bU1yWDdl?=
 =?utf-8?Q?UNGqHHabgAttdt5TZgIOA2L6D?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR18MB2506.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75868a44-1e0c-4589-6f16-08dcb9685b9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2024 18:15:04.4245
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: toPfQ6XYjtkqbuhA7Hje6Eiw7E3YdNJb97pNQ0lN5UHaw5wO86Mdce18C++lw1M/2GJkcOSp2lvNBaeEtel/+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA2PR18MB6010
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2DM6PR18MB2506namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.223.136 as permitted
 sender) smtp.mailfrom=cstrobel@crosslink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

--_000_DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2DM6PR18MB2506namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82Looks like 'p' to pri=
nt to a file in Lynx.
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=
=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=
=82=E2=80=82=E2=80=82=E2=80=82https://defkey.com/lynx-2-8-9-shortcuts
[https://defkey.com/images/program/lynx-2-8-9-2022-03-31_02-08-02-original-=
size.png]<https://defkey.com/lynx-2-8-9-shortcuts>
Lynx 2.8.9 keyboard shortcuts<https://defkey.com/lynx-2-8-9-shortcuts>
Lynx is a text-based web browser that runs in DOS, Windows and Unix-like op=
erating systems. Started in 1992, Lynx is the oldest web browser still bein=
g maintained.
defkey.com


________________________________
From: Karen Lewellen <klewellen@shellworld.net>
Sent: Friday, August 9, 2024 8:08 PM
To: Paul Merrell <marbux@gmail.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?

I appreciate that wisdom.  However, I would deeply prefer the browser
specific solutions if at all possible.
I am using a Linux shell, which may impact how this door works.  further
the  extra links  compile on my desktop is for DOS not Linux.
With appreciation,



On Fri, 9 Aug 2024, Paul Merrell wrote:

> On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen <klewellen@shellwor=
ld.net>
> wrote:
>
>>   well..how would that save a file in a way to share it with others?
>> print screen creates in theory a printed copy.
>>
>
> On my system, it brings up a screengrab program.
>
> --
> [Notice not included in the above original message:  The U.S. National
> Security Agency neither confirms nor denies that it intercepted this
> message.]
>                                                =C2=AF\_(=E3=83=84)_/=C2=
=AF
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2DM6PR18MB2506namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82Looks like 'p' to pri=
nt to a file in Lynx.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=
=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=
=82=E2=80=82=E2=80=82=E2=80=82<a href=3D"https://defkey.com/lynx-2-8-9-shor=
tcuts" id=3D"OWA875292bf-4894-3a2d-f275-6a6311d06c85" class=3D"OWAAutoLink"=
>https://defkey.com/lynx-2-8-9-shortcuts</a></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9kZWZrZXkuY29tL2x5bngtMi04LTktc2hvcnRjdXRz"=
 class=3D"LPBorder564634" style=3D"width: 100%; margin-top: 16px; margin-bo=
ttom: 16px; position: relative; max-width: 800px; min-width: 424px;">
<table id=3D"LPContainer564634" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td>
<div id=3D"LPImageContainer564634" style=3D"position: relative; margin-righ=
t: 12px; height: 150px; overflow: hidden; width: 240px;">
<a target=3D"_blank" id=3D"LPImageAnchor564634" href=3D"https://defkey.com/=
lynx-2-8-9-shortcuts"><img id=3D"LPThumbnailImageId564634" alt=3D"" style=
=3D"display: block;" height=3D"150" width=3D"240" src=3D"https://defkey.com=
/images/program/lynx-2-8-9-2022-03-31_02-08-02-original-size.png"></a></div=
>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle564634" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor564634" href=3D"https://defkey.com/ly=
nx-2-8-9-shortcuts" style=3D"text-decoration: none; color: var(--themePrima=
ry);">Lynx 2.8.9 keyboard shortcuts</a></div>
<div id=3D"LPDescription564634" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
Lynx is a text-based web browser that runs in DOS, Windows and Unix-like op=
erating systems. Started in 1992, Lynx is the oldest web browser still bein=
g maintained.</div>
<div id=3D"LPMetadata564634" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
defkey.com</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>From:</b>&nbsp;Karen Lewellen &lt;klewellen@shellworld.net&gt;<br>
<b>Sent:</b>&nbsp;Friday, August 9, 2024 8:08 PM</div>
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>To:</b>&nbsp;Paul Merrell &lt;marbux@gmail.com&gt;<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>Cc:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Re: taking a screenshot using either Links or e-links?=
</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">I appreciate that =
wisdom.&nbsp; However, I would deeply prefer the browser<br>
specific solutions if at all possible.<br>
I am using a Linux shell, which may impact how this door works.&nbsp; furth=
er<br>
the&nbsp; extra links&nbsp; compile on my desktop is for DOS not Linux.<br>
With appreciation,<br>
<br>
<br>
<br>
On Fri, 9 Aug 2024, Paul Merrell wrote:<br>
<br>
&gt; On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen &lt;klewellen@sh=
ellworld.net&gt;<br>
&gt; wrote:<br>
&gt;<br>
&gt;&gt;&nbsp;&nbsp; well..how would that save a file in a way to share it =
with others?<br>
&gt;&gt; print screen creates in theory a printed copy.<br>
&gt;&gt;<br>
&gt;<br>
&gt; On my system, it brings up a screengrab program.<br>
&gt;<br>
&gt; --<br>
&gt; [Notice not included in the above original message:&nbsp; The U.S. Nat=
ional<br>
&gt; Security Agency neither confirms nor denies that it intercepted this<b=
r>
&gt; message.]<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =C2=AF\_(=E3=
=83=84)_/=C2=AF<br>
&gt;</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2DM6PR18MB2506namp_--

