Return-Path: <blinux-list+bncBCAJTHUAX4NBBNO3526AMGQEW3FSLDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F3EA2323F
	for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 17:50:00 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-726603f9478sf699287a34.0
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 08:49:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738255798; cv=pass;
        d=google.com; s=arc-20240605;
        b=GRwHMRI4Bn8/Bhf6uf+2R2kYFVc8dCF1PCpJ6oGa9/D/uVRB8h+qxP+nUNM3gNcL4o
         NBDzOzt90thteEVHHoCnWfwRQHFYWciLFBvx9nzF5Unahu/MjzyxI0rE7Zp3fGwrlnG5
         En4MGj4JQYY+BXLxWJxbT4ahxghVN3QU6+4UQD2R9gYyNOdX+SknmYghtvksXPaKCSza
         CImnJdkJcXXSXw8ybDNNlupyXwXG6xn3M6YdnsOfstvWzXy24FWacnNGs8I8Hdq52FOS
         pll5wG/32kdnGi5IFLrXiyvNkFD8JFT+FdPwFY0JPPSS4aEhtHzvF/7CzgFGZZRDhLv9
         DV+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:delivered-to;
        bh=+aI4v0uC8L56wtbmDNDMa/sftFvP++jRWMyGb7EuY9o=;
        fh=LTJ5FcCG05hJ3DbdAhUXFO+B9X4ieafpawrT25FGcjY=;
        b=KXZJ1oUxlIgHPU9j0OFBkKuhauc0zBFIleqQCTuBu++yFGlmn41IdYJvJmBJA8qTXt
         /dkxUzr+BA70/YVxFD6onbimGhrnDbC6BvyNIfAtMCCTbN6yQ+r7yftflUqIG3rCJrKO
         qMx2yPKFC7okZ1R6zOR5zDL5zUixZk4GQWmmjeFdBIUP+NHaTmukPWpVW/W1eE1Qr61f
         etJIWSV8z2ie5wTbgTbAcaGJDmAc3KEK7Ml6m4JgGeLnHfazKinkPRBAEr6QFFqAoliN
         2M76xetgZq2vn9N1Okey3XztkX3Lp4c3eHm1lHb13gyRSUnEHxndzDRmjhyRo1pWNmGx
         Zkvg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.236.128 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738255798; x=1738860598;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to:x-beenthere:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+aI4v0uC8L56wtbmDNDMa/sftFvP++jRWMyGb7EuY9o=;
        b=RphaD4FSnhl6+5VS6zyyGeFlR1lufb8BRPWPM0ysidzZ73ibgPOlifOpC3vRYGcdG+
         HpNyFfbi33TtHqEFQw1atZ/uz1cKHl7vp9f6yHFsnz4q2Pw+7savYHaUytyqsA+/sfqz
         n/mnwswINa1GitvOy8DzvCXM27Ov9lj5z3km+B8w55hl3g0aXT8aymtoks9hdhJs3mKf
         0JnGlLa5Tw/szIHD11SeJihK/qWgVBbdhHsAAR2hLxbjQI3DKxIMzaQ3B3zX/E6mtquf
         xwH1yb804Ks1X0f8xzoVc2jbWdiqrVoqde/WFG+9d9jb8BbL0TB2vNU/90LXag+OvRJo
         Z/pw==
X-Forwarded-Encrypted: i=2; AJvYcCWa+Kdi3E7w0X3zg88IcBHVj2lShuDMjUJTZ1XGktgyvWKRQqPS9BvYFZSpI7P5DvL03rFgJA==@lfdr.de
X-Gm-Message-State: AOJu0YxYLSnqThj9cJQ5DCMgwCyua28LmDpK8PCLP8ie0vBuN7IcYUMP
	rRjxuzqhbI56nfKFairHmh4pVixCLgOrieWDhJKVCuBhicgMI62ww76Zp8veHyo=
X-Google-Smtp-Source: AGHT+IHLKGNz6M6GJc1dSOe60k7W2P5kVBRaFCwHSg96TtGdqajVm3Uoa6LZoDCK4NKaXTdxwjoGyg==
X-Received: by 2002:a05:6830:6709:b0:71e:1649:25db with SMTP id 46e09a7af769-726698bf108mr348833a34.2.1738255798232;
        Thu, 30 Jan 2025 08:49:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:ba17:0:b0:5f2:d36c:1775 with SMTP id 006d021491bc7-5fc1861a5d8ls49066eaf.0.-pod-prod-00-us;
 Thu, 30 Jan 2025 08:49:57 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUXy2hDB1LpeL+74Kk1EeVafec5p07spRqg18qiGUcFkTGc7E9pqC7Dsxw/3W+xyv/n0dL8q3AIihtq2A==@gapps.redhat.com
X-Received: by 2002:a05:6830:6788:b0:710:a425:d6b8 with SMTP id 46e09a7af769-7266040988amr2673368a34.14.1738255797118;
        Thu, 30 Jan 2025 08:49:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738255797; cv=none;
        d=google.com; s=arc-20240605;
        b=i7lGFw6HNkQou3QA/V2thMiVufQ/rhKK39LnaHy8dDo4A6VOQb62nKKRvEBfichtSc
         MsAKnUt1HU/IlCPINOAvAKb/6asLrWOj/AcCJg4fcEXgcHuFeQfVi1s7iJXZda69jXvG
         I/8bL4sXxz6Fq6PrVrQz73pcYrdqR9njGoO+glp/icbZAhjaNyv9Dsb3Zaejcuszv30c
         L19Npk/xIsm78xJIEnxVFbzDW3oOC8QwVXi6EoGGKndPt6B8gf66dEB+jCk1Zb6544rY
         vvsGDQYMdoFfu8FDLsGMrTlEeuruuZ56iYjyCPbvdcuGbJ5JVMKRein+MmHzo5aTyZlw
         4nKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:delivered-to;
        bh=tjsfW3MqnJ5fY6t8yHTwadYMBN2tp5YXjcHOvsfw1Vk=;
        fh=Xm3E+cbs2XASfE+mO41OqC60e+UBR/x5K9zBJRUuZGM=;
        b=EvITCLZIHk4Lq3TlfhpQ5oL4X9et10G1k1xMQ7DYk6OCRgM+d6LDxlon1sYG4HEb+Q
         0LqbkfQQ4G0zF8Uue2DrozDqwNgkzcT9cFuNLI68zXebAPWUg3MRvyG8eoUQuNoo1u6O
         qCtTPjHMOq9weiSeawn5p28PklrmC0Ljlo7ozjyBhZKh1bKve3Nt5Ru7AmVff7lMBo91
         PbAfMcqdkKMJJ9Nhu9wZWz0bBupszGyj7t7xobKsFWk/kDmr2r+XWLNlwbFsGh/ZFMjq
         jIkHsGR4+oCBQJ0Tvb/nz+eE9gYZ2xP3uBQJUvo21fFouz5lrCNfR3aqhNcsgmEdwa+I
         Ps5g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.236.128 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 46e09a7af769-726618c05b8si1842098a34.297.2025.01.30.08.49.56
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 08:49:56 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.236.128 as permitted sender) client-ip=40.107.236.128;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-204-rN1QszY0PWGyCEW8mC3Znw-1; Thu,
 30 Jan 2025 11:49:55 -0500
X-MC-Unique: rN1QszY0PWGyCEW8mC3Znw-1
X-Mimecast-MFC-AGG-ID: rN1QszY0PWGyCEW8mC3Znw
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C66218009B7
	for <blinux-list@gapps.redhat.com>; Thu, 30 Jan 2025 16:49:54 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 1A27D1800267; Thu, 30 Jan 2025 16:49:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 16BDE180035D
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 16:49:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3CC311955DDD
	for <blinux-list@redhat.com>; Thu, 30 Jan 2025 16:49:53 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2128.outbound.protection.outlook.com [40.107.236.128]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-48-bkWGRF-tMEypBsiX26kY8g-1; Thu,
 30 Jan 2025 11:49:49 -0500
X-MC-Unique: bkWGRF-tMEypBsiX26kY8g-1
X-Mimecast-MFC-AGG-ID: bkWGRF-tMEypBsiX26kY8g
Received: from DM8PR18MB4421.namprd18.prod.outlook.com (2603:10b6:8:3f::24) by
 BL1PR18MB4263.namprd18.prod.outlook.com (2603:10b6:208:318::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8398.20; Thu, 30 Jan 2025 16:49:45 +0000
Received: from DM8PR18MB4421.namprd18.prod.outlook.com
 ([fe80::39b8:9b93:4cf7:e76b]) by DM8PR18MB4421.namprd18.prod.outlook.com
 ([fe80::39b8:9b93:4cf7:e76b%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 16:49:45 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: matthew dyer <ilovecountrymusic483@outlook.com>
CC: Martin McCormick <martin.m@suddenlink.net>, Blind Linux
	<blinux-list@redhat.com>
Subject: Re: Control-Alt-F1 What is it?
Thread-Topic: Control-Alt-F1 What is it?
Thread-Index: AQHbccce8Zw6tLFSjEOCooTsFCkEZLMt0Kt4gACMIQCAASzBuA==
Date: Thu, 30 Jan 2025 16:49:45 +0000
Message-ID: <DM8PR18MB44214CA8D328FA22FB5C7C14C7E92@DM8PR18MB4421.namprd18.prod.outlook.com>
References: <E1tcsd6-000YH1-1N@wb5agz>
 <CO6PR18MB44191CF4BEB8CE9214BFD620C7EE2@CO6PR18MB4419.namprd18.prod.outlook.com>
 <742860A5-86AC-4976-8B82-8E2C87DA017E@outlook.com>
In-Reply-To: <742860A5-86AC-4976-8B82-8E2C87DA017E@outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR18MB4421:EE_|BL1PR18MB4263:EE_
x-ms-office365-filtering-correlation-id: aadbf257-6cd5-44b5-bb5c-08dd414e19e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7093399012|4022899009|38070700018|8096899003|7053199007
x-microsoft-antispam-message-info: =?utf-8?B?NXVGakFLK3daWTV3TTV3WGlTcWxnRERYdllmbzdjUVQ5cnVEQnhHODVrbklo?=
 =?utf-8?B?aGVrazBoUUJWd0NaMGtFNGt3RWZWSkFzb05uYTVkb3pHWUhCUWQ1cmtna1Vo?=
 =?utf-8?B?NE1IYnVwTzhXcjhxamFnZ1VVNFl4QmxjNFFTMmVOOTROMzZ5VUJwQUFnWC9D?=
 =?utf-8?B?TlpNR2oxbEV4dDdVZTZyMUVWcHJkSGtHanAvaGJuRm1obnVnZ3pQbnV5Ulhv?=
 =?utf-8?B?Q2xtYUtOQTJ1aWFVNFd6Z1NFZTNWU3JUTjd3MTBIVm0rQWFvcURXL3N2Q1hQ?=
 =?utf-8?B?Smg3QVVSU3I0SmNiZnJWZXhHTHVTdkRxQVFROHVxaDYxZVRkOWtTT1VRcXFh?=
 =?utf-8?B?TG55cTNWNlQxTEJCWFE0SVhpOFZYK0hUVlF3M0NGYUdOUlJES0VJZ0pvZktr?=
 =?utf-8?B?V3JLeUhzTUpGZm9kSW9iWmZaUW5ZRlRWWllwRjI4b2krRkVxcnRxV3RYMFBY?=
 =?utf-8?B?T3ZuUnErKzVzbGRUM3R4UlNrV2RVYVE0MzZ0VGVNa2ZFSFRuUEFZVzM0ZmV1?=
 =?utf-8?B?YU1NNmxNYVM4b3g0WWtsV3JSdDR4WEtseUt0cFlaaTBGVm1TRUc0Z1EvUU9x?=
 =?utf-8?B?WmRVNmFDeHVKOTRXUEJaOVJwSm9RcG5HNkZPRTFHVjJOUlZGWGg5eE1Ob2lZ?=
 =?utf-8?B?MTNIb3RGS2tPVUNwMlZrNWhNazF4amRVS2ZDSEJFTENydGZwaGFwS0VWTnRH?=
 =?utf-8?B?MTZUZWNsL1hoS1ZNZG16RmNPMjRTUjUzN0VadklseHM1SXdXOGZpUjA1YU1M?=
 =?utf-8?B?aGxvelAxaWJsb2JRZWx5eEhqMVFGWUxzd1h4MGlqWmtPRDhHUkNJbFNyRmlm?=
 =?utf-8?B?ckpINjQ5UEl1QkxKVG9KMmMweTNaN1Q0Z3RYck00UmlkY000UjNTRGZaQmVy?=
 =?utf-8?B?eXdrd2JlQmo4dzZyWm0vejZkd20rSTBkaTNxdy9UOW4vR3JhV0c3QXBOVkdH?=
 =?utf-8?B?Tm1SY3NtbG5nNmcrUzk0Rnh0anVXWGZrZExkV2Jmd1lrTytwTVM2M0lDcE94?=
 =?utf-8?B?NW9Rbng1T2EyOTFJbFp1L1ZnS0VWSzRkTnBiU1pEajBwcmRUbmdCT25sbTlC?=
 =?utf-8?B?cE5XVkQ0Sk1MU3pFemQ0eU1qKzZGdHZ0NE1FSUQ5T2U1TFpvd25OTDNXVU9B?=
 =?utf-8?B?QzNwdVZ1dEpKK0d5TFJMNGxQVTUva1VmU1ROVk1lZnBnWEVaNWJpTitMUW4y?=
 =?utf-8?B?dkJqZTJyNmhZd0V5M1lPRHZuV2VZS3haQ3BjQmhuOXhJR1RDNEthenp4ODFx?=
 =?utf-8?B?UWFuaVpONjkyaGcyZ2dIU29mVXM0a01PN01ZTzBUZGJRa1JhVXFMczFlTFZM?=
 =?utf-8?B?M08vbXNYUXc3bGVaQUtCY1NkaU12UEo2aEhKbmo4QnRXVUNCK3lsRk0xQTF3?=
 =?utf-8?B?b25XZ3JqK25zZ2Q0V0RaTXZ3Yy94WXQzbGpBcGZXQXJKMm85MXdLZEdRdXlW?=
 =?utf-8?B?SFAwSDY2ampqRG5JNFcvVXBWRTV3SnN0UkhMZ2FxWHBOd0p2ZjdzYmcwdFE1?=
 =?utf-8?B?cE5KbFcxa2tmRlJMT2M3ZHJtRUorazBMZnRqeEtJYmlQRXFkOFdYK0hoVEE4?=
 =?utf-8?B?Sk9PYnBvQzgydTBMa1lLN2RNUUpyOXhHS21uYWZDMTdaMkxXaEcyWk4zeDdL?=
 =?utf-8?B?VEFWemM2cWw2dkdOOFR5TDN1N1JpQlBHRzBmTjZBYmY3MDZVUVdOeWV3bVhi?=
 =?utf-8?B?OUEveHV6ejNWN082SE5qSkYxNTBIWWFCM1JhK1h4eDF3SDl3V2Z0bER2RU1Q?=
 =?utf-8?B?RExrQ0U2d1A0Nm1zSnp4dHE0VnBpSVJYUGhkZ3pWYXlRZDdZckF1cW41YWJl?=
 =?utf-8?B?WGFpenlobW80Tm1aajh6TG1abTdlUDk4Ly9PZjVaVmt6K1pCeXV1SDJFYWx2?=
 =?utf-8?B?SFliKy9RYlNQUmFKaWhDVm5HNzVGdzdqbFRqYWJNOUNJSnJrUHdsSk82bDll?=
 =?utf-8?B?bnJPUWVXV0I0eWJmcFNkbnZHanNvcXF3OGJoKzBiVXMvSjNOUkI1dVl4VCtO?=
 =?utf-8?B?eTFwV3dsR1Z3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR18MB4421.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7093399012)(4022899009)(38070700018)(8096899003)(7053199007);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SkVLZDIybzluWmVzQ05XZGpCL1U5UGRKZDZJMFNSZERXbWpiQVlCc2hvZFJm?=
 =?utf-8?B?QVc3WjcxZnMvV1JDOG14bnBoTEpaYVlUWUhQWmZNZ0pxVWNvMEhaQlcxYWRX?=
 =?utf-8?B?VTZVM3hqYTJLT3NRanhkNmx4Nnp4N2tiT3AxRy9BWEtBRjlxNnFWMDRzcWZS?=
 =?utf-8?B?WmFFMHdSWUpUTDk4TmRBTEVLRk52U0NkdHlmZ2I5NURHeDdhWG1TemVqWEMw?=
 =?utf-8?B?L2c0bmZSWURoVXAvU2VwOWVhVm5KblUxdEt1dERlY3JqajRwTXNmcFAzVFBj?=
 =?utf-8?B?cFV4VmdMODRjclRrMU8zTVQzVlQyWlRQTmhNdThSTkZiVmZZSER5VUtCYzM4?=
 =?utf-8?B?T3pJYlN5Wi9zZHM4RHREVkNCRk1acXc3emgxSVMzeWQ1Q1M3UUtYRkcwZ2ZK?=
 =?utf-8?B?ci9pTllVZE9kSlRYQWw5NTB6OHFwbWpUY2phMGEwbXIxRVBOOGZpY2F4Uk15?=
 =?utf-8?B?VW5qMU5OYjV2RVhOOGZ6M1RFT0V3dkIwTzZ5ejl4M0p3N0V3WlZ5SnduU08r?=
 =?utf-8?B?eTBFVHd4ZVBtbTNOV1IxL0o5OXYzMjlPbmIrR0p4N0Z3OTNObU8wK05Jb3NV?=
 =?utf-8?B?d1huSGN2MTZsWkt2VHJhemFwOGtxMzdHNTBkOXpGQWpva2tmRHI0Z2NGaGl2?=
 =?utf-8?B?M056VmR0TzhNRy9XZFRLNEJkREUyTTdWV1hJaEprWDNLMXJZUDVkbW1YOEFo?=
 =?utf-8?B?RE8yVGVxMjRweGltMGdhVzB3ekxPbFd5QzFWZDF4eHk0bXdKbC9VMVFKWk5H?=
 =?utf-8?B?MFJPV2RZTEFkSUtPdXhKRHlFVjRpTVFVMEs0K1dqNU1WZU1jMk54ZWdaaEow?=
 =?utf-8?B?cW5lV1lsbmR4VnlPd1ZhbU1meHdQUk1acUlUc3QrMDJGTWFmTmt4MFVtQURW?=
 =?utf-8?B?UFc1eHlwL09iaFhXZnBKK216R0U1NmJhNi95c1ROQXptYmw3Tzdtb0pMK3Nr?=
 =?utf-8?B?N21HOUFKcm03b0lxTUVkU3YzQlZXSmw4VllBTTkvaEREK3kvTWV3L1VCQUF4?=
 =?utf-8?B?cFNWZmFLYVIzL1lIdldwMFAxK2diazhvNEFuMTEvZklxME8zeVdGT1YySmFN?=
 =?utf-8?B?dEkwcEwrU2o1eWZ2UXVTczNBd1dtS2NkekFjU2crYityT0FTdWoxVi9wVThQ?=
 =?utf-8?B?TUxNSHlLbnR4eDdwYzluUjRrS29NdmZReEtETTREcWFJMFREdlpWNm54K1Br?=
 =?utf-8?B?WHVieXVMbGxwL2pDelJrVEw1eCtWbkJNQVVWdXk0S1RWNE5icWduOUxZbllH?=
 =?utf-8?B?b0Q0N1VpL0JLemNpeFBYbnYzWWt6VlE5RzRhbDg1RzNYNVVCYlk5SGxEbG5T?=
 =?utf-8?B?VzI2bkpLSGJZWE1TeW1odHBtSjJhWEtNLzdIeENrWmR4Q2FTUVdrVVNZZ1pk?=
 =?utf-8?B?ZzlGeXVvMjBnQ0gwbkhJRlBmKzg4K3NXUXRPQjVLTzlZYThmQloydFFlZ3E5?=
 =?utf-8?B?RDIwSmJxU1ljaUNNTmxJWXJmOCtvaWJGWlhFSE9rN3BvVnRidFI5NlYyc085?=
 =?utf-8?B?SVdYUUdwWWhBOTB0cUp2bzlUaVNFK1kxM1c4SXo3ZmdiS3lCQnBpVlpZMzd4?=
 =?utf-8?B?VGROSnl4THk5MjVERGpvQVlLalUrTHhqdmpUV05QbXRTRFFydkcyQlczdkdN?=
 =?utf-8?B?aXJVaExzUHhiZXVVNk5JRWRNU3pEM0Yzdk1Eb0UvVm1sc3dxa0U1QlI0ejc4?=
 =?utf-8?B?NTFUa0xVMk54V0VMVFpsOEhNTHdiSFYvaEFUVG5yekZRUXVWczJWVkUyZ0cy?=
 =?utf-8?B?T2U5Q2tjd1p3UVNNdGZVc3JxMjhTaW1kZFIwTDkyYTdZVjhEUU5LQ2Z1Z0hJ?=
 =?utf-8?B?NGNRRkJIMUhrRkFTcHN4NkpRZWcwVjN1RVhQUTZqVHB1YTRpczNRbEsxNzIx?=
 =?utf-8?B?YmNocXRhYWMzd3NHS3RmNG9TZXZrUTJHNXFRbHBERTF5Y2RQSHlRVHBKV2Yx?=
 =?utf-8?B?T2l6VnlPM3lZKyswczBUQW80VkxweDFWWDU4TDRQeXhkeXp5U1ZqRWVLbVIy?=
 =?utf-8?B?QSszTmhYVU54N1JZUVRKLzVrK3VhNzRQY0liSGQvRWptbDQ0Mm5QZGlvQjQv?=
 =?utf-8?B?b290VmRKRUErRUFJc2owaUVWbElYWWM5YWFZeWtmamZlUmtwcU8zYlFTdmsw?=
 =?utf-8?Q?BBBa5KeVEQNmR+yqQvegihcV5?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR18MB4421.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aadbf257-6cd5-44b5-bb5c-08dd414e19e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2025 16:49:45.3887
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qxx1GO+Xr964X4det8x03+KvVN9b0CuZFFVX8RRniazlxZuDxgzL0o24SXQf4Pof2f9p8GIytn2KT7J4PKsyTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR18MB4263
X-Mimecast-MFC-PROC-ID: fobFpTeAqbetW_ne5pBvEPDmyckj7gntCvquLeh8heg_1738255788
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rjgn6QccnMI7U28lzIqIKEwuOvQcknqeUiUSWghvwdk_1738255794
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM8PR18MB44214CA8D328FA22FB5C7C14C7E92DM8PR18MB4421namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.236.128 as permitted
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

--_000_DM8PR18MB44214CA8D328FA22FB5C7C14C7E92DM8PR18MB4421namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Both work in Bookworm for me.  If you are still using Pulse audio instead o=
f Pipewire, that might have something to do with it.  You can read the Debi=
an Accessibility FAQ for some ideas.










________________________________
From: matthew dyer <ilovecountrymusic483@outlook.com>
Sent: Wednesday, January 29, 2025 5:50 PM
To: cstrobel crosslink.net <cstrobel@crosslink.net>
Cc: Martin McCormick <martin.m@suddenlink.net>; Blind Linux <blinux-list@re=
dhat.com>
Subject: Re: Control-Alt-F1 What is it?

Hi,  I have never gotten speech to work in a conceal unless the guy is disa=
bled.  I either have to use one or the ogther.  In bulzie this was not the =
case, but since bookworm this does not work.

Matthew



On Jan 29, 2025, at 9:32=E2=80=AFAM, cstrobel crosslink.net <cstrobel@cross=
link.net> wrote:


On my Bookworm system pressing alt-control-f1 takes me to a normal console.=
  There is sometimes a delay, or the speech doesn't work right away, but th=
e Braille shows it.  Once I log in, it is tty1.  The graphical console is t=
ty7.
I thinkIt may be a bug of some sort.


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Tuesday, January 28, 2025 3:56 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Control-Alt-F1 What is it?

The Linux box I am running is a HP PC using Debian 12 or bookworm
and I have all the consoles talking.  The first console is orca
and the other 4 are not orca but command-line consoles which are
nice when not needing the GUI but there is 1 mystery.  Orca is
always the window that prompts for a login and, when I do that, I
can bring up the command consoles by pressing function keys Ctrl-Alt-F3
through F6 after getting pipewire set right and installing
espeakup.  They all are working fine but if I press
Control-Alt-F1, I get nothing and am curious as to what that
brings up.  Everything is silent and nothing at all good or bad
happens so there must be something somewhere that just doesn't
talk.  Here's what the who command reported:
martin   tty2         Jan 24 12:05 (tty2)

That's orca.

This next 1 is a console in which I run screen.
martin   tty3         Jan 24 12:05
martin   pts/0        Jan 24 12:05 (:tty3:S.1)
martin   pts/1        Jan 24 12:05 (:tty3:S.2)
martin   pts/2        Jan 24 12:05 (:tty3:S.3)
martin   pts/3        Jan 24 12:05 (:tty3:S.4)
martin   pts/4        Jan 24 12:05 (:tty3:S.5)
martin   pts/5        Jan 24 12:05 (:tty3:S.0)
martin   pts/6        Jan 28 12:31 (:tty3:S.0)
martin   tty5         Jan 25 11:25

        One would think that tty1 would be Ctrl-Alt-F1 but it's
not saying so if it is.

Martin

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Tuesday, January 28, 2025 3:56 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Control-Alt-F1 What is it?

The Linux box I am running is a HP PC using Debian 12 or bookworm
and I have all the consoles talking.  The first console is orca
and the other 4 are not orca but command-line consoles which are
nice when not needing the GUI but there is 1 mystery.  Orca is
always the window that prompts for a login and, when I do that, I
can bring up the command consoles by pressing function keys Ctrl-Alt-F3
through F6 after getting pipewire set right and installing
espeakup.  They all are working fine but if I press
Control-Alt-F1, I get nothing and am curious as to what that
brings up.  Everything is silent and nothing at all good or bad
happens so there must be something somewhere that just doesn't
talk.  Here's what the who command reported:
martin   tty2         Jan 24 12:05 (tty2)

That's orca.

This next 1 is a console in which I run screen.
martin   tty3         Jan 24 12:05
martin   pts/0        Jan 24 12:05 (:tty3:S.1)
martin   pts/1        Jan 24 12:05 (:tty3:S.2)
martin   pts/2        Jan 24 12:05 (:tty3:S.3)
martin   pts/3        Jan 24 12:05 (:tty3:S.4)
martin   pts/4        Jan 24 12:05 (:tty3:S.5)
martin   pts/5        Jan 24 12:05 (:tty3:S.0)
martin   pts/6        Jan 28 12:31 (:tty3:S.0)
martin   tty5         Jan 25 11:25

        One would think that tty1 would be Ctrl-Alt-F1 but it's
not saying so if it is.

Martin

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com<mailto:blinux-list+unsubscribe@r=
edhat.com>.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_DM8PR18MB44214CA8D328FA22FB5C7C14C7E92DM8PR18MB4421namp_
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
<br>
</div>
<div id=3D"appendonsend"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Both work in Bookworm for me.&nbsp; If you are still using Pulse audio inst=
ead of Pipewire, that might have something to do with it.&nbsp; You can rea=
d the Debian Accessibility FAQ for some ideas.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;matthe=
w dyer &lt;ilovecountrymusic483@outlook.com&gt;<br>
<b>Sent:</b>&nbsp;Wednesday, January 29, 2025 5:50 PM<br>
<b>To:</b>&nbsp;cstrobel crosslink.net &lt;cstrobel@crosslink.net&gt;<br>
<b>Cc:</b>&nbsp;Martin McCormick &lt;martin.m@suddenlink.net&gt;; Blind Lin=
ux &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;Re: Control-Alt-F1 What is it?</span>
<div>&nbsp;</div>
</div>
<div>Hi, &nbsp;I have never gotten speech to work in a conceal unless the g=
uy is disabled. &nbsp;I either have to use one or the ogther. &nbsp;In bulz=
ie this was not the case, but since bookworm this does not work.</div>
<div><br>
</div>
<div>Matthew</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<blockquote>
<div>On Jan 29, 2025, at 9:32=E2=80=AFAM, cstrobel crosslink.net &lt;cstrob=
el@crosslink.net&gt; wrote:</div>
<br>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<div id=3D"x_appendonsend"></div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
On my Bookworm system pressing alt-control-f1 takes me to a normal console.=
&nbsp; There is sometimes a delay, or the speech doesn't work right away, b=
ut the Braille shows it.&nbsp; Once I log in, it is tty1.&nbsp; The graphic=
al console is tty7.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
I thinkIt may be a bug of some sort.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
<br>
<br>
</div>
<hr style=3D"direction: ltr; display: inline-block; width: 98%;">
<div class=3D"x_elementToProof" id=3D"x_divRplyFwdMsg" dir=3D"ltr"><span st=
yle=3D"font-family: Calibri, sans-serif; font-size: 11pt;"><b>From:</b>&nbs=
p;Martin McCormick &lt;martin.m@suddenlink.net&gt;<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt;"><b>Sent:</b>&nbsp;Tuesday, January 28, 2025 3:56 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Control-Alt-F1 What is it?</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div style=3D"direction: ltr; font-size: 11pt;">The Linux box I am running =
is a HP PC using Debian 12 or bookworm<br>
and I have all the consoles talking.&nbsp; The first console is orca<br>
and the other 4 are not orca but command-line consoles which are<br>
nice when not needing the GUI but there is 1 mystery.&nbsp; Orca is<br>
always the window that prompts for a login and, when I do that, I<br>
can bring up the command consoles by pressing function keys Ctrl-Alt-F3<br>
through F6 after getting pipewire set right and installing<br>
espeakup.&nbsp; They all are working fine but if I press<br>
Control-Alt-F1, I get nothing and am curious as to what that<br>
brings up.&nbsp; Everything is silent and nothing at all good or bad<br>
happens so there must be something somewhere that just doesn't<br>
talk.&nbsp; Here's what the who command reported:<br>
martin&nbsp;&nbsp; tty2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05 (tty2)<br>
<br>
That's orca.<br>
<br>
This next 1 is a console in which I run screen.<br>
martin&nbsp;&nbsp; tty3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05<br>
martin&nbsp;&nbsp; pts/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.1)<br>
martin&nbsp;&nbsp; pts/1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.2)<br>
martin&nbsp;&nbsp; pts/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.3)<br>
martin&nbsp;&nbsp; pts/3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.4)<br>
martin&nbsp;&nbsp; pts/4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.5)<br>
martin&nbsp;&nbsp; pts/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.0)<br>
martin&nbsp;&nbsp; pts/6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 28 1=
2:31 (:tty3:S.0)<br>
martin&nbsp;&nbsp; tty5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 25 11:25<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; One would think that tty1 would =
be Ctrl-Alt-F1 but it's<br>
not saying so if it is.<br>
<br>
Martin<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
<div id=3D"x_appendonsend"></div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt;">
<br>
</div>
<hr style=3D"direction: ltr; display: inline-block; width: 98%;">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><span style=3D"font-family: Calibri=
, sans-serif; font-size: 11pt;"><b>From:</b>&nbsp;Martin McCormick &lt;mart=
in.m@suddenlink.net&gt;<br>
<b>Sent:</b>&nbsp;Tuesday, January 28, 2025 3:56 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Control-Alt-F1 What is it?</span>
<div>&nbsp;</div>
</div>
<div style=3D"direction: ltr; font-size: 11pt;">The Linux box I am running =
is a HP PC using Debian 12 or bookworm<br>
and I have all the consoles talking.&nbsp; The first console is orca<br>
and the other 4 are not orca but command-line consoles which are<br>
nice when not needing the GUI but there is 1 mystery.&nbsp; Orca is<br>
always the window that prompts for a login and, when I do that, I<br>
can bring up the command consoles by pressing function keys Ctrl-Alt-F3<br>
through F6 after getting pipewire set right and installing<br>
espeakup.&nbsp; They all are working fine but if I press<br>
Control-Alt-F1, I get nothing and am curious as to what that<br>
brings up.&nbsp; Everything is silent and nothing at all good or bad<br>
happens so there must be something somewhere that just doesn't<br>
talk.&nbsp; Here's what the who command reported:<br>
martin&nbsp;&nbsp; tty2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05 (tty2)<br>
<br>
That's orca.<br>
<br>
This next 1 is a console in which I run screen.<br>
martin&nbsp;&nbsp; tty3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 24 12:05<br>
martin&nbsp;&nbsp; pts/0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.1)<br>
martin&nbsp;&nbsp; pts/1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.2)<br>
martin&nbsp;&nbsp; pts/2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.3)<br>
martin&nbsp;&nbsp; pts/3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.4)<br>
martin&nbsp;&nbsp; pts/4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.5)<br>
martin&nbsp;&nbsp; pts/5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 24 1=
2:05 (:tty3:S.0)<br>
martin&nbsp;&nbsp; pts/6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan 28 1=
2:31 (:tty3:S.0)<br>
martin&nbsp;&nbsp; tty5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jan=
 25 11:25<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; One would think that tty1 would =
be Ctrl-Alt-F1 but it's<br>
not saying so if it is.<br>
<br>
Martin<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
<div><br>
</div>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to
<a href=3D"mailto:blinux-list+unsubscribe@redhat.com" id=3D"OWAe197f3de-431=
d-118b-4434-12e9d715309d" class=3D"OWAAutoLink">
blinux-list+unsubscribe@redhat.com</a>.<br>
</blockquote>
<br>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_DM8PR18MB44214CA8D328FA22FB5C7C14C7E92DM8PR18MB4421namp_--

