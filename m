Return-Path: <blinux-list+bncBCA2Z2HI2EIBB24UXO3AMGQENH554NQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B2882962023
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 08:57:49 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a1d06f8e78sf704377385a.3
        for <lists+blinux-list@lfdr.de>; Tue, 27 Aug 2024 23:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724828268; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZER3YDRGiFGlyXuWB2hjXev+zydN+npTdwDSeIzwX9XC5nftWVaotb872npLrn8Z2Z
         iR9dH2QlYjqLl+fZuq/pGgjjWawbUgtiT1RuYv7DXGqghxj7pMvsEiS9O71WoZrXbNN4
         jJF8/wnjYPwnvpoOD54ZEtHAhUmdHbRg2GIFjuZpjFRgjrCIawZyVVSMN0s/D/B70Akr
         3baYO9hiRu0hTd3N6UB/aBIaDoYwHHvDCpM4sOzl3yDlyNvFVvp8fOWHcgwLndFP+hoE
         W+H/YfzOWWW0aHNket6RwS0X0IzhWtJ1f0m0GVwkJ5LUYkrpzT/v9hnrpW0EK0G3lW8V
         T8Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:authentication-results-original
         :delivered-to;
        bh=0etj4+CTXA5bcE2t7AiEToBe/0vDmsWGyesSz6GDgqI=;
        fh=jsXdI2/RpKryKi7Nl1ILYf4TUu4hZipE1ZLWIe7kvjQ=;
        b=dUOp+nWtfC3vUssAra5q5qPExE43jA60wtY0LU6SFXvhHdnG/r4KKa+4O94Ur3TaIz
         oDC/cXKKOJ3QA+KwlzMlI4+JLainu+G4xuPdkWy/p65PHLgjSod5+l2GOyAggieOY5rW
         aKlT6b5EIPLucrKI36HemdncifRnXlLN1YdW2CWUQhoWshWq/KyyYCE2uMNuKI06P04v
         3WCJGfrz8/tmpWP0qLgUTnu1LJHjoAs0nLob+QlkxaD7X5CTkRz5VXviAM1cMEDuOfEU
         1CKG2vCnFYq2uH4BeQ96sI7dM4avxuCP52GFSeHPPJu76mSQA8j+zUsvtxkZrcPU1oOJ
         V8ZA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724828268; x=1725433068;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :authentication-results-original:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0etj4+CTXA5bcE2t7AiEToBe/0vDmsWGyesSz6GDgqI=;
        b=S/2dpPX725uD/AeJag9+qUXuIZM3bgf1KuIWMmY7wvUYIOo8+zzdgKcZwzNhT2EQWW
         Fqp+LCL93cf0V652i1ry/9fDtJZ/fxAU+Io7MvGTP4MXmB85o9DHw3FidsShD3HhrK6E
         G6j7+t7JfEEzlDBNYHIkPJI1cRrdLaDwfhUuy6HkSW7gAwZXJJhDa686fCywIyddIF9O
         M5c3RpWbOuunx5m0nNi9ZReVKNOiz8VDJLaIMcT+dlImHLEBi8jFHQt7kK7g16vseXJ6
         6awDwrGPxn/3VtBkJSRbNPSan/oVmQ2dGOIFZn1cqy8g7KKDgEbJoE7+W20uVnuKcN5j
         YyyA==
X-Forwarded-Encrypted: i=2; AJvYcCV5mEQR5VEChXaBaBcJOCNNXqSnQbN4yUsEfebRZvQInnxAIGfMw/UcgHJ3hs/FtjGZAa+x0g==@lfdr.de
X-Gm-Message-State: AOJu0Ywb0MZWW3lbb7514OjmJzzuIKh1V2Kdp+O5Vnw3V0pILkOQI54R
	xSSdF1e86hCrx7GVENSrZbJpPcmwC1IBRHKjNtjRovaFAv9waL/IsC5TIwI5Cc8=
X-Google-Smtp-Source: AGHT+IHWi7ddIfSGtHdZnC5MOogFk6V42p1dJwNAsrUW2hnbkJzPURf8XsDidNRj0MRsoeExLb6OEg==
X-Received: by 2002:ac8:468c:0:b0:455:a99:2b85 with SMTP id d75a77b69052e-4550a992c1emr118442731cf.52.1724828268328;
        Tue, 27 Aug 2024 23:57:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:198b:b0:449:2608:3035 with SMTP id
 d75a77b69052e-454fc32ce97ls15066081cf.1.-pod-prod-01-us; Tue, 27 Aug 2024
 23:57:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWI8N7Zs1LkZaaKH+6/5mJYFNgY73Z9xsmJ7A7jIN4K0cK0HjOa6MzbefnNdCd85paXbxeblRjFvhweOw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2911:b0:7a6:68fc:ac5f with SMTP id af79cd13be357-7a6897a6f70mr2096429785a.44.1724828267032;
        Tue, 27 Aug 2024 23:57:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724828267; cv=none;
        d=google.com; s=arc-20160816;
        b=rju1P9JeIKhFR/tM0qapnq48dq1jSUYYZZwrxC6M3eeVSujkx6y6H7hmBT1d0MerEZ
         S3Oy2+1Q9P1nW7LBnTfJv6VsT7HpNkm9FnkkUATmHpcQPOTwbYCyABckZwQmDw3Mhhfr
         PmFHwME9MxeIGUWTGQjDzcOE33J75mWgArgg3yN2kzZ/xixAnQnJkNDs/X6XJJ+dBx9E
         SIWNsMaMTptuMHygNdOAoUIkW26mkyvU/qFnuWefXvly9d2hQnNwgtS5zWmv33TpKZZP
         373ZcAVgwFxNFqnarkF8HF4D3XWIMAywuBoob9p8MmPtmvs51+sWPajBko/JpelpN1Mf
         3WLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:authentication-results-original:delivered-to;
        bh=CpVtxXlMGtVGjgzNSW7x9U/m2tWi9fYuxewneJWXEl0=;
        fh=qiq/2a2BT64gXwDV0ayM9yG/wJVOJ6UWT4/IdLKB43k=;
        b=G3GaVTfn1rPqjDHK85kgHkYqETjTvH/Bf52fgDto8aCbE8aDOxqkMOaJsUp6nGDW7v
         7SEolTDy/VRx1mG1LIXN6rtSrhB3pSzdTYRSEC6TE30qMkkO/bHLMsbwj1Ky0gkNdwsw
         YNJY03wNMRdHBpdF2iHdJyOXkAR2X4GIo9LhJEDRSEkmZynBWy6VwnkcFEC+fOkUvYnb
         P4FYCisVfqphyL2fjBfBqaD4R8yakOGf2/cukL0/Wkyymz4m2ScEOYPSStwBPMUfEPFR
         03BxvZl7cF1AI5AN7Ld9BOul6xbs9/OGnViJVlHJkw8Zqk4JNt8QM8h7RfPCVdXW4cqi
         5vig==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a67f3bb01bsi1694777885a.344.2024.08.27.23.57.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Aug 2024 23:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) client-ip=52.101.161.92;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-54-nGH4fzZEMMarkmadrtSS2g-1; Wed,
 28 Aug 2024 02:57:45 -0400
X-MC-Unique: nGH4fzZEMMarkmadrtSS2g-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 241131955D4A
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 06:57:44 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1EE2B3001FC3; Wed, 28 Aug 2024 06:57:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1AD53300019C
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 06:57:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7CEDC1955D4C
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 06:57:43 +0000 (UTC)
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazon11020092.outbound.protection.outlook.com
 [52.101.161.92]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-152-wrOuCA5iOpqlMAJD1v438Q-1; Wed, 28 Aug 2024 02:57:39 -0400
X-MC-Unique: wrOuCA5iOpqlMAJD1v438Q-1
Received: from DU6P191CA0018.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:540::6) by
 JNAP275MB2353.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:9f::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.27; Wed, 28 Aug 2024 06:57:32 +0000
Received: from DB5PEPF00014B89.eurprd02.prod.outlook.com
 (2603:10a6:10:540:cafe::dc) by DU6P191CA0018.outlook.office365.com
 (2603:10a6:10:540::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27 via Frontend
 Transport; Wed, 28 Aug 2024 06:57:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.224)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dmarc=pass action=none
 header.from=csir.co.za
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.224) by
 DB5PEPF00014B89.mail.protection.outlook.com (10.167.8.197) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Wed, 28 Aug 2024 06:57:30 +0000
Received: from ip-172-19-1-224.eu-west-1.compute.internal (ip-172-19-1-224.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4WtwG21ZH7zCrV0
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 06:57:30 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: eee01cfd0c6c4b648d19911ff0db7b4f
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazlp17010000.outbound.protection.outlook.com
 [40.93.74.0])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4WtwG03RwLzvPrl; Wed, 28 Aug 2024 06:57:28 +0000 (UTC)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 JN1P275MB1204.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:60::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.27; Wed, 28 Aug 2024 06:57:25 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%4]) with mapi id 15.20.7897.027; Wed, 28 Aug 2024
 06:57:25 +0000
Date: Wed, 28 Aug 2024 08:57:24 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
To: Karen Lewellen <klewellen@shellworld.net>
cc: Joel Roth <joelz@pobox.com>, blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
In-Reply-To: <Pine.LNX.4.64.2408271546030.321099@users.shellworld.net>
Message-ID: <a306ab00-7f97-0859-5fd2-2f2a27cd289f@csir.co.za>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
 <Pine.LNX.4.64.2408271546030.321099@users.shellworld.net>
X-ClientProxiedBy: JNAP275CA0026.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::10)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: JN3P275MB2310:EE_|JN1P275MB1204:EE_|DB5PEPF00014B89:EE_|JNAP275MB2353:EE_
X-MS-Office365-Filtering-Correlation-Id: bbcc889f-98d6-43fb-4158-08dcc72eaf71
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|1800799024|4022899009|376014|366016
X-Microsoft-Antispam-Message-Info-Original: =?us-ascii?Q?P3tNORhza8D3WK6U9s99KqwRV10LAJC1pUjHf0Q4QhcULqDHwXaeT0F9y7gP?=
 =?us-ascii?Q?CDqdut72TSesJ9FokIJS9l3NtqDL79kmFKr/eUACOqZuVSv/EqDNbMGiKfDo?=
 =?us-ascii?Q?wWP+CRJ2J4HNmUxGbUY7taTxupy6QvIdZ2YUY9jsdvdmIaKdpeNPYgLr4VlZ?=
 =?us-ascii?Q?YiJmRGH1qNIXoadta+1mQpfBqgqGnrWaYicvWt1RVB5m9AibLldPFO8PIcdj?=
 =?us-ascii?Q?8UCBf1+kK7DjLt+KA9JOJ5xZ2upSBJ1soUNtH7G8O2B/xj2wLbewbI9x6XxU?=
 =?us-ascii?Q?/zAtsXaAMlWU4mJcRTzrnSikdHoEIK+ER8REtD4XqF4asS4x4GJGeVq3GtgE?=
 =?us-ascii?Q?5JjxRcgE+L79ODDk3V+7RdS7zLZK1+DYHe10cDPbq+wVQtgTvM2x96nRMSYq?=
 =?us-ascii?Q?k08w9k1bjNeADPrf7j72X3GjI3+Nl5eoSaPKUHmC232y/F6Rm1Z4TtTmC/MC?=
 =?us-ascii?Q?iGVrBUrA4KBHmcSP8KAHR2dYiEfKf9/Q0Tfvj2FxOWwPYtrmthWHJyz5f3Yu?=
 =?us-ascii?Q?GtUz+BndiUxQxQ/p3EqECI0OYupMH+lK5ykIkUxAlQGBP7oI5crFDLzxFxtn?=
 =?us-ascii?Q?O3tZ8KBxSzURBXUE/f7fOsKcM9V5lneoI9RNwebt1GCoMWGznQ5M6aoz3LgV?=
 =?us-ascii?Q?HBLTV/gWp01wYImfYrr7dZIOOxML0LCBcowHbnf/IQkfXe0gQOPMGtJMaFAx?=
 =?us-ascii?Q?+guA6oucLxoMFFNnhCa6zkUmJZ76H5VK5729ue6/BwMtOYMzEaGjkCLqPYW6?=
 =?us-ascii?Q?QzrPnlpLyBwYFvO5R4luqPdZQ/usRKddh8UPAW48SczUkZifmHE3L+r8g8be?=
 =?us-ascii?Q?3hOb39cFwPciJTj7uDk4MGFnN+frinl8AFjlkb2j84w90t4BKqZGl+uk4PIY?=
 =?us-ascii?Q?BSJvZI0gRGV2LhXWEqkMxFHxYZ9WF09CcE4DWtfo1+CAbitEAhFalKLqYmSR?=
 =?us-ascii?Q?ezfqfhdskTtbL8xRtDc3Rw3qy8HN6o/Y+OGoGoWmnT3048I1DOUJJIuV3gb1?=
 =?us-ascii?Q?AsFZtxIx+ZDrJgLJL1DFlWRixLWF4IQY4wY6XIeafwH5W87rK7iai+X2ojwn?=
 =?us-ascii?Q?+Cm/Xu8TcKRlCWPTp4WSl4Ot1sNsHInGyLaq/a7lZvR8rpyqjeG05bluBqbI?=
 =?us-ascii?Q?PkXCEItErS0k/DpckLCtUu1nfBzr5HIFr22kcoLUNgJ6Ziksxk36BnxBkagy?=
 =?us-ascii?Q?TKSqrenf43yq6jcnOfNJJ0arD6qqsAOiZPFMuQVBJdpdg+7csCjZhZvs5hu0?=
 =?us-ascii?Q?7VhKe+v9/j5z1rReERZ6j6qMVgjAF5v0F88mX8VUDAhseWI4qLqhPL314gp4?=
 =?us-ascii?Q?Hyv+kw/cbWrWEXLOkVH1kDyuLGuuUhTqPFdo3HrPsVKfSQ=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(1800799024)(4022899009)(376014)(366016);
 DIR:OUT; SFP:1102
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN1P275MB1204
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.0,
 AntispamData: 2024.8.28.62721
X-LASED-From-ReplyTo-Diff: From:<csir.co.za>:0
X-LASED-SpamProbability: 0.087066
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODYTEXTP_SIZE_3000_LESS 0.000000,
 BODY_SIZE_2000_2999 0.000000, BODY_SIZE_5000_LESS 0.000000,
 BODY_SIZE_7000_LESS 0.000000, DKIM_SIGNATURE 0.000000,
 FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000, HTML_00_10 0.050000,
 IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_RCPTS 0.100000, MULTIPLE_REAL_RCPTS 0.000000,
 NO_CTA_URI_FOUND 0.000000, NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000,
 OUTBOUND 0.000000, OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000,
 SUSP_DH_NEG 0.000000, __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BODY_NO_MAILTO 0.000000, __BOUNCE_CHALLENGE_SUBJ 0.000000,
 __BOUNCE_NDR_SUBJ_EXEMPT 0.000000, __BULK_NEGATE 0.000000,
 __CANPHARM_UNSUB_LINK 0.000000, __CC_NAME 0.000000,
 __CC_NAME_DIFF_FROM_ACC 0.000000, __CC_REAL_NAMES 0.000000, __CT 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_NEGATE 0.000000,
 __FRAUD_NEGATE_FROM 0.000000, __FRAUD_URGENCY 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FROM_DOMAIN_NOT_IN_BODY 0.000000,
 __FROM_NAME_NOT_IN_BODY 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __INT_PROD_MP3 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __KNOWN_SPAMMER_ADDRESS_2 0.000000,
 __MIME_BOUND_CHARSET 0.000000, __MIME_TEXT_ONLY 0.000000,
 __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000, __MIME_VERSION 0.000000,
 __MSGID_HEX_844412 0.000000, __MULTIPLE_RCPTS_CC_X2 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __REFERENCES 0.000000, __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000,
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000,
 __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 1a250e8061e0496d8d00865f77d3e581
X-Sophos-MH-Mail-Info-Key: NFd0d0cyMVpIN3pDclYwLTE3Mi4xOS4xLjIyNA==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5PEPF00014B89.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 73d920ae-7acb-42db-cda0-08dcc72eac09
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700013|4022899009|376014|82310400026|35042699022
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?duBWNs7osMYKo8HhNsPvdm9FZJcFyrtUJtIykW2ls+X4LB6pZdDqwSmBSxxX?=
 =?us-ascii?Q?0ZmVkLmMSqcfMclUQnDfTFmov1CsY6pWxgIcUwD7f6wRoUyb09jBd89oSwPV?=
 =?us-ascii?Q?radu7fuPZ4+hwMnc7R0aogn+xbwzu8yJKB1bJBa6yChwXFs2KwpRMXHJgmpn?=
 =?us-ascii?Q?4EeG+Mtr1yhcr14uHbzcdh1EBWhqkwHwmBLPkoXiJhjJuGhzbXTIhfQ1K+Nk?=
 =?us-ascii?Q?d0A4NP4mtqcIXZkoVjdEsXPtv3xSFbkxXXy5oNC6cC41+HpF1GYRvHY2+zgO?=
 =?us-ascii?Q?4TzTWdQtcZatC+BcI3JW+K2I3dxobLv01/xeXfjL+1RGnQgKK+e2DoUlOHzH?=
 =?us-ascii?Q?c67CDJUuzWM5Y+e/ygGqOeUwixw4UXo7+eee8e1Kb6duawrzPZ9jVn+e48Cs?=
 =?us-ascii?Q?NYc/Wmz9dk99R/Z0MiEfUYR3z3RL4+cvrk5tvtx+ugjOeTAksivlgpiYMPYz?=
 =?us-ascii?Q?WStkkh71Z6D3+o1+qgCVTUOqMEqVnyPtehZfOAyRBvpMnyUAwUsE8bSskbQk?=
 =?us-ascii?Q?ab1N8Vw/fYJwo7tnYypilnJabHMtM1OEzOVTBnjxYHGaJC4b+q9TwIH0xiFU?=
 =?us-ascii?Q?A50xvFzs7fKBmmrRcPpJlnetqJnRzws6GwIZhVUuF5VdrZQ5v6XMzv6b2Lk9?=
 =?us-ascii?Q?ZAzep//UVXfNLHItlwMXAPUNvfMuJE3DafXqPActDxxrMWcHGWGzdhIhsIAB?=
 =?us-ascii?Q?U/WAmCFbqVaSUd2gu0/BGKb7w9hu2a+mizd2Bjq03/Hbc28Suohht5x3XoR7?=
 =?us-ascii?Q?clKCZxH6ehSPWB63YunC5VaLQumRQfdea+8VRNXstqRR5hMkZroy51eXx1pk?=
 =?us-ascii?Q?uOfLpk3hO6ML0MjRtgM5AqQ8GEbw/H0MQ37r/o2W1GZSIxdYwvemu57d8CtO?=
 =?us-ascii?Q?+J/mHKfD8eHurd4hA57hG3mgBERfhQH9xE0vUekVlfF8YGcqXEsi7fLt9B3s?=
 =?us-ascii?Q?rH2I4LpS0TRRnQDSsqYn9Mp37NHVAANKtoULItORaHUWckUS0HHWYNDgaYtp?=
 =?us-ascii?Q?U/47HJHgkGvt6Q2pG+RNHV76DQR0YWfo6xjSC2IUwDAYhCrVXcyvchnjgvjP?=
 =?us-ascii?Q?qjRe2ZBqdIW5RhutWQoWB18tdspWCK1i/q4XxAhzmKHPObclN/K6mZNtFbZe?=
 =?us-ascii?Q?JbLQGKv9ZHXVDXnVbVo9EsCHuoKkASbBYe82kdrfsI7Dasez2e2mDxxp82qq?=
 =?us-ascii?Q?2MeDHDg+erDE1C3Q1GKFG8nQw1V6jggKiq9ZgqpFSwTu7cqprN96eJUKUN95?=
 =?us-ascii?Q?9RlPJZqFG6/MIrLnGpbT/OjqMXE3OIroPk9K6LGBrQixoHi9K4mQA8yRjOBO?=
 =?us-ascii?Q?il8YdJBWHA8oKF9OIrIvrr8Yd5V4JlT12X1d5YnSh8uHfwQjcUEbIiZcJPDZ?=
 =?us-ascii?Q?4Vy+5ZwS1xQdfMEv4JwSGC81k2apiJ90bMKVAw8Q+blop6DJrhOegHPNPiK4?=
 =?us-ascii?Q?tUbRHGKxb60S+yE67+cOOqmONiovH7vl?=
X-Forefront-Antispam-Report: CIP:198.154.180.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700013)(4022899009)(376014)(82310400026)(35042699022);DIR:OUT;SFP:1102
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 06:57:30.4844
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bbcc889f-98d6-43fb-4158-08dcc72eaf71
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.224];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: DB5PEPF00014B89.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JNAP275MB2353
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: csir.co.za
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: wvdwalt@csir.co.za
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
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

Hi Karen,
nama and dae runs in the console terminal, but remember, your remote shell 
is on a machine physically removed from you so you will not hear the 
sound.
Dae is an audio editer which I wrote years ago.
It does not edit compressed file formats like mp3 or ogg.
Regards, Willem

On Tue, 27 Aug 2024, Karen Lewellen wrote:

> Warning! This message was sent from outside your organization and we were 
> unable to verify the sender.
>
> Hi Joel,
> While I personally have no physical Linux system, not finding a path to 
> either a synthesizer or screen reader that works for me, I am interested in 
> the work you are doing.
> I imagine it would be possible to access the software via a Linux shell, 
> using my existing screen reader tools, much as I am doing right now.
> There are certainly grant prospects,  as well as  your drawing resources via 
> traditional fundraising.
> May I ask where you are located before directing you to options?
> I dare say, much with other command line things in Linux, you will find 
> interested folks who may not experience sight loss.
> I should add that Audacity, at least when I last tried it  was fine in the 
> Mac environment too.
> Best,
> Karen
>
>
>
> On Mon, 26 Aug 2024, Joel Roth wrote:
>
>> Hello List,
>> 
>> Over the years I've posted a few times about Nama, a
>> terminal-based multitrack digital audio workstation.
>> 
>> As I understand it, Audacity, one of the most popular
>> GUI-based free software audio applications, is accessible to
>> blind users on Windows, but lacking accessibility on Linux.
>> 
>> Nama runs on Linux, doesn't require X11, and is accessible
>> without working through a GUI layer. So, it's a much smaller
>> software stack.
>> 
>> I've reached a point where I'd like to bring other resources
>> into the project. I'm wondering if you're aware of sources
>> for grants for developing accessible software or
>> organizations that would be interested in supporting such
>> projects.
>> 
>> I'll appreciate any suggestions.
>> 
>> with my regards
>> 
>> Joel, Nama author
>> 
>> 
>> 
>> -- 
>> Joel Roth
>> 
>> To unsubscribe from this group and stop receiving emails from it, send an 
>> email to blinux-list+unsubscribe@redhat.com.
>> 
>> 
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

