Return-Path: <blinux-list+bncBCAJTHUAX4NBBZ536C6AMGQEDMZO25Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 589B5A23858
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 01:48:41 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8844560e9sf26641066d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 16:48:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738284520; cv=pass;
        d=google.com; s=arc-20240605;
        b=AtU+nZNe7J5hz+BEkQN2vRUXR7764sAZ0mT5OfMGFTfifXKeBUrKTA0HvWP+PhRvmL
         iUpK0EwlFLqHrY9y/uz3u7KSqubyeZ4UBqwzAUaWm1GYzxGqDEz+EhoYh4kdQ4osA+nx
         TtPws7CqLqIR25wdv2/41vCgXX+FqJHP4Xq2BNXPYFEIzKfge5RQyjy/di5A6CUX/uY4
         aMF/F/IvvO1tD222rtuRihJPHTDi2hg1ZIYQvwtcGghkl6B7zIoTyPc5R71FZKvqbEps
         j7TYWojK7PttQIWpTeXrEFET6GGOogP6kMlzL3ULJpzYjwn6XM4OGeRGL+FZR8sycXF3
         igiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=S9cCktKBVoXB0mkE0SufSBuZXrIwkSoqLZSr8/uuwAo=;
        fh=05k/fCB8J6ouPEjHcljhyt3cKT6j3uVOjPvt1t3WXKU=;
        b=P6ro+J/QTTHW7c84pOrYHmHTJE8pDqIFijLqijEHB3i54OSZbYPiHaoTk2FeaqQVBk
         0z/79Zh9uAAzNYbPTq7AQucmYx8O8EgptJn2J/D2qVQXSiMy0zaQ634pJtkPNSkIeCac
         33i7EeAcJVy3on4e3i7xdhKI5k7Bs09EpSiDoHV9Skj9qcLhTHQREHdESc2c92/wnjFd
         G8C/75jzhOw4CVgmuTh3PLudD2THWO5pooTu9RugpOEz/1Fx0iBlfLNqXvc9vVjSTgvC
         EWNZRDWMejG1HOvI3yKKGxu44iSiXoEaRLG6ZjfvJ1g1OKCVIhkB6+ATQSlVgqSmb+L2
         Z25w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.102.108 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738284520; x=1738889320;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=S9cCktKBVoXB0mkE0SufSBuZXrIwkSoqLZSr8/uuwAo=;
        b=iVEgjePY5oSi+mFSkmLXzqGhyhb2waP/UvVG2U3SIAssBZjeQQUas03g4cMYr48kJa
         p1WOFbADJk0Mq8YXq6OrLtqHtdcKDdDMT0ToeiZasNhOZ5rM+F0cymG0Kf+mlxRr5cx/
         5s9g1r6L0lt+MHWI6xucQrT6l2vvplmasOItlISVBg4D4GKiUfEFB8vzMku+lpQ/2NQw
         3Z/vvI15kqJk+g2StBa/nI4IN+uoVZrAM4TO06tyXpQ4LqRfMZF70DScjPpaskPIocUL
         GlYvM2Goh1KIULuxZ+UHHYojjttj4p9fIBH+lqo5YncAW/zonIS17RH75nYldoYTYxli
         AWbg==
X-Forwarded-Encrypted: i=2; AJvYcCUdDufXHYl4eozaxVBF3PRTy/LC0OT9v9ZMYO/tHz3bfBUdDz/XNKx2wG5ghlnDCnEQt+hJSg==@lfdr.de
X-Gm-Message-State: AOJu0YzhKgmnu8i8a5z33/6+ThYijtMVOUCujOzgOGm628tmtRemY5CP
	PlrWFfvnziWMribDDbk1Y+IR4miVnU7SlR1WLo4cE6ZjBPyLO167du3wOzhJY/c=
X-Google-Smtp-Source: AGHT+IFwLY3B5Ee7sqcOkrEcBfF0kWom6wDKMqLdocK2Zn57w7rHQyr8pQh5/GeCkxrBaoeJM9PdFg==
X-Received: by 2002:a05:6214:242d:b0:6d8:8667:c6c2 with SMTP id 6a1803df08f44-6e243bb958emr148823576d6.18.1738284520079;
        Thu, 30 Jan 2025 16:48:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:50d1:0:b0:6d9:1375:552e with SMTP id 6a1803df08f44-6e251e1f405ls13954696d6.0.-pod-prod-06-us;
 Thu, 30 Jan 2025 16:48:38 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUOafle2Cxk8mzKNALKqQG7OyKERDDy5tal3lu3fkv6i6k7HsrEwA8fDECh8QfSwUD1eFwUp2jIIYCXnA==@gapps.redhat.com
X-Received: by 2002:a05:6214:2582:b0:6df:97ba:4f7a with SMTP id 6a1803df08f44-6e243c5eb6fmr152332206d6.33.1738284518363;
        Thu, 30 Jan 2025 16:48:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738284518; cv=none;
        d=google.com; s=arc-20240605;
        b=Ocr7FoY27LoXqLVqMTF17SsFD6M1qe0xc/gaejYcs4BJplDP9QzWIAUoIdxFzH6zg8
         3T1mu6330ANMXCPcLryOabyQ6p80IDbdm17xsI2krMn8kl9uwJYzidwb9NjFjA75ej2U
         Knc412Qc8EPZLfxquN648nByhZbBJNxJiUJZFtoktITnfVHuWbIHbYscn5VPo2QB/Yn9
         xcHKa63+Xm5GTIBfHYVdCVyqxUrv/laMye5d+/TJPIU26XO4c/qm8fcIM91vHl2dAwnA
         qbQtLp3WjT/M1UCm6D7KxEieA+2J26M7HEq9wkwxsFF+S3NBigvSFnXcAs/YXTcWAEWL
         6+6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=nuUZ8dEqEQGCe62Oov3Phscu162Op2ZYjsHAbZNW5fQ=;
        fh=Y6nBsDXzyI5YoRECyjr7NDrMWpRpfKHyXKdHMSRae7Q=;
        b=KSfV6FDDcwEBKU4be/o7EqKvYr8a5/qvPHFpupoWpkp2bdS9+D0O+8iecEb5PqcBNQ
         2KwFoiWYNE4yoksej4C6U4fEXFGeH4xJafZFsjRbmuki/iHm1u2Tm1eeu3Je2f0MRtx3
         kcDKD+8XmAjP+fXYgPZelkvs4RfufNzSDJSX4odM0GlWXzW7yMkC7WREodDzdgXeubwp
         fX7a6QcbqFfw6YpUJIlmpMNBWLEOziToJFBRIVOz0i6vOf7KlacRQTA0VzWG7K6vNhZE
         dODYNE8QZ/iWRa2CbjTuSKuP/7oN95df6fSpAB61BdXDxp/dETSx8J4rI2MfxJiT4h+I
         CYCQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.102.108 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e2549c38c3si24933976d6.369.2025.01.30.16.48.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 16:48:38 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.102.108 as permitted sender) client-ip=40.107.102.108;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-96-rWaOAjNdPkaHRbvd81GTCQ-1; Thu,
 30 Jan 2025 19:48:36 -0500
X-MC-Unique: rWaOAjNdPkaHRbvd81GTCQ-1
X-Mimecast-MFC-AGG-ID: rWaOAjNdPkaHRbvd81GTCQ
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B402419560A3
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 00:48:32 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AE8951800900; Fri, 31 Jan 2025 00:48:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AAFC318008E8
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 00:48:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1177D19560B0
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 00:48:32 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04on2108.outbound.protection.outlook.com [40.107.102.108]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-384-mXtvcV5RNaeyIShRnQKMAg-1; Thu,
 30 Jan 2025 19:48:29 -0500
X-MC-Unique: mXtvcV5RNaeyIShRnQKMAg-1
X-Mimecast-MFC-AGG-ID: mXtvcV5RNaeyIShRnQKMAg
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by SJ0PR18MB4479.namprd18.prod.outlook.com (2603:10b6:a03:37f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.17; Fri, 31 Jan
 2025 00:48:18 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%7]) with mapi id 15.20.8398.020; Fri, 31 Jan 2025
 00:48:18 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Rudy Vener <salt@panix.com>, Linux for blind general discussion
	<blinux-list@redhat.com>
Subject: Re: orca+mate+firefox tutorial suggestions requested
Thread-Topic: orca+mate+firefox tutorial suggestions requested
Thread-Index: AQHbc10+GAu8Yfavnkq7y8E/V5sal7MwCzEY
Date: Fri, 31 Jan 2025 00:48:18 +0000
Message-ID: <CO6PR18MB4419F1C4560EF412CC589495C7E82@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <Z5vtzSncAsVlFYgN@panix.com>
In-Reply-To: <Z5vtzSncAsVlFYgN@panix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|SJ0PR18MB4479:EE_
x-ms-office365-filtering-correlation-id: 535bfcdc-daa7-48c4-d105-08dd4190f427
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|376014|7093399012|366016|4022899009|8096899003|13003099007|38070700018|7053199007
x-microsoft-antispam-message-info: =?iso-8859-1?Q?R3qgh65H2lckuX4GpJzSXYbejjGey5dljo350aHyqFF1cQgdbycl18Cnuj?=
 =?iso-8859-1?Q?Fe9OGlYsTPOl7zdkOD0iku/g4ZUaViPPcZUPjkswg0A6etePv09Nl0OGBM?=
 =?iso-8859-1?Q?wfuAhNbqe7CV3uIlqq4jvEqSFycJ3e2g8Y8n50YsVBWXorh/rJ/9nd7XB7?=
 =?iso-8859-1?Q?fhNp5bGTx5zWdP8g/ZHnmKp/nhww++coHzRvNf3cciE7pGzEtQBw52OxUE?=
 =?iso-8859-1?Q?MMplhAOLUsQFMpoFZHmCquoUyppwIbxyR4SuWxquf4DSM1bW5V44j3zN8V?=
 =?iso-8859-1?Q?9/xNKmY7uqy4WAnHyTH2K4LSziWWG9NhBCsh+GhmUoZRfOZnoGpSjGzVY2?=
 =?iso-8859-1?Q?m90YVMh9q8QppaUdhO2BNTneufpp/JFYTKnUyNzjYHoEj0BUKyklK2dpv+?=
 =?iso-8859-1?Q?NQ8a95AfCO9dM4FGhvjGMhfUdEggGXq3EUY+FPv6gYFRS8lrXqvfQWPnNo?=
 =?iso-8859-1?Q?DuwFIyJgcCGvSTBZK2Rzmt3V4C5K1LQmlLXr6QcU1VMoSRku7d8J0sJWFk?=
 =?iso-8859-1?Q?ofOh5aqDkBIJVcLZrmgdwl5evhOlh21JmsAA2BdNt/n3Jq6G5jqoYoZong?=
 =?iso-8859-1?Q?u+LhKWo+9oQKB9G0junhT6gTr3zjyHNq97+3g01uAklOB5GDe14mSbKWzr?=
 =?iso-8859-1?Q?4+iI3BfSHW9wmmXnUoqfO17jCa0VGlU+IZa2Xp5X2hqvIvgeIXX2vD+a7V?=
 =?iso-8859-1?Q?qpgGRALASnoaDGOA025pycL2v2zgSWIiGTe2e+wHC74NCy060C+rcCil+8?=
 =?iso-8859-1?Q?xU4RscCu7lnnQQZw1psHrBR+viW4g+NDoc8p+7nMttSNfiCJuZDi/XGjFH?=
 =?iso-8859-1?Q?1ex+ht1420EYMKL719vVv+96dmQ849fTNuhlI0VPesD2H3vvEYeZvS6+Ox?=
 =?iso-8859-1?Q?MtYQ7ixFSfqDc0oMGXv47GlfNKCEVVs0lxh8ENb+tReO465RRcaUgUMHRD?=
 =?iso-8859-1?Q?9n+Lj7G5gYtlMtezpeEZoCcPwk0Hhr4L/cJxxI528DcVXtwSj1I8Fz4OTU?=
 =?iso-8859-1?Q?wGbMMlWewBtzQjpH4jK13ADouEd1t3YznVbv7YiaFZ2qQbWvjCElXvaqQr?=
 =?iso-8859-1?Q?vrCGDdKYuOd7xxLAeVNiP7s1y71uXcQ2u6Uz20C8Ds3UVDg1eIRpAS07O1?=
 =?iso-8859-1?Q?6u4VH+ZlqeBIT+W82ZCHtAZrdLhYNOPaJJxrZLQ3yMqGlztvsC4Y61k1oq?=
 =?iso-8859-1?Q?PRzxSaKNyG4ArbyGbTrLAaxHhDXsJSm4hDdapHHDU4VTrjohHBMjm7gBW3?=
 =?iso-8859-1?Q?8GxuNDvho0EGeWj8ENSLTUCvgitkP6aRyaBeM4aK5rU7OYs9JQNifmpncp?=
 =?iso-8859-1?Q?bPB+RjdHY8hVRF9e1pt6UtR1zByzovrofYTtff9JBsLxRmK+F7E0OAWSIm?=
 =?iso-8859-1?Q?QKb5GiDOY8voFJ1XERdf5S26ZpaaLu3uAzt/qLBdYvpbMVw5+hjna0VVR0?=
 =?iso-8859-1?Q?jZSTp1Mka6ZcBozoaTW1asSi+dCvMvoPe0CB1A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7093399012)(366016)(4022899009)(8096899003)(13003099007)(38070700018)(7053199007);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4FVcj6V8TyRv3AyFArNKy4WbM13bvldMONWx8KdRStoznSVaqNXhSYeR5J?=
 =?iso-8859-1?Q?a6x8Odm1xsVIp35z3HjOE2Cdov5IXZj8nMkWQTWMyioYvwWrB76s0sgGGn?=
 =?iso-8859-1?Q?R/KbilR8R+dfG+YVLWdjskDHUqarse6aLZPKY64ElwUGjY7VDDBgMl/IGN?=
 =?iso-8859-1?Q?6C6NVtZLVVqYo34m9u+xgRx6crgZLWs6RZXZze+bM6NEWoNSjnM76F8M4d?=
 =?iso-8859-1?Q?JdnRaPSslriu4gUrpK7Esfl6/9H0UCXnUtF0XTUjPK0D3HCt5MBHKreft5?=
 =?iso-8859-1?Q?92yNoqfghh4XAr3my95JW/nirbAoPV4dv5f4xFmwcZCXmdsANBK3+YpngZ?=
 =?iso-8859-1?Q?4nBj1wyOmuRPCIShNvw37ICUyj9hfVRQp+63qNXfC+N8dNlRuEnHWR/fEv?=
 =?iso-8859-1?Q?fpSJ0CndWl5gafZjV55chLdKRSMseZxITQwMVGyIjd4EaGgiBQpNJt74CK?=
 =?iso-8859-1?Q?59CoRi8Z7OeZGO1qN6QpioXF8jKn3c0EZvYlSmRkrhNvtsgpSMEn/3j+a4?=
 =?iso-8859-1?Q?9oXPIoQMcz2yAw9QgCQK8bIVh8HUhwBCUveR7Wuz1hfkuKbZvaS121ladB?=
 =?iso-8859-1?Q?sxsTqB/QF3qU/AB2jyox0/2h/3antWOzXlXLZnf1SnyDb1Z1RGyY8EZ1sJ?=
 =?iso-8859-1?Q?PhNf5ODoevMYRIPN8njy1vP6fk82NTpw3rOz5rJadHFVxslvVfoPRQGn8j?=
 =?iso-8859-1?Q?1nZgY6jmRJGFxxXL2jfCnUTIvuSUMxlpH4UN/vrW8w5T/SzUbAByVr6/ms?=
 =?iso-8859-1?Q?33q+URdbtoLmkOR9BqozyTIenC/5cVbX4JEagyERqVCfOr2yOqwOR5jI7V?=
 =?iso-8859-1?Q?CiwFiI91xb/Y3BCbGT6uSyx2KCIgWwlfGNvq/eHSqbm+OnDqjZRv+JlsCC?=
 =?iso-8859-1?Q?JNf/QiNmr38D+NaLMoOK94MdMKPnkMdcKff4FCcg8q2gbJBrN44oYVazOt?=
 =?iso-8859-1?Q?0zUD8Sb1m/0zaxF1X4mkpVq64vpdFaUuqJAzujU05Gx70T/ZLl5g66T/ZF?=
 =?iso-8859-1?Q?3q6WMxcz5IXJrDAbJt5iGFZeBA1ElLsUrjWdCDgYu7AIm5vbl9WI6oEC8L?=
 =?iso-8859-1?Q?aUwckTiV/YzCkeCKR2It6CFLc9UmnYKjq77zvQ0Vf9uPmMJ/bL1C7B6HFw?=
 =?iso-8859-1?Q?1fj7YWnSK/MjXefUwBSO2aMJyUSSxH1Auyoq6CaAgwK9w6QYxMUKaE60lc?=
 =?iso-8859-1?Q?Ddp2F/uHzpMCpwjRy3SyQDz3VxVLVMZe/3ac4XNIRW9g1lDrF/HYAMPpe4?=
 =?iso-8859-1?Q?dkGhOJijMDkK0lGL2eP1fsyb/N7iquC72PVsQSuCLkZFGqPFM5gslqSLxU?=
 =?iso-8859-1?Q?um5WiLdGklgChdYEiRGheQZZoPKosLu3m1SIAFuhtydn0F+v7n/Xg4l8O8?=
 =?iso-8859-1?Q?3BWOrbyGnWmpPFpRSDHr7W0rA+mZZQ/bJoyyWl3zviU0IRND2CqUGETgkb?=
 =?iso-8859-1?Q?c9s7tzfD91WElvH1S53WUsLKG2cqGfm8TITzv0fYDtWM+qYSsPCUJojCNE?=
 =?iso-8859-1?Q?WcwTlrczOdcjLnVmEoRUheMO3OUugbLTK3jKAIbwM0lBkeFYIt36JrchWC?=
 =?iso-8859-1?Q?0z70nAEskr7CitP11sWYoLG2EOA2u1kmTbPrCFsbL0uP3TJdIsIyKNZEUs?=
 =?iso-8859-1?Q?h11gGU9K5cskWmajiCG+MsVboXp/Qd3Gz0?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535bfcdc-daa7-48c4-d105-08dd4190f427
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2025 00:48:18.3708
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R2QqHNKj9O9evAZ5dDs6Zav6NiEBrmaUMramBNOatwtlNV8dOyfsKIGh0xkXwtO2cCjDDV5apx9c0e925dwUTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR18MB4479
X-Mimecast-MFC-PROC-ID: MBRUeM2nmp1AawDmI-v653O1W5nN2qXkyGK5Di1eWxE_1738284503
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gIICNO3Qo2xM-F-CUHkjMkeZO5xlLc73gSqfAcqE5KM_1738284512
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB4419F1C4560EF412CC589495C7E82CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.102.108 as permitted
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

--_000_CO6PR18MB4419F1C4560EF412CC589495C7E82CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


I stumbled on to this Mate tutorial.  It seems to have been written with Ac=
cessibility in mind.  Using Firefox with ORCA is similar to using Windows s=
creenreaders with Firefox.  You can press ORCA-h, the help key then F3.  It=
 should say something like 110 shortcut keys for Firefox.  You can arrow do=
wn and get an idea of what is available.
Seehttps://en.wikibooks.org/wiki/Using_and_accessing_MATE/MATE_basic_concep=
ts
Using and accessing MATE/MATE basic concepts<https://en.wikibooks.org/wiki/=
Using_and_accessing_MATE/MATE_basic_concepts>
The most important element of the desktop is the dashboard.By default, the =
MATE dashboard is the horizontal bar that occupies the top of the screen. O=
n the far left of the dashboard is the main menu, with an Apps button, a Lo=
cations button, and a System button. Located on the right of the dashboard =
are the quick launch icons, followed on the far right by an integrated cloc=
k.
en.wikibooks.org


________________________________
From: Rudy Vener <salt@panix.com>
Sent: Thursday, January 30, 2025 4:23 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: orca+mate+firefox tutorial suggestions requested


I finally got orca and mate running on my linux system and now have to
learn to use them. Can anyone suggest a tutorial geared to blind users. Who
don't use a mouse?
Assume I know absolutely nothing about the GUI interface. Which is absolute=
ly
true since
until now I've only used the text console and have quickly determined
that trial and error will get me nowhere fast.

Thanks for any suggested tutorials.

--
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wi=
ld: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdud=
e.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.


________________________________
From: Rudy Vener <salt@panix.com>
Sent: Thursday, January 30, 2025 4:23 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: orca+mate+firefox tutorial suggestions requested


I finally got orca and mate running on my linux system and now have to
learn to use them. Can anyone suggest a tutorial geared to blind users. Who
don't use a mouse?
Assume I know absolutely nothing about the GUI interface. Which is absolute=
ly
true since
until now I've only used the text console and have quickly determined
that trial and error will get me nowhere fast.

Thanks for any suggested tutorials.

--
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wi=
ld: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdud=
e.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB4419F1C4560EF412CC589495C7E82CO6PR18MB4419namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div id=3D"appendonsend"><br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I stumbled on to this Mate tutorial.&nbsp; It seems to have been written wi=
th Accessibility in mind.&nbsp; Using Firefox with ORCA is similar to using=
 Windows screenreaders with Firefox.&nbsp; You can press ORCA-h, the help k=
ey then F3.&nbsp; It should say something like 110 shortcut
 keys for Firefox.&nbsp; You can arrow down and get an idea of what is avai=
lable.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
See<a href=3D"https://en.wikibooks.org/wiki/Using_and_accessing_MATE/MATE_b=
asic_concepts" id=3D"LPlnk">https://en.wikibooks.org/wiki/Using_and_accessi=
ng_MATE/MATE_basic_concepts</a></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9lbi53aWtpYm9va3Mub3JnL3dpa2kvVXNpbmdfYW5kX=
2FjY2Vzc2luZ19NQVRFL01BVEVfYmFzaWNfY29uY2VwdHM." class=3D"LPBorder629347" s=
tyle=3D"width: 100%; margin-top: 16px; margin-bottom: 16px; position: relat=
ive; max-width: 800px; min-width: 424px;">
<table id=3D"LPContainer629347" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td style=3D"width: 100%;">
<div id=3D"LPTitle629347" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor629347" href=3D"https://en.wikibooks.=
org/wiki/Using_and_accessing_MATE/MATE_basic_concepts" style=3D"text-decora=
tion: none; color: var(--themePrimary);">Using and accessing MATE/MATE basi=
c concepts</a></div>
<div id=3D"LPDescription629347" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
The most important element of the desktop is the dashboard.By default, the =
MATE dashboard is the horizontal bar that occupies the top of the screen. O=
n the far left of the dashboard is the main menu, with an Apps button, a Lo=
cations button, and a System button.
 Located on the right of the dashboard are the quick launch icons, followed=
 on the far right by an integrated clock.</div>
<div id=3D"LPMetadata629347" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
en.wikibooks.org</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>From:</b>&nbsp;Rudy Vener &lt;salt@panix.com&gt;</div>
<div dir=3D"ltr" id=3D"divRplyFwdMsg" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>Sent:</b>&nbsp;Thursday, January 30, 2025 4:23 PM<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;</div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<b>Subject:</b>&nbsp;orca+mate+firefox tutorial suggestions requested</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;"><br>
I finally got orca and mate running on my linux system and now have to<br>
learn to use them. Can anyone suggest a tutorial geared to blind users. Who=
<br>
don't use a mouse?<br>
Assume I know absolutely nothing about the GUI interface. Which is absolute=
ly<br>
true since<br>
until now I've only used the text console and have quickly determined<br>
that trial and error will get me nowhere fast.<br>
<br>
Thanks for any suggested tutorials.<br>
<br>
--<br>
Rudy Vener<br>
<br>
Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wi=
ld: <a href=3D"https://www.amazon.com/dp/B0DPN1QGGJ" id=3D"OWA47dfbeb3-0e31=
-3201-a14b-267d6baff14d" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">
https://www.amazon.com/dp/B0DPN1QGGJ</a><br>
Latest Limerick - California Pipe Dreaming Of Secession <a href=3D"https://=
limerickdude.substack.com/p/california-pipe-dreaming-of-secession" id=3D"OW=
Aac63e79d-b3ef-8ba5-e7e4-12b22dfc4049" class=3D"OWAAutoLink" data-auth=3D"N=
otApplicable">
https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession</=
a><br>
Website: <a href=3D"http://www.rudyvener.com" id=3D"OWA12c17505-9f8b-f0d0-5=
017-d68299a0b290" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">
http://www.rudyvener.com</a><br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div dir=3D"ltr" id=3D"divRplyFwdMsg"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Rudy V=
ener &lt;salt@panix.com&gt;<br>
<b>Sent:</b>&nbsp;Thursday, January 30, 2025 4:23 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;orca+mate+firefox tutorial suggestions requested</span=
>
<div>&nbsp;</div>
</div>
<div style=3D"font-size: 11pt;"><br>
I finally got orca and mate running on my linux system and now have to<br>
learn to use them. Can anyone suggest a tutorial geared to blind users. Who=
<br>
don't use a mouse?<br>
Assume I know absolutely nothing about the GUI interface. Which is absolute=
ly<br>
true since<br>
until now I've only used the text console and have quickly determined<br>
that trial and error will get me nowhere fast.<br>
<br>
Thanks for any suggested tutorials.<br>
<br>
--<br>
Rudy Vener<br>
<br>
Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wi=
ld: <a href=3D"https://www.amazon.com/dp/B0DPN1QGGJ" id=3D"OWA86710669-002d=
-7a36-78ab-d2b26fc00ffc" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">
https://www.amazon.com/dp/B0DPN1QGGJ</a><br>
Latest Limerick - California Pipe Dreaming Of Secession <a href=3D"https://=
limerickdude.substack.com/p/california-pipe-dreaming-of-secession" id=3D"OW=
Aa7087228-3d24-94f1-215b-ffdeb8fa48ee" class=3D"OWAAutoLink" data-auth=3D"N=
otApplicable">
https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession</=
a><br>
Website: <a href=3D"http://www.rudyvener.com" id=3D"OWA72d886d8-26ad-5ad5-6=
886-0dcc2caec0e1" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">
http://www.rudyvener.com</a><br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--_000_CO6PR18MB4419F1C4560EF412CC589495C7E82CO6PR18MB4419namp_--

