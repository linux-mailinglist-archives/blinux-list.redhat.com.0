Return-Path: <blinux-list+bncBCA2Z2HI2EIBBDNHR3BQMGQE6KJCM5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 334D3AEF01F
	for <lists+blinux-list@lfdr.de>; Tue,  1 Jul 2025 09:51:44 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a7fbaa097asf62816541cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 01 Jul 2025 00:51:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751356303; x=1751961103;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :authentication-results-original:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j0xTKhK1UgMmFM7LIiW1nfcDgTr35RKZEuU+rVEDn7U=;
        b=eFfabGE8si9iyBeXeBVR5/yfpE3xCaaf7IukM4Phpbsdz73A6ruqvDI+dOPkOVokaZ
         v3HBXV1vFQl8P29MPit+OievYR4+L/nl/OJa5R/8EuqlPGZv6mgTNoxv9EWdkzEPB7WV
         QPl7GkLOZ5ZIXldWiIVRtWpuypnhWzLbHQ5stlJFKrOyVV+ArJZsRzWTE73yDwOd8HJp
         bsCX6aYuihXNAMsfm3eBXPijB2EVlgB23A9CXQZA2yUmVThHOi+rE9+IyzSbgZqlkWdn
         PiwWEjYg6MTkELf5gdu+JPdWDNCNgTOf3rsYdggFNh5H4UzdiwemaJVxaHdkIncYEG1I
         DuJA==
X-Forwarded-Encrypted: i=4; AJvYcCVfjeXINs7/wM5mMxzUm1H7QPxddpU3jXL2gMz64MBgcwAXLi0mb3dz02bHlae/KQA5CEv6Eg==@lfdr.de
X-Gm-Message-State: AOJu0Yxsb1ied2r/SMRv9IVGVzCDthvj4X6zAHnwA9ruNvrCKIPunKqY
	ZjUImOyN/zcsB2vKpsldCU8crHM8upaCtryKuru7xxJZF9McypURqd4GzY0662hFcEA=
X-Google-Smtp-Source: AGHT+IGf9ZSqnxd9i78wEll80vPvw1apTL2dY+4whK2unLDFra1/zq5cfTfexb3qh0jF2abiRPSAmQ==
X-Received: by 2002:ac8:5806:0:b0:494:b247:4ddb with SMTP id d75a77b69052e-4a82e9b8105mr40078311cf.4.1751356302526;
        Tue, 01 Jul 2025 00:51:42 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZdAo3ZCUUrrdCGSqJ+wTJswfS0m4p7Ja+J2DMxCtLZ3Lw==
Received: by 2002:a05:622a:830e:b0:4a8:1902:97b7 with SMTP id
 d75a77b69052e-4a819029b6als21341371cf.0.-pod-prod-00-us; Tue, 01 Jul 2025
 00:51:41 -0700 (PDT)
X-Forwarded-Encrypted: i=4; AJvYcCXXKoBH+HM+SzrVTVD16ab2q0bjQrQ/qME9UDrRSUwzl9Ct+PgA5LFSpVzYKKd6Lu+Ghm1/kYvocOheRA==@gapps.redhat.com
X-Received: by 2002:a05:622a:46c4:b0:4a9:5a08:f369 with SMTP id d75a77b69052e-4a95a08f958mr6049001cf.11.1751356300877;
        Tue, 01 Jul 2025 00:51:40 -0700 (PDT)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc55a197si104179071cf.531.2025.07.01.00.51.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 00:51:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of wvdwalt@csir.co.za designates 40.107.141.82 as permitted sender) client-ip=40.107.141.82;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-618-OBlX5PxaOBqCDhN_YUc1wg-1; Tue,
 01 Jul 2025 03:51:38 -0400
X-MC-Unique: OBlX5PxaOBqCDhN_YUc1wg-1
X-Mimecast-MFC-AGG-ID: OBlX5PxaOBqCDhN_YUc1wg_1751356297
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C508B180047F
	for <blinux-list@gapps.redhat.com>; Tue,  1 Jul 2025 07:51:37 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C04F81800285; Tue,  1 Jul 2025 07:51:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF8841800288
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 07:51:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C46BB1944AAE
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 07:51:36 +0000 (UTC)
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751356296;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=YxGjk21TnTwuqriyGoqtn91Az1jwAiDNWCRkhq4S5lk=;
	b=HFEbSFCx3E5RTKftu78GuUm1S22Xtpi1d1W5/PdIQFgJ5lTWrvV4u6+98mFX9rEkvvRDoe
	lGrzl/ggdRysKFpcDYSfwBRMIHeNCG5FQ8dLPZFWH415JCk0R+EGX6dbNAt52Z4ndFmRhV
	KM7q+WWxfQ8aIg6Nn2xM9rQHw6IxeBxg+x8SzKNQyWEN2UR1AZyzm7AWFXzTfrY5mQnD9o
	/BNxslYWS2MtdEs7gAomHiS2T06/PKOnJxT7ATULObO4xwQ3G0sExKgFX9RLa/F6cNb9nw
	4nNq78GERlgI3y/7/r/gYN3F5pm8uz5cMMrY/qhelYVUyL0b5MHZqu4Ye5nmtQ==
ARC-Seal: i=3; s=201903; d=dkim.mimecast.com; t=1751356296; a=rsa-sha256;
	cv=pass;
	b=purTpmX/km1AH4mfEPDbsFnLZ3GLZFfvXPlo8cJpeyyhdNQiLA+tdAo9lXpNet/P43C+mO
	uIhXwoef0Y+W7PdAUn4nwSfTH61x7YjtKSkjf7cDwgf2qacgRTIJQ0XFaAt5XqXYkbh+gP
	pZvdcFa13wUs4/xBJpOwl/FOxXXuCUzFhAGqzjc/lRYBM+2keMoVSYQtEWkV1LkTbaP8J3
	dg8N5sMqk50G6ldMpew79CTCXWs2g5BhrhFWMPha2K2g1tBVr1z666kaRMz48m5DNBD1FK
	0g3G5H7M4BfvYrP0ZRyz4bvov7gt6GUBx7Ow/L/gQSSF4MmHgS4id9IrV/S2gw==
ARC-Authentication-Results: i=3;
	relay.mimecast.com;
	dkim=pass header.d=csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com header.b="e9Ln/gKU";
	dkim=pass header.d=csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com header.b="e9Ln/gKU";
	dkim=pass header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com header.s=v1 header.b=HmEyq0sX;
	arc=pass ("microsoft.com:s=arcselector10001:i=2");
	dmarc=pass (policy=none) header.from=csir.co.za;
	spf=pass (relay.mimecast.com: domain of wvdwalt@csir.co.za designates 40.107.141.82 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
Received: from JN3P275CU003.outbound.protection.outlook.com
 (mail-southafricanorthazon11021082.outbound.protection.outlook.com
 [40.107.141.82]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-3H5A5sL3Oa6Jpp1qVrFOQA-1; Tue, 01 Jul 2025 03:51:33 -0400
X-MC-Unique: 3H5A5sL3Oa6Jpp1qVrFOQA-1
X-Mimecast-MFC-AGG-ID: 3H5A5sL3Oa6Jpp1qVrFOQA_1751356291
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=Nozpr4NBWcCVrzizYZV6PQbrlJvmhfkmPUXl7TAsAuyuxvDrwDQRnYfSLAStFEAzZJNqbXbHwuajTwaDdHl+q8K2HZ5WTKbM0Po5q+7Du4eFx03igQ8AijPlxdZPIZQokBE6VwNxbWa4Un88YV5l8cI337KrT9lqS12B7tqMF0ZsCu3rT4WDPKt/LSv4PLVZF2yDUlNHNMffn25vCz8E+4W7sEG9z3dxkVbLNRk5RKf3Ib7edKW/43WVMK74iPqlo1Ro0c8b8TU03ZBs1n38a0gGrEOpd4XNqoDvfWOtecYfrYBv4V5IPlPUdeu/5bg5FHtHNsiTksIJvIjkMkk52Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxGjk21TnTwuqriyGoqtn91Az1jwAiDNWCRkhq4S5lk=;
 b=i6Y0n3quSXGPpcibs+FR9DoK+WnkU2pTPwDb7z8tG9EddOQddbE1jjxd+6uAxZCCtjowVSQ406ulI0IFMn1mxGPfH3r3JcXzHbBityfC77171KgsPJv0GfhvgS7MiLZ9pbQwF3JUgtxnmX7jCEmSuO9W+cxbvMn29BRRGnpF1ljf1NE4TVoMIeJfwCgYw+w+IDBbUzgYI52RzD8IRTmlhVycJ8S1KLh9zD9d+L2WbXS9RTJgo1N92jyiktY6P6LRVbA8tRiBZP4EzztN9adRPV+1zDVBkThfMHvs/0heZYhe8drE5WXLRjeV+qcJsnF5z4QABD1KZYaBTH0ZJgvzow==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 198.154.180.225) smtp.rcpttodomain=redhat.com smtp.mailfrom=csir.co.za;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=csir.co.za;
 dkim=pass (signature was verified) header.d=csircoza.onmicrosoft.com;
 dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=csir.co.za] dkim=[1,1,header.d=csir.co.za]
 dmarc=[1,1,header.from=csir.co.za])
Received: from CTXP275CA0040.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:1::28) by
 JN1P275MB2380.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:a8::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8880.32; Tue, 1 Jul 2025 07:51:29 +0000
Received: from CPT0EPF0000071E.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:100:1:cafe::16) by CTXP275CA0040.outlook.office365.com
 (2603:1086:100:1::28) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8880.32 via Frontend Transport; Tue,
 1 Jul 2025 07:51:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.225)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dkim=pass (signature was verified)
 header.d=mail-dkim-eu-west-1.prod.hydra.sophos.com;dmarc=pass action=none
 header.from=csir.co.za
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.225) by
 CPT0EPF0000071E.mail.protection.outlook.com (10.167.241.23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.15 via Frontend Transport; Tue, 1 Jul 2025 07:51:28 +0000
Received: from ip-172-19-0-67.eu-west-1.compute.internal (ip-172-19-0-67.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4bWZwb2spqzbchg
	for <blinux-list@redhat.com>; Tue,  1 Jul 2025 07:51:27 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: b4dbee5897ed44398018c689fe3af44e
Received: from JN3P275CU003.outbound.protection.outlook.com
 (mail-southafricanorthazon11021092.outbound.protection.outlook.com
 [40.107.141.92])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4bWZwY35BtzWf17; Tue,  1 Jul 2025 07:51:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qKYoeqACeFxZuNvJkGhxtmcFIpG33vy+j9GGESYK1DsB8c4r/JCW8Bbj9zt69DshCAnGo91mzY4k8oottBNtzVNqj9+VkQWI0LjS8LccfkuyzG860GgjgtkbOqmvu5lylJQ0mhWvd3x+jaWQ7EEOxCVEVDsEFgRvdzudjJZvam6ebCZz0mMzXgyuxDh5Yx2B1XDX7fDemZfbgqDaT0HDyOXM8DFM8RWghFIAdRq46Zh/M3QKJgb8WnEErBqwnf1nxd5p6YaWjGHRBs2JL/coZkD5/nTnnpex8PoDyeR8BaX+KHShrWecDxuiS7dwD7ZzEl/UB2UfCmsf2C6fc8GBPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YxGjk21TnTwuqriyGoqtn91Az1jwAiDNWCRkhq4S5lk=;
 b=F0hVdT+zeRAYr1g+X5jLp+ERGTKjSWYyHXP+zPKSTk8TWHpPiBoaOuFisTOcWPH+eMA3Oie6rhtzTdOMwNy/520b39QYBoOnrj2lPkOLToludS1ZnXRDPM234sCg1qw3NSK+7B5XDnqUWTvMg+uI0FnsKOChEk6r10mtDexigFV9MqTH1dRq3ASWBXAyqUq7IG9NMV1rw5g4omzMoixKjnQtxYQng7IrD3dlOLBQ5qM0vCEh5g9m6gywT+dV9BWnOeZQfzEKynRlfiXQmHWmrIOsmxA5mAw052GrMvNqXrpwYNrCqZ6Vf49Yg4wYXDRTaHqLZHdjoC8Z1Oppp2JucQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN1P275MB0410.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:c::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8880.31; Tue, 1 Jul 2025 07:51:21 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%4]) with mapi id 15.20.8880.029; Tue, 1 Jul 2025
 07:51:21 +0000
Date: Tue, 1 Jul 2025 09:51:21 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
To: rodney jackson <jackson.rodney.1970@gmail.com>
cc: blinux-list@redhat.com
Subject: Re: drive permissions
In-Reply-To: <62ade77d-ec43-4b39-94ef-c52bace6b83d@gmail.com>
Message-ID: <55821151-f759-b07f-1bfe-af99fc9d24a1@csir.co.za>
References: <405C1BA8-06F4-447E-9027-1C5AEAA63742@gmail.com>
 <c1e3cee6-2e13-4aba-8931-6adfc383cee0@mail.com>
 <62ade77d-ec43-4b39-94ef-c52bace6b83d@gmail.com>
X-ClientProxiedBy: JN3P275CA0111.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:cf::16)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: JN3P275MB2310:EE_|JN1P275MB0410:EE_|CPT0EPF0000071E:EE_|JN1P275MB2380:EE_
X-MS-Office365-Filtering-Correlation-Id: dc47e048-5b31-4c48-3eeb-08ddb87416bb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
 ARA:13230040|4022899009|376014|10070799003|366016|1800799024
X-Microsoft-Antispam-Message-Info-Original: =?us-ascii?Q?hDCTht13aY/RlPDKgjWATZXxesqRjYX1pK2WgD/JUAIHi22c134WL36N4sxZ?=
 =?us-ascii?Q?2qvYVkFZ7ewPEnzFyKYyeEyuqPhfptZueRMVajtQtkAlCnRK7rNAcCigM0uj?=
 =?us-ascii?Q?rrAlfA3eOmB6L+B5S00Rfl/1iFgWESvx7VWUg6AvbpVqpDi7bD54f/B24fcv?=
 =?us-ascii?Q?9evYbHlRHvBCFsWcTKFAEvBVNHxDcUFZSh/1VWUUUZy0cauYBvgOOgK4ltQT?=
 =?us-ascii?Q?44+mBWo8a7bGdaIO+2Gvh9TxqxfBPlTofFKdXBDl8cr/o1gpD9FxQ/Snw5us?=
 =?us-ascii?Q?Q9MVvV4NsZgv1AIj8QUwyYONjdOdJhVZnCG+SWQKGD8kHH687Ljl+0WeYgWM?=
 =?us-ascii?Q?EY1Tfgtb8HdapUS8dRq238pJlI6ZSiiEzkaZLw8Abd8wguUWLkWi0ORmNIZI?=
 =?us-ascii?Q?UCaP/PrkN1H0/VUSSYk28yFOtZC5YJmmpOLALrh2fXHisujfKtEKaMc17O/p?=
 =?us-ascii?Q?bDiTnwBAtW7gx/XoL2mLfaSHbwiYXQCZ+rSp2CvZWl2e8IoAfM34Fh+HfwJP?=
 =?us-ascii?Q?7xJlghc2jhMY2qI8L9XA6FY4t3TwS1XDGUOPUS/GaXnocNE3srazKSTMj1X5?=
 =?us-ascii?Q?MZqqtL3IDtl4doPsFWBsSChbLi33U9w3qtl3nc51BvzMakgbM+NLxE9xvRyo?=
 =?us-ascii?Q?AYCx/1Gul5kLmCOhPQCue0ui2c22/+MC7HYf5ngyjNVaBOccmu+OzxE0eMCQ?=
 =?us-ascii?Q?gN+dWRz5hIt/MshHEbH0iyMqDttk6QuNiU2vWLd5vsPs5EvVPgGV+RBiNLow?=
 =?us-ascii?Q?FUD55DNBJa5M7iNvey0ZyZ2dIEpS5Y/Mfh0p778osbIaIYM0OeKU2C8Je9kr?=
 =?us-ascii?Q?uHHVzc0MeyUlbUmuXmqmk1Pinz9bXTknWIgeM2f5fjUM4iNnll9ekcYXi6Va?=
 =?us-ascii?Q?AzXFkojdKw1EHVsMblUuBxNXSMMMbFuY32rvMqIIZIaUZx4ayJS2GNy8y7sm?=
 =?us-ascii?Q?XqtFSekg1RnZ4DKYOKIK1ICcbnv4esFYmvYUM8fSnO8tstx8jSef3Ajk1Z8N?=
 =?us-ascii?Q?IBXndFT2UXOHBYYjOzZAz2OcsPBtxUpFXokjMy3F2Yv/1UlJJ3+u1rdl6Tlg?=
 =?us-ascii?Q?WZaJkrfaldtustYX79bJCaiHlzIaaiCw28R5bkWw8/8oLGoFLZxDM1RTbLTj?=
 =?us-ascii?Q?kPAmtuVoz75A2hN1rPyPwtHAtD/O6iMqsv/5it/SjbgqapH3A/YnUkuXMuNY?=
 =?us-ascii?Q?zRJ140yH1HsvbYKUEBKZ6al8/T6PrphABiSS6wKbOSdeHgG/M5ooTdtlEYEN?=
 =?us-ascii?Q?XDwG2Zg8eWRgsW9ESCyieyEASq71nvgO/EdjHsYEonwmYS4SAgbTaPXwAk/Q?=
 =?us-ascii?Q?AHnPOOoL23pdVKfCy3dEG40fMNHqgEf6Hd2FZ7QTgfrKMbWA05NnGgQAhEJh?=
 =?us-ascii?Q?my2+CUIryFLI9bNO6Bbh/YXVKpTyqV9QT55SpCC9WhpCklkCzFPIVGfJo01u?=
 =?us-ascii?Q?c8VTp1WTHOU=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE;
 SFS:(13230040)(4022899009)(376014)(10070799003)(366016)(1800799024); DIR:OUT;
 SFP:1102
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB0410
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.2,
 AntispamData: 2025.7.1.72719
X-LASED-SpamProbability: 0.089074
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_1200_1299 0.000000, BODY_SIZE_2000_LESS 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 LEO_OBFU_SUBJ_RE 0.100000, MIME_TEXT_ONLY_MP_MIXED 0.050000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SMALL_BODY 0.000000,
 SUSP_DH_NEG 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __ATTACH_CTE_8BIT 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __CANPHARM_UNSUB_LINK 0.000000, __CT 0.000000,
 __CTYPE_HAS_BOUNDARY 0.000000, __CTYPE_MULTIPART 0.000000,
 __CTYPE_MULTIPART_MIXED 0.000000, __DQ_NEG_DOMAIN 0.000000,
 __DQ_NEG_HEUR 0.000000, __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000,
 __FRAUD_NEGATE 0.000000, __FRAUD_NEGATE_FROM 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __HIGHBIT_ASCII_MIX 0.000000, __IMP_FROM_MY_ORG 0.000000,
 __INT_PROD_COMP 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_TEXT_P2 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __PRODUCT_TYPE_MAILFLOW 0.000000, __REFERENCES 0.000000, __SANE_MSGID 0.000000,
 __SCAN_D_NEG 0.000000, __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000,
 __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_NEGATE 0.000000,
 __SUBJ_REPLY 0.000000, __TO_GMAIL 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 2e3af2c73d5a49b1afa10eea23b97371
X-Sophos-MH-Mail-Info-Key: NGJXWndiMnNwcXpiY2hnLTE3Mi4xOS4wLjY3
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: CPT0EPF0000071E.ZAFP275.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 505e0eba-eb4c-44d1-28dd-08ddb8741221
X-Microsoft-Antispam: BCL:0;ARA:13230040|14060799003|36860700013|35042699022|82310400026|1800799024|4022899009|376014
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SVFkeFJWWWlPOVlob2xwcDVGOWFTWkdpZDcxN1NZUnZmZk9NMnYwVlArQjdX?=
 =?utf-8?B?LzdicVVSZkFZWkVjRDJ5OTFqdTRTK0xXeE1EMis4OUJIUnNwYjU2MUFRRC9O?=
 =?utf-8?B?VEdoZlN3cmxYUUJxRHZoa2lwT0d6bFIxSm9MYWdZNG12NHFaY0h1Z3ZFVjJ5?=
 =?utf-8?B?aVkrMmM2UHlnbGN6ZXVPdUNCVUVCNHJzZkYvRE9LN3Nnc0E1cFdGM0ZhWmR3?=
 =?utf-8?B?MGFCbktQWkRiOXBoNmNjaFR2QjBzTUEwUEEzUXZYalVETG9uK0FOM2dFa3ov?=
 =?utf-8?B?OUhPNlcvNE5ZWUdFRGxmdzlhVFdSOVgreVkwQ1B1UjBUZ2hrbWFXbG5QWVdR?=
 =?utf-8?B?TFR6cTY1RElVTm1qclBRYkJhZ0hnbzJGTEs4Tks0c1pPZWdkRG10QTUzMzU1?=
 =?utf-8?B?NVNPU0tydkxwSVNWRXlwZzJ3TmdnN2hqMHcyVzNqVGZvZzB0NklPYkFQNS9z?=
 =?utf-8?B?c3k3bHNaelFKOG1ISkRROHNzb091a2RjdzBxTktNRWdBNkpJT1ZDUW1FNzZm?=
 =?utf-8?B?WWxpeVN3ejVPR1hGWTV6UXNLMEtVTDBxaW81djlOeTN2Z0NYaVhTOTZiTFly?=
 =?utf-8?B?Z1k0QUVyeFZvL3hweThaMDVndlVzU1R4WG9rSDNHeHN4c0h3dXVVTS8wZ3BC?=
 =?utf-8?B?YmNMbWtVVUhwMDV5WTFIMTUvelI2YTNmMkFNbDk4ZXhWSkdjRUpsUUEvbnow?=
 =?utf-8?B?bEovanJrNVVaNEEzdk03NVRhWVpTQlphR3BlQ2xDWW1MOEwrQzQzRzNtSEIr?=
 =?utf-8?B?dmx5cy83akNGMmdvV1ZYT2MrbzRLTExNSUliNWU0NEZZSUJqNURzcG5KMUl1?=
 =?utf-8?B?YWNaM0o2dnBYM29KR1VGRC9WZklqS0FMQ3JPZkx4TXJhMENPVnhudFhRT3JM?=
 =?utf-8?B?TU8zTWdrOXFHZVZtZ2hnOGx4RFE4cXFNQzlvNTVhVFBsREpGOFlxNnNOTVZ3?=
 =?utf-8?B?M084RGl6QTBwWENySnlYbzVBN0lvY0NrRzJhTFFzRENVVkROck15MCttWE5k?=
 =?utf-8?B?QnZVNHdORXB1eU90YUk2YklaZkdybDZ4eUkwU25RZjZJd2JyY0hEMWMvU3Fp?=
 =?utf-8?B?YXIweFpTeXh2b0JudWY2MzE5bmZzMmZ4QURSY3h4RkdxeWJNbXZSRVRwY1Rh?=
 =?utf-8?B?K09WSlB3UUpoOWUvb3V3OVJwTGJneFVKRCtpSlRiM2h6Z0VoN01tdEdyUUlI?=
 =?utf-8?B?bGRmWDlkSW1aTlhIOVRNZ1ExSWt3RjJIQkc4L2dteWhmQ2VxaWdVTmVWWnF1?=
 =?utf-8?B?SFlqbjBIZTc0d2NoZnBET2NIUVYzbGNZaFpscWpSdEJNSm1yVWlSK1k2bzFP?=
 =?utf-8?B?THFWQjgyK3dOZndBK3ZOS2tucjV5MWtkZU4yT1hNa1pPdUdySlNhWWlWU3Nw?=
 =?utf-8?B?c3hiTkdKb3YzejV3eC9TRVhlSXFzZ1FpaVlCRlZrTTdkQ25CaFVhZDkydXg4?=
 =?utf-8?B?ZzZ6YzFxejVPL2hjdmJ1bnBReXNEZGxENThjS1dPNGx2Zmk5NG43eWxHOG1r?=
 =?utf-8?B?eTM1NThxS3VTaHpCbUJUNFJFMExFR2VkbGtsZ2w1MFc5WXdsdFA1V1FXMGly?=
 =?utf-8?B?WjlJK3QvWlVBUGVydHpNU21hWVFkYjZSdkRkQXlMU2dOeTlOSGozK1JIVjh2?=
 =?utf-8?B?QTdWZjFsVEJqcDd4anBOeWVpVWx3ZjNLa0NIeU00V0p5YnpxeHk0d0s1blR5?=
 =?utf-8?B?dTBOVzVoRHRvclBkdC9qRytMaWdYZUxXdFJndTVwamFXSzVNcFFOVnpNbFl1?=
 =?utf-8?B?ZHppNm9hWlEzV1JvbmJFRWgxa2FicDBvajRIcE1Bdm5McUQ3VHRiYSt4bVVQ?=
 =?utf-8?B?TTZucjN0VFpwQUtUUUc5S0xMSjFWT1AyWlIzYVpJMzZQWnRseXNSSnliUTFn?=
 =?utf-8?B?VWZCdnZ6VkZpQlRKQzFLNXBVb0pJWll0OEZlZGtaNWtJMWtHY0tBaVA0VWRo?=
 =?utf-8?B?VWswVE1yV0VuaDZROFowZEdnK0ZNanAwalp0L05mTnVUM1VuV0RHY0d0ZXo2?=
 =?utf-8?B?bFhjV0hNYTBtVUJqTXEzRFJXK20wZmF1N0NpWDd4WmNxWk1DbHlPN1dmTDAw?=
 =?utf-8?Q?TPowQv?=
X-Forefront-Antispam-Report: CIP:198.154.180.225;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(14060799003)(36860700013)(35042699022)(82310400026)(1800799024)(4022899009)(376014);DIR:OUT;SFP:1102
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2025 07:51:28.8606
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc47e048-5b31-4c48-3eeb-08ddb87416bb
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.225];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: CPT0EPF0000071E.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB2380
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 4BqnpEG0DDiDn7DW1jBjhSfkol-1IpL01UOv9URR44Q_1751356291
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/mixed; boundary="8323329-1363796544-1751356281=:28797"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: wvdwalt@csir.co.za
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@csircoza.onmicrosoft.com header.s=selector2-csircoza-onmicrosoft-com
 header.b="e9Ln/gKU";       dkim=pass header.i=@csircoza.onmicrosoft.com
 header.s=selector2-csircoza-onmicrosoft-com header.b="e9Ln/gKU";
       dkim=pass header.i=@mail-dkim-eu-west-1.prod.hydra.sophos.com
 header.s=v1 header.b=HmEyq0sX;       arc=fail (signature failed);
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates
 40.107.141.82 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
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

--8323329-1363796544-1751356281=:28797
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Read the man page for fstab.
man fstab
You should get the answer there.
Regards, Willem


On Mon, 30 Jun 2025, rodney jackson wrote:

> Warning! This message was sent from outside your organization and we were=
=20
> unable to verify the sender.
>
> I have a computer running Arch with the mate desktop.
>
> it has a 2TB SSD and a 2TB HDD
>
> the hdd i use to store any data.=C2=A0 Recently i had and issue with it.=
=C2=A0 this=20
> drive was formated using NTFS which I read sometimes can have issues with=
=20
> linux.
>
> So last night i used gparted and repartitioned it using ext4.
>
> Now the drive I can mount however when trying to copy data=C2=A0 to it it=
 says i=20
> do not have permission to write data to this drive.
>
> so how can i take ownership of this drive or change permissions so i can =
put=20
> data onto it?
>
> I do not remember it being this difficult with mint.
>
> any help would be greatly appreciated.
>
> Rodney
>
>
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--8323329-1363796544-1751356281=:28797--

