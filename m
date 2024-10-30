Return-Path: <blinux-list+bncBCAJTHUAX4NBBS62RC4QMGQE75JAQIY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5729B638A
	for <lists+blinux-list@lfdr.de>; Wed, 30 Oct 2024 13:57:50 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cbf496eda1sf99915246d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 30 Oct 2024 05:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730293069; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZDU0eZTcpl9j6E3moojkCfG0m2rL1K9IJB+JxVNGzpq+8doj8F97BE8OtKCJ88b5+A
         Fcryw0utHeNfy/OEo/4HEhWvVZHP0FUoGfUtL4YMYrdDZEq7kZ2F9qS0ocDOEAv3eJSj
         +aMuV1XTalooYdsEHuF/XBJ5ZhBeJ/RIJUtFFT2xhUVOIAyp/reRFu38nztloqh7y5+E
         wrXMc+lwwVgyk+TQCT7tDlPXnNxwHWtp82XQcm3hpvEIlAoN+WEkGC7WkdVi2Z1Rbj+X
         kjUemTqrFFUT35wDhoXeDwzY4Z+3m5NQOVVnvcjDJS5gY6/j4LD2lUUNEib1i20ONPWB
         +EFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=bu+6KK1YIDYy3GkAY4xFf70E2T73VmGBaiw6VYoqMms=;
        fh=o2Ialp4qmms8N17dTplIOO93EkYzxHdTyOJRwAQMSdI=;
        b=W27xf56eZ2WTGfJpxiXgH1f/U5jrHP/NLq5QMchdAM0cAkLjQptDdRniwQ8MYl+gbv
         QUEhlIU8B6sMMW3nsMZbRz6WbCAui3hAF+mpSYbhw9razf04GZjwUXmwSHqQA5ox78a8
         dF/pt0T4G9dEx6pdBZwtFlyeAlRPOZzmR7wLN/OhEOxwamagcc+rwphBaD+HsY5qXSVQ
         qgxUHDzUxvoCTmOfmh0+FJS8yZrWrNCDwkjf7/9bqXzY4sLI/qUQTIX/ptuXJBvvDNtE
         64PfQfhABuJKbsP4PE7tnN+6tl7sPniUkFpQfKr1IVzv8991auLGA9n2UCrkYqby/MoI
         0EQA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.93 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730293069; x=1730897869;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bu+6KK1YIDYy3GkAY4xFf70E2T73VmGBaiw6VYoqMms=;
        b=SxHEayf1LPWfLVPDjLppjw7ykwvj5SLwrpRb3mlr+0pMC1JwlxBG2GIBee8vb2Jm8Y
         LZFgWN1vVAJl0DgRSrU8VFOLjHEgpGaQQb57uzSevvcodZOVwhM4+KaqlQGTWYRGyQES
         rH5Y6CRnDuZC9UqvCWXw7/jQ63G4J+9Maf+QfyuVqim4q9KrbyrR3uUuW5zk3Tv4lZqp
         cTxTYIo8mNMKraDwYQBIeBQ7L5ZoyyGD7lzFUitLm6CWjYj+I4s8DsyD80nGAGQdRMDV
         SffxlxY162VgZZHNX9VsHbS1Ba3asgzE/BEbcnvwzcendZzWzGBFoPfOvhKC8sIgew1Q
         LarQ==
X-Forwarded-Encrypted: i=2; AJvYcCX9G7mreYucGRbGAA5jWJCAHQCAYhTjYY4fhqr3RH4F911ni7cdDBY/wRcD2ZGywpoMMcCDLA==@lfdr.de
X-Gm-Message-State: AOJu0YyvfJpKT+cTb8yXmUfUKe3FwrEDZ6O8DwONFY1avDzoU3Y/NM1W
	mK+i0/a0mfV5xiM6m4s6Nk1yhuwGfAcGFJxNCWkulGcb5TkdzG3rwFUHHgthQfE=
X-Google-Smtp-Source: AGHT+IGt7bjaFE0zoCRqH7hCh/GY4/xWvB5iKNF6y9ZSBbhpCzjjcqhbUftBmqboITyy5ZZTGNYzNA==
X-Received: by 2002:a05:6214:4291:b0:6cb:f8e0:18a7 with SMTP id 6a1803df08f44-6d185674f22mr239419986d6.9.1730293068532;
        Wed, 30 Oct 2024 05:57:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:ac1:b0:6bf:4817:dd88 with SMTP id
 6a1803df08f44-6ce85fbc3cbls34763876d6.1.-pod-prod-02-us; Wed, 30 Oct 2024
 05:57:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW88aGEIDRKcl0XbspgxLgYIWKkFSWcyTaDDh7xRWdhliHvjm5+3J2Z4b2CCmmWiKX8pO36uHQZ89DbZg==@gapps.redhat.com
X-Received: by 2002:a05:620a:458e:b0:7b1:48ff:6b63 with SMTP id af79cd13be357-7b193eea2aemr2250290985a.22.1730293067070;
        Wed, 30 Oct 2024 05:57:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730293067; cv=none;
        d=google.com; s=arc-20240605;
        b=IAl3wek0wKlbRO4ZiKZ9ye8bk8ItWJtGbfMfw6qQ3FfqtJiPVTouy527gRJxidDTaO
         pAx+B7L7/7ciDvxiB4AotRZSwL20f75D0NasCsmLcTGJyhRTCVpvBgyqYjcFlrmge0BR
         bRTPDGO1X+oou5bRzooz9xN8+G2DmbtGXnfSE2hR4jFHe/PLYo3RDXCA0Z0Dn1lyfI2F
         nyuQCrMogaHfLNdrmzbLi3wd9QFZkQ/x1BzTjLcTtFMrCrccFhQuuVyYFiLRjCsN1Rln
         mQTJzQhgygjahvYOTP0Du4KRFE0jvWLJVCopIHUxpk0e8MH0g1LNFvisKj/X03hnOJ6n
         ZW8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=McFhUFDAUmAIfsk/HLn8gT15L6Iz7vr17JRbAWQPDYY=;
        fh=xhAlM8rWmkZIM96qSN0+ALD1n3LPlDaQsSwFLSHFSew=;
        b=ZKqdqGbnbvy8xKkPwbQtLOCZPkYqb8MdM/pTO6FJARgtdQ4rDM72MLUGHKDvE/YZ5O
         Iq/j6WXien9RNXxIl3ZJazLtYpNOUeR1uwaUPL/qmWt3A70/XSnAL4EHOfsPfbSLHMFR
         0VedQNParpDan+Jrc/f7EXytOUPuDVeucXXFRV5L3aAQ7m6+EzM787GL8MiQST350aha
         WY11FoqRbxY34+x62HEpwt7mo3yMBwXhpFYBpNYc3VwyFDooGB+2RzoqqiIvtBJ98fKq
         HnNyoX1no/zY57W0bbT8oXann5aQpEB4iAEjI7sa/xlsPyaFGeGoLNBJeyZtIkf8A3K8
         +LBQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.93 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b18d359de0si1467124385a.574.2024.10.30.05.57.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 05:57:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.93 as permitted sender) client-ip=40.107.244.93;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-610-iVbCFDbSO_2Za4jGHg8cWg-1; Wed,
 30 Oct 2024 08:57:45 -0400
X-MC-Unique: iVbCFDbSO_2Za4jGHg8cWg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B6AC6195608C
	for <blinux-list@gapps.redhat.com>; Wed, 30 Oct 2024 12:57:44 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B20F919560A7; Wed, 30 Oct 2024 12:57:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AE56419560A2
	for <blinux-list@redhat.com>; Wed, 30 Oct 2024 12:57:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 31CD019560BE
	for <blinux-list@redhat.com>; Wed, 30 Oct 2024 12:57:44 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2093.outbound.protection.outlook.com [40.107.244.93]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-266-QT-Wzvh9ORe1gADuj-yv7A-1; Wed,
 30 Oct 2024 08:57:41 -0400
X-MC-Unique: QT-Wzvh9ORe1gADuj-yv7A-1
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by IA3PR18MB6286.namprd18.prod.outlook.com (2603:10b6:208:516::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.20; Wed, 30 Oct
 2024 12:57:37 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%5]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 12:57:36 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>, Didier Spaier
	<didier@slint.fr>
Subject: Re: Accessibility of Calamares with speech and Braille across
 distributions?
Thread-Topic: Accessibility of Calamares with speech and Braille across
 distributions?
Thread-Index: AQHbKi+zc55tgADNGkWvf29F+raB/7KePK6AgAAPcgCAAPWHIw==
Date: Wed, 30 Oct 2024 12:57:36 +0000
Message-ID: <CO6PR18MB4419BBE8415EA5700EDDA5ACC7542@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <f83f8b32-a306-4802-adb2-66d3e6ca06e4@slint.fr>
 <e5e4a446-56f6-40b9-af89-30b46e6ea92b@gmail.com>
 <108015df-f3e8-4fb2-822b-b7649d692df7@slint.fr>
In-Reply-To: <108015df-f3e8-4fb2-822b-b7649d692df7@slint.fr>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|IA3PR18MB6286:EE_
x-ms-office365-filtering-correlation-id: fd9aa544-284f-415b-f336-08dcf8e26dd5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|7093399012|4022899009|366016|376014|8096899003|38070700018
x-microsoft-antispam-message-info: =?iso-8859-1?Q?P8lkInsHeVHsWCLbyx7AVsZCoNcINzLSkdvtuDZmo+NFbyLM+Yeqefv5B/?=
 =?iso-8859-1?Q?fpTTD+AkU6i3uLS8rZSFgtwhVtutKlgAA26SQKsVZSKl680T48KqdkSpQG?=
 =?iso-8859-1?Q?MXavnmSSh5iodgLzL1rf2PLdVPaAGEslyJBTFs/unKv0ezwoPrV8u8u2cm?=
 =?iso-8859-1?Q?K9ojfOyNb8BA1jG9t9Shy9DucLoas/ajM4vKhkPYs8QfuvbS4e3PRWSiBd?=
 =?iso-8859-1?Q?tncguBNgArH3/pw92688iJRygXGWsJfrCQxxJJxJKQfJW1n00wP4Dr6JDV?=
 =?iso-8859-1?Q?wJTsM4BUdvlJErDx/haqeZVfDDVxobQD8aFbfNA0N1WHuwtfddpdM4Szwk?=
 =?iso-8859-1?Q?MqejMVmiXXSiTtWcC1iAqmWdrgVv0OzvHztR5HkFX/NOYxjyc+sDXEYCPJ?=
 =?iso-8859-1?Q?KpeJ5BmTbqjPeDTiyUuMGcMB4JYWT8IGikSjUYMbbnD9L7f2c70BwiMiF7?=
 =?iso-8859-1?Q?CKEtFtKtuCDm+Huo7imwOVVsIv8R46PGcCxgnQ+i1BAZtNuCCGqPNOCIdz?=
 =?iso-8859-1?Q?+/aQQ8qrZNVqSSHlvHclwlbo4JQnPLSvWX4EvXgvIuCLSWkkl+bSsX49l3?=
 =?iso-8859-1?Q?eyKq3Y4o6S/6rS0G0AOgqwewcwC/OvCg2w/mo7W2wb3ge6bqYM+oYKkKSp?=
 =?iso-8859-1?Q?ozAtRJc3+DX7JfCtS7wYMvoGSIPDgXq+FhJ3FV8/YjyIK3nqlS/huxAdHV?=
 =?iso-8859-1?Q?XhTRNxFOgUrZk77Ei8JytJpYPPLWaSvxxLiplPCqY+FwKY33V7hJjJytN7?=
 =?iso-8859-1?Q?E2CBrbdQBG06+xHcXf3SZVa9u7q/3yyfSS1AQtpPbioZa0xnwY9UqkHuEU?=
 =?iso-8859-1?Q?Bg5HT9KMT5SEuTstGpWYQpauo5m3CnoshkPNHbGZCVREDTbMOJCZJKrf5Z?=
 =?iso-8859-1?Q?tjH3HAwAEQI5e/qhdxHRkQS7hzDVwEKV5z9982tY8Di6bp9muTkzqabFsr?=
 =?iso-8859-1?Q?xHNYTTySlpwlL+8adqphVp5pUtu4qZfzq8m20NFZ1m3XIEa4TPW7GCJYfd?=
 =?iso-8859-1?Q?KxL6kIbCYXjByYXCK+mh67VAjhboMWKNr/Be7UPggY1bu7iAKKjY0j1LsZ?=
 =?iso-8859-1?Q?gM/6vjgHUJNR9qzPQLlFD2raIbLJEa1BRR9Fi/QljgoOPRTbD107dE+8yd?=
 =?iso-8859-1?Q?C5Wx+sR5HZOI+sH/qy+Qq3b8DQk5+/HoNHvJkr79qZma1huJd+Yr8B9Fp7?=
 =?iso-8859-1?Q?ZipZA6tZEyAZqWhetCxXhQrn5GES3UZgqT0l5W/wxrqZ2bZYAWP0Z+KiPV?=
 =?iso-8859-1?Q?2+1irfXei2zIuPBqroHSsCoAY4Cm+1uUmhYxk2NBFRblVaX0/hp2WwgXmr?=
 =?iso-8859-1?Q?2GlLcB17Ol3mX5krCMJJIyPW98snlpFS/gZR9CO4oM2A+C8fu0uoP7yJab?=
 =?iso-8859-1?Q?KzWm95XUNnRXF/c6l6OPvqR85hPKprxZOjInL/UVJpU3nIhKcs3/NIHG+w?=
 =?iso-8859-1?Q?zhOwHEB3Zwe+AdiXcN0aitMPRrzaMpFMCaDb0w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7093399012)(4022899009)(366016)(376014)(8096899003)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?IOS0qBF8CAQ8oPIew/aNQIRVss2YeHXoGBjnlltoIGmMvGdZ5d0UFA8j9M?=
 =?iso-8859-1?Q?ifp6UvK907izkYpWu8KxYiKtWb34akBLsvOj2quhFpUomXKGuZdjZk3GS7?=
 =?iso-8859-1?Q?2Zo2SHnR8Czsbog8d3yhGCbT/Vk8+5migY+pDJWohncFk9if/rv3+K5FgJ?=
 =?iso-8859-1?Q?1ZFFU62G7VPwFBcsNRWjLQr5cqciQ4gWdlx2rhWq8pYrNV2stBhTAAt3uV?=
 =?iso-8859-1?Q?lAzdrEd4/0f+eWLt5JNcr7yOUIUMun8TALTzt4/kJw8fdybLLw+ngJdjxb?=
 =?iso-8859-1?Q?Is/SJ0tcX6o7xKeTifM+ZH7uY1qzZP2nfQP1lLn43lpWOXXo0XJfTA2nFz?=
 =?iso-8859-1?Q?s1C1h48SiaFm85NwJ1OegHGJiz6F94ggDo7AiPRxpyI4u3R+cdCDX7zAkP?=
 =?iso-8859-1?Q?jsOUfzi6hgJzyqiIpgb73K+PHjJ6o/dtRvpM40s5+Mu0vCjag+dqmiPr3H?=
 =?iso-8859-1?Q?pPdZ0QAIm5tFgSrZrGhv949s0OB5i4MpHJgCozrgwZHSs0oOxVcZVUyncf?=
 =?iso-8859-1?Q?dDRMVJAOIx8wsxT8j8xEeea3nW1dr/6d1O3YEy3T/0vloT+CW+QR+rpXrY?=
 =?iso-8859-1?Q?G52bKv8vawk9JZXMhwA1uexBJYIcLOB1pJmQtZ3kXF2j1SB7DzVew9Jyoj?=
 =?iso-8859-1?Q?U4rFIa336CY7cg323V3t7EmaTzsbPgdn5Mqh0q5p/QiKkhZMP8QU1KWuHZ?=
 =?iso-8859-1?Q?nR0FBxP/fkcNvst6D04WTzfguH/aWBwzR13n5+LEemmUYzl4HOu5bREDwO?=
 =?iso-8859-1?Q?0RyJq/jdKzPBnd8Lzm3tnc85lRrGc1s8YBGgGLPfubwkWccKwwrN5oWNYw?=
 =?iso-8859-1?Q?W1zu2v+xbkKHf0rQ4Tnf8l3q3E/5fWXpoRSVNqHD915fQkQ8V5NLZpJa12?=
 =?iso-8859-1?Q?z/BjL+hmT0YLG23wdAVSarKDKU7VfhErF1etGZ6ZU7H4sZQE9GRmYI7vIy?=
 =?iso-8859-1?Q?jC6DnUArZOg9QAn8O9UbUZa6WpJ5LRqD0xBurjvmHc/rQ7cWPT+MP6NrpB?=
 =?iso-8859-1?Q?W/7XjUDG5EoM851vdWt+Svp+CGN6peTtet4sVpMbv35GIpGdAbE0FNaSVq?=
 =?iso-8859-1?Q?jvdoiqkgknqX7/vOh/QL0o+BdxeThHRreRaP4mEx1OCRunQ5e7POk7XN4p?=
 =?iso-8859-1?Q?QKWPK35XmzOA18nESXlhbN82t79G3VyXkUV6SwJt9utVpNGWsBPLf45v0J?=
 =?iso-8859-1?Q?FePW/AybYw2X+db5qw02IHkRpXh2L6C+uMbMCMxazXrKyOCN4tDwkJuVPg?=
 =?iso-8859-1?Q?jcHWOWdv6evb5onPUhGRPPL69rLInXTmKpezYFCCqpRjDVwcTK7vF7pvZN?=
 =?iso-8859-1?Q?cP0J+ZusWZLOjsrcVdWWfdm4bLBzKCkGyPy/kPZRQp+JN35tgbj3a4nW48?=
 =?iso-8859-1?Q?zcMnE8+DTyblRLSE/MyaLtbqmltIY1pGqHSIxm2uInn+8E17XbZngvsSX1?=
 =?iso-8859-1?Q?4n97WKS5bpiJ9PjfAEjsWYTvIFIp+nHU2N3x2VOAtFrBsGkjbH1CQ69E/r?=
 =?iso-8859-1?Q?f/9WL6LDmJsd10rrSKSjkW/SYOjrdoZc2smwsIJ7HJ2KTxSTwIU6pkkpF2?=
 =?iso-8859-1?Q?VCMiWzmqiKwTADo3yNco9iirvn14lEkvoLEes9huuIj96+ug58/e2Cvvgo?=
 =?iso-8859-1?Q?CAD8IB7Knn104MgZXAwLR8kUW7Z1/gKVxz?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd9aa544-284f-415b-f336-08dcf8e26dd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2024 12:57:36.8449
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iFQfxp63GC9JwO41tg+0qEz5EdajHX5Humb0pyAJAR8JsPOc7R8nKlhVCNorhYPxhQNoGwlcsDFI8xrqUV/K6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR18MB6286
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB4419BBE8415EA5700EDDA5ACC7542CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.244.93 as permitted
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

--_000_CO6PR18MB4419BBE8415EA5700EDDA5ACC7542CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"

Did you try super-alt-s? See this FAQ:
https://wiki.debian.org/accessibility
I haven't tried that Live CD, so I don't know if it works.





________________________________
From: 'Didier Spaier' via blinux-list@redhat.com <blinux-list@redhat.com>
Sent: Tuesday, October 29, 2024 6:16 PM
To: blinux-list@redhat.com <blinux-list@redhat.com>
Subject: Re: Accessibility of Calamares with speech and Braille across distributions?

Hi Matthew

I just started the live ISO for Debian Trixie, how do I get speech in the live
system before starting the installer?

Cheers,
Didier

On 10/29/24 22:21, Matthew Dyer wrote:
> Hi,
>
>
> Wile I donn't use braille full time, I can tell you that debian testing is using
> calemaries and orca reads the install with no problems if you want a basic
> install.  I am not sure about other distros like manjaro as the last time i
> tried it orca was not included  in the live images.  HTH some.
>
>
> Matthew
>
>
>
> On 10/29/24 2:22 PM, 'Didier Spaier' via blinux-list@redhat.com wrote:
>> Hi,
>>
>> I consider including the Calamares installer instead of the current one for the
>> distribution I maintain.
>>
>> I assume that its accessibility with speech and braille using Orca and brlapi
>> depends on its configuration, hence my question: what are the distributions
>> providing the most accessible Calamares?
>>
>> Cheers,
>> Didier
>>
>>
>> To unsubscribe from this group and stop receiving emails from it, send an
>> email to blinux-list+unsubscribe@redhat.com.
>>
>
> To unsubscribe from this group and stop receiving emails from it, send an email
> to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB4419BBE8415EA5700EDDA5ACC7542CO6PR18MB4419namp_
Content-Type: text/html; charset="UTF-8"

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
</head>
<body dir="ltr">
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Did you try super-alt-s? See this FAQ:</div>
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<a href="https://wiki.debian.org/accessibility" id="LPlnk169092">https://wiki.debian.org/accessibility</a></div>
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I haven't tried that Live CD, so I don't know if it works.</div>
<div class="elementToProof" style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
<br>
<br>
<br>
</div>
<div id="appendonsend"></div>
<div style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style="display: inline-block; width: 98%;">
<div id="divRplyFwdMsg" dir="ltr"><span style="font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;'Didier Spaier' via blinux-list@redhat.com &lt;blinux-list@redhat.com&gt;<br>
<b>Sent:</b>&nbsp;Tuesday, October 29, 2024 6:16 PM<br>
<b>To:</b>&nbsp;blinux-list@redhat.com &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;Re: Accessibility of Calamares with speech and Braille across distributions?</span>
<div>&nbsp;</div>
</div>
<div style="font-size: 11pt;">Hi Matthew<br>
<br>
I just started the live ISO for Debian Trixie, how do I get speech in the live<br>
system before starting the installer?<br>
<br>
Cheers,<br>
Didier<br>
<br>
On 10/29/24 22:21, Matthew Dyer wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; Wile I donn't use braille full time, I can tell you that debian testing is using<br>
&gt; calemaries and orca reads the install with no problems if you want a basic<br>
&gt; install.&nbsp; I am not sure about other distros like manjaro as the last time i<br>
&gt; tried it orca was not included&nbsp; in the live images.&nbsp; HTH some.<br>
&gt;<br>
&gt;<br>
&gt; Matthew<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 10/29/24 2:22 PM, 'Didier Spaier' via blinux-list@redhat.com wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I consider including the Calamares installer instead of the current one for the<br>
&gt;&gt; distribution I maintain.<br>
&gt;&gt;<br>
&gt;&gt; I assume that its accessibility with speech and braille using Orca and brlapi<br>
&gt;&gt; depends on its configuration, hence my question: what are the distributions<br>
&gt;&gt; providing the most accessible Calamares?<br>
&gt;&gt;<br>
&gt;&gt; Cheers,<br>
&gt;&gt; Didier<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; To unsubscribe from this group and stop receiving emails from it, send an<br>
&gt;&gt; email to blinux-list+unsubscribe@redhat.com.<br>
&gt;&gt;<br>
&gt;<br>
&gt; To unsubscribe from this group and stop receiving emails from it, send an email<br>
&gt; to blinux-list+unsubscribe@redhat.com.<br>
&gt;<br>
<br>
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.<br>
<br>
</div>
</body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--_000_CO6PR18MB4419BBE8415EA5700EDDA5ACC7542CO6PR18MB4419namp_--

