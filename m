Return-Path: <blinux-list+bncBCAJTHUAX4NBBTUY7G6AMGQEK6E6BZY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id EA524A24A64
	for <lists+blinux-list@lfdr.de>; Sat,  1 Feb 2025 17:31:12 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679fb949e8sf6976021cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 01 Feb 2025 08:31:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738427472; cv=pass;
        d=google.com; s=arc-20240605;
        b=fBCt41SzGC63vEqAfP2AiimfkgBZWMREVqPDjwETcIDGGenho9L/Es2zDeDnyvBIuB
         Lll5udH/iKQFIMRpq5Ax1df0EHZc4Xsp17rJ/ulIr1Hti45WS4ibgsyT4D9qXUU75zTZ
         896VarOAM48KKQh1W8f/OWtr7Gp5EzWSlklMsrdPxeNeADEz0gqGXVrF56Hl3Qvr4JXJ
         Z7cYX2xuqfpZFHiWhkBcLMz8sMZYQUgZbl9wU2s5F2VLRRokZ4mfORCoVggDEKuvnD9Z
         84OMtC4CPvnQx2DlIVfcZ9r94r3aDZV/9meEwIB4Yz/yPmZw+MdItgP4S2xHyYnfbTpp
         1kLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:delivered-to;
        bh=qO8pjEOxYt2U7Qbcn+QOFoU37qIh8dnXfTzF0LYLB5s=;
        fh=QPkToSE/2+aXyVpiE2Yr+oOrM6LYf3FstScyZeV1DDY=;
        b=Nys9SY/p5LREeFuXZK3dYg+Hq8liycu132DWOby6rX2BWFWuNh5MvBmjhcXJVvfPyq
         Bcm2xmgU7uCP9uLM84kR7FavucBJGZpktHSyLm7ZlFRBE5FEm5Fnabf3SpsoHXXTxA5Y
         5NmnKKPGpYca4AjWsmduubVghar1qhXoyEfADEH6Txlot45tFxZh09sTnBn3sCjN4i7A
         O1XKiw/HwwF6IK+x6IW4wqN+wGQUzric+AhFtG4RRcCJRGoiRdu+M02rGB2Sm1dLNgWS
         D5aRtAN2+mXbVrgBhONgmptNPAwrd4zmibh/5nbLvV2IbIwJGCOceN5dUHxqiAu/VwCh
         ucZw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.127 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738427472; x=1739032272;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qO8pjEOxYt2U7Qbcn+QOFoU37qIh8dnXfTzF0LYLB5s=;
        b=DEw+AR2C8VhYFulKYWmQKCIeWLFuQBFg0s0sa5ARahquTrU26fE51S00cyBxtOPy9r
         GhRFrmimv/QCEFRebi5VeXtk0K0YnalTtzmn3x6nD3j3FGagP7MTAtAixgQh1dqff06i
         k6f0ADYV1AJ2ykP2+r0b3PfstSiKH99t3Vo2BDMEStYscJxksPvHsPcxX0GAyXzYNlO8
         Jx1AdZ6AM58xbW1KEnr31X9q/bCw/Ck4DllZRI0tCVLWgRHxniRmcwE8dBA12WHvy5JR
         IcbiQOfmWn0p6gDV/bxsfQHvfMnlCjA+mQEqTpdl0gsGXQNBuWmovEXMpgQ04NZr0057
         3hyQ==
X-Forwarded-Encrypted: i=2; AJvYcCXscaVrjoKBQ8z4V793nnv1Jw8gIZaFd548LERcO8PEmh/TL7ahlTXOmLkYDd3VPDEDMJx2hA==@lfdr.de
X-Gm-Message-State: AOJu0YwTk7AlWq48RVvS0KtPpaAM16YI399aQ4knz6tXl9wxX5M80+PJ
	+tJub6Q268nO4HNfmpvttNl1OYnSrg/hRqLGEXJQ5c3f8q19sXn7cyxEDOUGh5Q=
X-Google-Smtp-Source: AGHT+IF2imWEvVwLGk5LlPfGDGVlLAjP628/u7J8+ShzElIMQIOsS7Bwi3kU8UmoJMQtiTkG1NDaVQ==
X-Received: by 2002:a05:622a:1808:b0:460:9acd:68be with SMTP id d75a77b69052e-46fd0a93571mr68680201cf.5.1738427471462;
        Sat, 01 Feb 2025 08:31:11 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:468b:0:b0:466:9e59:9807 with SMTP id d75a77b69052e-46fdcf8823als52242241cf.1.-pod-prod-05-us;
 Sat, 01 Feb 2025 08:31:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXeBm+QvGmsEqWXh5dfE8rqgYl3e4oQGoU/rf95DRiArvhliqjB63hYYYmRHuUGDjFBm1mJNqzOpQIlSQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:bc9:b0:7b1:492c:ba83 with SMTP id af79cd13be357-7bffccca89amr1995426585a.10.1738427470205;
        Sat, 01 Feb 2025 08:31:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738427470; cv=none;
        d=google.com; s=arc-20240605;
        b=gfzrXRmfbhepMycddSkBRQEDMRVJJDwxs5QTVqdl8RN1Pa4bODVL6oaP39e8Yow5kp
         d3EAzwlz46eV1+KGd8hjtJGf0Jzqa1iSKXhupd3Fvw2Q3oGavileb5yfSFmht9vKJYEF
         xXv9Br6L7wnXktqwaV3pBdlcrcb02bLFmvFFw+wm6nSpcVSHrfFeYdiiywLK3azbc65F
         7nuWZ7tfJrbI6ThrFJuSlqsRXdpm8IdpCzNeRqoWtNsOla+Xj2MGkMO/82WvQnQpxXyB
         x6Nyler3HNP2DDD8GvPvXrlRt47o00wUDUNdirNzk6DhWnn4zqKnueN94Dd2dz3t37f+
         6jAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to;
        bh=hKcY9VSNAHT3p1WE1u9hvmaTJPb+U2gggVArgxDL3MU=;
        fh=ljkoru3mDSlwWuUfnRUaBGiKlvgJY+XjqQAJymL/fS4=;
        b=TO8Q0d+X3oEwhWV0Wdshk5bMp7s5/XejLprPuzH5eQ2oyzy9M9vFfbepr4vi/ZIc20
         Vc5UuogBjym93FiQPqBB+RyoBd/9ERiNqNXpXy1adD6NudIuEH0acMToa+u2I+0am/AP
         D6UQp3qM2VwW7Wi+yky+r3KMYhyLAoBaJ3n215NSbs3xJt33byK+Ij3mjGUDIO/+NeoT
         wKfK7FbWIb2GOFZG8h0pD0ElirtWTwzSSbuf9vJADjhyu/IdRphNdQvWUwkRTshke9wD
         RwlGD9O43zUYGo+/j7Oz6cVNItMENSncSpbdasgf6SdkWSfocCrKs0ALOj0NSZI7CiIN
         4M4Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.127 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e25499f098si62068316d6.283.2025.02.01.08.31.09
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 08:31:10 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.93.127 as permitted sender) client-ip=40.107.93.127;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-695-RYMbfy0qOs6rj3hE8_J88g-1; Sat,
 01 Feb 2025 11:31:08 -0500
X-MC-Unique: RYMbfy0qOs6rj3hE8_J88g-1
X-Mimecast-MFC-AGG-ID: RYMbfy0qOs6rj3hE8_J88g
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5BC318004A9
	for <blinux-list@gapps.redhat.com>; Sat,  1 Feb 2025 16:31:07 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 96D693003FD9; Sat,  1 Feb 2025 16:31:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 92EAE30001BE
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 16:31:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3548919560A3
	for <blinux-list@redhat.com>; Sat,  1 Feb 2025 16:31:06 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2127.outbound.protection.outlook.com [40.107.93.127]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-638-RK4he-ImNMafKC35z2UDYw-1; Sat,
 01 Feb 2025 11:31:03 -0500
X-MC-Unique: RK4he-ImNMafKC35z2UDYw-1
X-Mimecast-MFC-AGG-ID: RK4he-ImNMafKC35z2UDYw
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by SN7PR18MB3902.namprd18.prod.outlook.com (2603:10b6:806:10b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.21; Sat, 1 Feb
 2025 16:31:01 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%7]) with mapi id 15.20.8398.021; Sat, 1 Feb 2025
 16:31:00 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Jeffery Mewtamer <mewtamer@gmail.com>, Rudy Vener <salt@panix.com>
CC: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: very strange behavior in firefox
Thread-Topic: very strange behavior in firefox
Thread-Index: AQHbdFwGIw3aYxKfM0qAxf0PQH1Z1bMx48iAgADAW/o=
Date: Sat, 1 Feb 2025 16:31:00 +0000
Message-ID: <CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <Z52ZSVy8qz18tDQm@panix.com>
 <CAO2sX32och3xLECCzV7ngK67xN4DBpZxBiXHBGTiuaYj6NDZSg@mail.gmail.com>
In-Reply-To: <CAO2sX32och3xLECCzV7ngK67xN4DBpZxBiXHBGTiuaYj6NDZSg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|SN7PR18MB3902:EE_
x-ms-office365-filtering-correlation-id: 66903dd6-eb59-4e02-f6bb-08dd42ddd056
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|4022899009|7093399012|366016|376014|38070700018|7053199007|8096899003
x-microsoft-antispam-message-info: =?utf-8?B?c0RqN1NFQ0NEYzRrNmoxNlNPZGo2TjkramwrMTFETGNpOW0wMlFYZTVGU2pG?=
 =?utf-8?B?WnhOblpQSFJPVmF3emJzc21IMkU2aFY0amhlejJXeUg1ckgxODlpNEQzeFRN?=
 =?utf-8?B?NDV6ckZQc1A5dlIwaWNQNjlGeEpKWlB1bDRmT2hEUFlxT0VhQXVSQ3RrQW4x?=
 =?utf-8?B?WDVIVVNWVUQydHNRY0pJd2N4T292TWFzRGhlZHVwYUhxdm5uUVNJOUpFeHhY?=
 =?utf-8?B?cUovek5sNVh4dWhRanhkMGY2YnZsU3dqdWlqZDcwUGk2bkMzcS8xaWlzaXdj?=
 =?utf-8?B?a2h6cWZNQkRhbkFXNzRCbTdWOUc4azEzOVE1WFczdkJibE0yTFUyYU1oN3lk?=
 =?utf-8?B?S0h0WlU0Y0Z1TFh6T0dIekc0VW04a0FYZnVUSDllVTBIUVBkMFBESDFWT1No?=
 =?utf-8?B?YTJaL0loR3lDNE93Vk5ja1JpNUdTY0s0ekdlSkxJTStsdmQya01wRDZTU3NI?=
 =?utf-8?B?d3F1QXU4RmJSNm8wdFg1SlNpSHZoS1VQQjJ0cUthdzVvNVUzRjh3WHdaSGpZ?=
 =?utf-8?B?bVpoM0YreHNOVWxzam5RMnFnMHBPNkdLV0gwUWVMazl1NHFuWXVZdkNNR2xI?=
 =?utf-8?B?dE90cHF3Z3poVy9oc1dWNU93eERJd2xQTXJpV3JKMDV5MHRiSXJNVGxjQnVt?=
 =?utf-8?B?T0swOWJNSUI0dEdqdWN6ZW5pUzZzQXpTdEhzQWt1WkFucmhXczF5enVMZFVL?=
 =?utf-8?B?VktVWFZRcE83eGJhVVF2UDcrdHVoemMxSHdtTjd6cHZTMFdRZkprMjhVeWJa?=
 =?utf-8?B?YWNpd05RMnpxZmdxMklxSGdIbU82ell5NmRKRVhOejNoNURhRU9LN0FFb21F?=
 =?utf-8?B?akVZZ1lidzJTS3p5ZWk4dWFSY3QzRGtBTUNEdEpTdDhhdjNyOUtjTWpyYmpP?=
 =?utf-8?B?YXU2dmdlTHZVWDd4clR5Y2hrTmxzLzNwL3lydnJzWER4a3RKajI5SmUzL21I?=
 =?utf-8?B?YXJ6VTFFZ1BVNnNaN0tKYWNLRnZUTE5kaWs0NkZuZzk3b1p2S2hnZmUveFdX?=
 =?utf-8?B?UCtHNWJHU3NpUnNRb1V6S1kyYmNheG1icTFPS0g5cVNyWFlrTGhXSVIzcU5u?=
 =?utf-8?B?aXloQlBQTzVvSWVvakkreU82dmRjNU5PYXFDcXUydXovb1pyTkdrUzVySVJv?=
 =?utf-8?B?VCtMS3BHNXJLT0JZZzR6eGQycm5wbWJ0enU1Nm1ORFNkNlNiU3NGMHo2RkVI?=
 =?utf-8?B?ejI1NmkxY3QyQlZhZFNSTGI2RWdQK2JGY1ExeVcwaDJDNmNPRGRBZzErWXlH?=
 =?utf-8?B?UmpXa2VVT20vdjUrM2dod3VOL3k4NGs1dmlhOUQvT2N2UEhIT2huTXhLTlBt?=
 =?utf-8?B?Um1JdVg3b3Zna3Q0K3ZrL2dhWUJXOHhTVVlrMHMvdmhJSENuUnhEV3VxeGpo?=
 =?utf-8?B?aFNBOE1XVFJLZVRIQU1uM3RCUExWM2VPNCtPQmR6MmJwNlRaVjZKZW0xci9M?=
 =?utf-8?B?MzIwc0ZXVE5vQmc3UVQrNjZKM1FnVDRBY25UU1k0Z3FndlFaNkRPa3JKTm9o?=
 =?utf-8?B?S3RLVGRHZUMyY0J5YXhjdWE1dWNrL1piS0lXOWwwUDRpVEZQbm5QTWpMM2lU?=
 =?utf-8?B?ekdIdUYvTTY1dGRHa1pTYkNjUVRGRFYwTGVIaEJmY3FJUGc3d2FsMTg3WDc3?=
 =?utf-8?B?VXQyS05haTNwTUdSeUNZZmxrcEE4QW9Cc1R4Y05LZjd6cDRlNlZPSkRQdWZT?=
 =?utf-8?B?TVU5cDhDb3BNa1B5S2pMSkJFZGVQMXgvL1JvaHVWNnBZMlZGcm5yVXA5Y3dV?=
 =?utf-8?B?dFJCQloyb0JqNDA2NG9UbnpuS0h0OVc0VWI4b0JOc2RVak1zWXAxV0Q5bnRn?=
 =?utf-8?B?QXJTeE9QbTFDZm10M0RkZXhBeGNUdmNFcG9LM3VzN05INElQOWg2VHE2cVpN?=
 =?utf-8?B?d1V4M0wxaWQ4VlFOOEg0NUJTMkVyRzVwSUpYbHlXS0VjbWRvOXhWU3I2OGFE?=
 =?utf-8?B?UjM3dHNRWkkzM0pQaEw1QVlqTWZoK2pUV2s1ZitRRVZSOCtwR2QzbTF4U3FU?=
 =?utf-8?B?NnVMbm0rZDZRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(4022899009)(7093399012)(366016)(376014)(38070700018)(7053199007)(8096899003);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmdDVERCa1IwdkhQbzRaOW9Yb0cxelV0R0xRbytVak51eFloczZXTVQyaHJ1?=
 =?utf-8?B?cW1EQmMwTzJvOHp4UmI1SGJSQmRDM0IxRDdpYVdxcWZnQVlKeElvNng4M3A1?=
 =?utf-8?B?OUVZOTN0QjVFRlZkSnl5cGgyUytNTEVTb0EzejQzeit1SURhTjlheHRmR2Jn?=
 =?utf-8?B?VkJYUUY2UkFTS3pseWtLWWYwbi9JMm5hd1htbmdFM0N6aFMvc0Z2TmVnOEhy?=
 =?utf-8?B?QUZ5OWdSaG9QV1NPSXV3WGRDWDluU21vRlJRQkE0a1ZTb1N1aVpiMzBRZTFI?=
 =?utf-8?B?QjR1MlNVODZVSnFQb2xVa1VBb3dOY0NSWE54OUQ4TGFCMkJSOWYyNzRyVjdZ?=
 =?utf-8?B?Q3dPb2tFNjJLaHBqT3l6c04wMXhOamt1eGt3bzRmZFQ2clltWW0rOE5oSVJp?=
 =?utf-8?B?SE1PdExJRTRjN0JPT1Q0b01nekRnT1BJam5PS2ovZE0zckI4c05tV2tEejg3?=
 =?utf-8?B?bW5LNDlxSUdpTWFaU21KcEU0ekwvNjlYL3J1TENyNm5UckJoNFptTlZpNHcw?=
 =?utf-8?B?c1dTdWN5U2EzVEwveTlBZENaOHVOQ0lyZERXQ05sRWY2bUhlcGNFK2E1cFlR?=
 =?utf-8?B?OUlZUnFaU2pyTHl2MUlOb2J6dnpkMTI5LzhIQzMxMm10VHhUaVhvYUxtSkR2?=
 =?utf-8?B?UjQyeklUR0JTcG9PVzl0S3NodUR6TXRLNHB2ZDhyVitSUWFQYUtlQzdGY2w2?=
 =?utf-8?B?UmN0NjBRWGorOEM2b1VQWEtOMXhnVzZPbkJNaWNncUdHbUhnNHoxRTdaZFUv?=
 =?utf-8?B?RmRnVzdGUG1NcTNXSitlejdQNVFXRFhzeU5KYmdzbUFOS3lqekkxbTdsSHhS?=
 =?utf-8?B?MHZIQno0eVh4Nnl2NWwweWhMa3Znb2FYQ0ZPYXk2SnkrOXFmVGlBakVSSStD?=
 =?utf-8?B?Zkx5WWNDNjVxSWtsQkY4OGh2M1M5ZWJUSnE3NTd1V29zcktwTDlwT1dJVDY5?=
 =?utf-8?B?eENGalQ1cTRXa3lCemVmQTNaSGpjRTduY1lOSkxjM2Y5YklnK2cwL0xSMnkz?=
 =?utf-8?B?akdxZ0R6bnMzeVU3Nk5MdXVpQ2dibjJISE1yK3VqaHhURWJVL3hZdWFTZjlH?=
 =?utf-8?B?MmlnT0ljZitWRHVRNWNrVkM1Z0RlNWJ4UGdQckd2Z2YwMnBMOUVZcHViU09M?=
 =?utf-8?B?SVloak1wM3QvbVVmQ1hURlIwWFluVW5GVDBRUkF5YXpyK3JJVjFZenBvOEJI?=
 =?utf-8?B?M2JBVTZoK0gxVE1jOXZwTlI3N1NSZExUSWpOVTJDTXFXVExoc3BXTGdWMUpi?=
 =?utf-8?B?bFBEeEdmYVhDcVpwdU5EaWQ4bGtsNmQzdGdGWkUrbzhLOFhMVkd0RmorRnVi?=
 =?utf-8?B?UEViY0hsc1ZDS1Y2Z0xmZE9YVzluYWNtTWZTSmlma2w0SldMUzBRc3FzQmFF?=
 =?utf-8?B?VFJyTmNsQ0gzSGV3TWc4VTRoM3NBTnhVKzFrTVJzNmI0SGtzSkdhempCcFQ3?=
 =?utf-8?B?ME4rN0hqWVlyelpRK3lFUFV2NDhhVXNkblBiRDVYZXpxT0wwbkVmTW9uem5G?=
 =?utf-8?B?UU1Ockd4dW9JOEkvZTZQeG9Jc0plNW9CckI4Y1gvLzNSUDNyajlDZ3EvTTFu?=
 =?utf-8?B?T0E4RWFiUWtIVW9IWnJkNENwU0hqRFd0b25jMGVtWDVaM2xKTVVvVnplNnNX?=
 =?utf-8?B?N2ZtV09zbmhzVHVFS2RLbHRDbC9mWlhaTUtnckZiaVdVVWRvdDJjWXNXOW52?=
 =?utf-8?B?T0RuM1pQazhudFhMRjFhS0dVZDNteGhSYzJVaFVKYU5VU29ORllZWU50R1A5?=
 =?utf-8?B?MWMwdUloUTQ3YlZHZmplUW1QMmxQdlJ1MmN1Z3E4RDNqZDFyNmtnbWFwaUdQ?=
 =?utf-8?B?dFN3Q0lvTTNqandtT3l1V1lJM0FjSFNuNkRPNWxNRTJUZFJqaHhVUExvYWJJ?=
 =?utf-8?B?VTRRMGJ5aWJFa29UdnZRbVpHUUJkRFE3MnVDWmJWd0ZjQ2VZSE1TTTZ3ZWdi?=
 =?utf-8?B?Y2VmL0V3R2NGN0VRNDQ0MEZ1MXVjNS9ZekE0RVhWSitvRk5yOFJXNXpGQ0h5?=
 =?utf-8?B?Ym1VL0c2cHpVK2wxRmtkZ1p6ZnNndDN5bGFHZ3VFTVh5VjB4d2NjSzJudERa?=
 =?utf-8?B?bWE1R0loSkJFVk5qNGJZeWQ1MEhUVVdXdWpyMnFCYWp5WTAwL3ozaW9xMWNI?=
 =?utf-8?Q?dwn68ivmdfOGUHr2hXQQnk7Iy?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66903dd6-eb59-4e02-f6bb-08dd42ddd056
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2025 16:31:00.6408
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8Xk5NzmIOlqESK9Rnwy9I8FtWW6hfrgR4Iv/EbQsuCGiYg/v9OSznS4zdIvHF4QfuJmQTRxikdXRFcxdMaoK7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR18MB3902
X-Mimecast-MFC-PROC-ID: XZrNu5aiDVMnHBhawUNPoc1MG3G-coZP32nUhr3bUAk_1738427462
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 1i_S9H8QDPiNf6cZSzV5mWd3SXqlpAZpe6r-9G3Q0W0_1738427467
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.93.127 as permitted
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

--_000_CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can also install the Ad Blocker extention in Firefox or something simil=
ar, to block the ads.
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=
=80=82=E2=80=82=E2=80=82=E2=80=82 =E2=80=82
________________________________
From: Jeffery Mewtamer <mewtamer@gmail.com>
Sent: Saturday, February 1, 2025 12:00 AM
To: Rudy Vener <salt@panix.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: very strange behavior in firefox

Yeah, if you watch YouTube videos as Google intends you to(e.g. in a modern=
, mainstream graphical browser, the video gets interrupted by a video ad ev=
ery few minutes, often cutting the video off mid-sentence. There is a skip =
ad button, which is usually the button immediately before the play button, =
and their are browser extensions that will auto click the skip add button f=
or you, but the skip button doesn't always show up immediately.

Downloading with yt-dlp or other YouTube downloaders bypasses the ads, whic=
h is why Google and the developers of the downloaders are in a constant arm=
s race of Google trying to prevent people from downloading and not sitting =
through ads and the downloaders working around Google's efforts to break th=
em.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com<mailto:blinux-list+unsubscribe@r=
edhat.com>.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2CO6PR18MB4419namp_
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
You can also install the Ad Blocker extention in Firefox or something simil=
ar, to block the ads.<br>
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=
=80=82=E2=80=82=E2=80=82=E2=80=82 =E2=80=82</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Jeffer=
y Mewtamer &lt;mewtamer@gmail.com&gt;<br>
<b>Sent:</b>&nbsp;Saturday, February 1, 2025 12:00 AM<br>
<b>To:</b>&nbsp;Rudy Vener &lt;salt@panix.com&gt;<br>
<b>Cc:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Re: very strange behavior in firefox</span>
<div>&nbsp;</div>
</div>
<div style=3D"direction: ltr;">Yeah, if you watch YouTube videos as Google =
intends you to(e.g. in a modern, mainstream graphical browser, the video ge=
ts interrupted by a video ad every few minutes, often cutting the video off=
 mid-sentence. There is a skip ad
 button, which is usually the button immediately before the play button, an=
d their are browser extensions that will auto click the skip add button for=
 you, but the skip button doesn't always show up immediately.</div>
<div style=3D"direction: ltr;"><br>
</div>
<div style=3D"direction: ltr;">Downloading with yt-dlp or other YouTube dow=
nloaders bypasses the ads, which is why Google and the developers of the do=
wnloaders are in a constant arms race of Google trying to prevent people fr=
om downloading and not sitting through
 ads and the downloaders working around Google's efforts to break them.</di=
v>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to
<a href=3D"mailto:blinux-list+unsubscribe@redhat.com" id=3D"OWAbce76536-075=
e-9991-dc0a-01f00ecb5025" class=3D"OWAAutoLink">
blinux-list+unsubscribe@redhat.com</a>.<br>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_CO6PR18MB44199F98ADA357BD0F57FFD2C7EB2CO6PR18MB4419namp_--

