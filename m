Return-Path: <blinux-list+bncBCAJTHUAX4NBBJN2726AMGQEA7PRWXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF08A24EEA
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2025 17:28:23 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4678f97242fsf104338791cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 02 Feb 2025 08:28:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738513702; cv=pass;
        d=google.com; s=arc-20240605;
        b=kLh3x8F2LSwItW1cjKfgXYHtxKqyuj50sXayEWxE1h+azo+Wm2MZ5F4+LJElTzkkRF
         08nSPS18E1yteeI4l7MsEDf9ZH/TzfJGIz7Lm1pcm+66aejYBlUczUCSh/Nz8Ac3FY7Z
         laL1E+Ha3JshetfuoySVId2KJ1r7FWdUZ40Lz33v4d2Xd4mQaMK8INhJER+LgcGyYVPQ
         zoIJ8h1vm5iPasCqvL5U8GDPTiGozzRxrWZsq+16Rd3j82UJjptbReHa4VErXEXGRDPt
         pMhK2wybOlB2I3mYb2Jiq1hmWKCh4uaf8+GoMdkILGAnHLQx6Tbz525Q9HG2uFNnX9TQ
         wyIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=qjtXR1Cck6+WKfqvwt7EjUhwTeS1K/hhG60467g8cEA=;
        fh=Qi389yODDR10tyoqWZ6303qWEpD9MXFGHQq0g7IB0Ik=;
        b=IZbpM2PhoF4cS7oohGV+B5AE3bvs9atXfdZZDpFzYj5NbLdJqd7V4uEO54KyvlQ/SW
         W0qSZ3mJuKK2qqXRZHaI0sHGlrqj66u9ebsiiDfIDALvtgMrosd4jWzkf51QAn4QU7na
         KH/0FHLSZDYx4iRFKAm6yGryETDVs6Pn8zS6ZN5Z/fS+5oMZPtlK0ni1hpm7W0tAC80k
         7O5AA6t91iuV+nRlMCVQJIXMRAZ+pYvIqA9BoEttDkeRJqa/DFhhejyTe86RVHoKMLQM
         3JK+DPoOD9ZoDPr5tWZvCPfSM9H7EZQy5MwDXWfz44b32DIicHAAKqNSK+RPcdIT70Lr
         E9vg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.236.96 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738513702; x=1739118502;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qjtXR1Cck6+WKfqvwt7EjUhwTeS1K/hhG60467g8cEA=;
        b=M/HZC7WlR9RceDpGsM6M47LI5PrnPYTlUqWJ+n+BYJdiydB3Om58An+HBmiADx+fxL
         0KbntctAHHupUpuAueSMUQJpHs9Bf+K+1ug3IXOw2660stLI9ODmCyoTiiU+9H8xVAq3
         hKuOHOwNkIPFezhahE2THEn2niqbJck5mRjOujXwmv8VimCCCWMNsm92bd0dMdO8s+VI
         u3ia0jStL+1QV/QQRTwUO+a6q5oEjZ6c41XnCF5w6JiPunpiEs/Gg1FmsU11/Zno30Il
         CgHlC/43cmZF2Ot7chaq6u+qG0TQnb7GzYQ9sLNKIvjfURQbqkpiUgzeUGYUnyDvhZk0
         yzYQ==
X-Forwarded-Encrypted: i=2; AJvYcCUVxDqQTtaOcfQ5E/n6izL2xiAAjR5DVgvJ/Igmdu31aCE5JC0UAI5zFPmokat6K9wqtCsCdw==@lfdr.de
X-Gm-Message-State: AOJu0Yzti37vBma43ve8a9SUQJqYi/tDKziFifmORrKkqXnIc8JJvRhe
	DzzQ/i09bZ5HwnJysWPDBxmqs8wz/28LL1SH/CBIOm0fYkoVINb5w25C6kxEUdM=
X-Google-Smtp-Source: AGHT+IH+ZI1h0F7gMY7T4BvsE6BE9M2eq1FOo9BqA2hCduxK1Lb5iBSJA3mbWNHswPIlyShCkznJug==
X-Received: by 2002:a05:622a:6108:b0:467:6133:3372 with SMTP id d75a77b69052e-46fd0acae31mr251930081cf.25.1738513701856;
        Sun, 02 Feb 2025 08:28:21 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:8026:b0:46b:2e03:7b85 with SMTP id
 d75a77b69052e-46fdcf6a258ls21120501cf.2.-pod-prod-04-us; Sun, 02 Feb 2025
 08:28:20 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV2zneYQMpOt2gSce7dYBMf035SUnlrfK4+vbNluxXN15eb8UPDVL3B80AHU9IpH8kO8ClizJy/o1IB7g==@gapps.redhat.com
X-Received: by 2002:a05:620a:2547:b0:7b6:d76d:3bf8 with SMTP id af79cd13be357-7bffccbfbbcmr2604633985a.11.1738513700622;
        Sun, 02 Feb 2025 08:28:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738513700; cv=none;
        d=google.com; s=arc-20240605;
        b=UtzVcbu2vHeafRsRLyKRqsByd5Tcp2MWtW2LMJOY4PuarGY2ZUrbYxcoURY5Xf2Kem
         3xfDPMk8qhPge+lYMGz0ZYYcHFJ4UCH6g0V0mM9TQ5Ktm9oiPgOXzKJft5ETA6zNsMXt
         EvEWtD5lky+JpkW6lac1Rsy8ZmEdNVmedscSZgtroE3K7XhbX8jNKVmb1UxUGEcaCRVE
         BbWfB0v/vcObR4tForUK8enufYXn1AFsMdjByM2lGpWarSHLa1zChiqft3GoS0y5aWp2
         nYC0fpzy631InJB8edFxJ6PDyPHg3XQj9J2d3mlvCz83ncYsevkyejIiVJWAR5HpLl0w
         LWlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=ml3aGE8bNLEGHf5kte+RHXYHsJO9/Bw+B61FpHz+JaU=;
        fh=Y6nBsDXzyI5YoRECyjr7NDrMWpRpfKHyXKdHMSRae7Q=;
        b=g9p6E1JxShEFw35utVRa0h5mL2HAsqHYQZzrkhY9iSrusDUAdHkX0OgWlUlk6ceKal
         Mi7d0Q6EDV+QY6u7nzprmKUYvuzb7UhOkQbNXTQJzgioOk8DeSvzR5l1ZvonBWt2TL7v
         1LmmjSDSrmCgzB9OeSVTzTrfa6+3Z0L4htp61xN34o6DqNwjL7+yiwuzScFmHRXvq0H1
         lh3Mbd80kuVxt13ClgXRtvymIVM6pp/H9vrZQxbZTyrrK7G3929SEeGISttjmGSviLMS
         1ZmuQsj9DFk+24Dk4cOgfISLXZsJ9wM2Y9xH7ibbK/hEOCNYpaghbk+Z1eXbJykUf99Z
         U3yw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.236.96 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e254838684si77374656d6.157.2025.02.02.08.28.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 08:28:20 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.236.96 as permitted sender) client-ip=40.107.236.96;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-556-wzSUu3JqM_WvIlrdc_7x9w-1; Sun,
 02 Feb 2025 11:28:18 -0500
X-MC-Unique: wzSUu3JqM_WvIlrdc_7x9w-1
X-Mimecast-MFC-AGG-ID: wzSUu3JqM_WvIlrdc_7x9w
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A158C180034F
	for <blinux-list@gapps.redhat.com>; Sun,  2 Feb 2025 16:28:17 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6976E3003FD3; Sun,  2 Feb 2025 16:28:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6646030001BE
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 16:28:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D1EA118004A9
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 16:28:16 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2096.outbound.protection.outlook.com [40.107.236.96]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-272-hRQjDI-YNFmcBqkZoDbOKA-1; Sun,
 02 Feb 2025 11:28:14 -0500
X-MC-Unique: hRQjDI-YNFmcBqkZoDbOKA-1
X-Mimecast-MFC-AGG-ID: hRQjDI-YNFmcBqkZoDbOKA
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by CH0PR18MB4178.namprd18.prod.outlook.com (2603:10b6:610:bd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Sun, 2 Feb
 2025 16:28:11 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%7]) with mapi id 15.20.8398.025; Sun, 2 Feb 2025
 16:28:10 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Rudy Vener <salt@panix.com>, Linux for blind general discussion
	<blinux-list@redhat.com>
Subject: Re: firefox - filling out a form
Thread-Topic: firefox - filling out a form
Thread-Index: AQHbdSThm668Ky3EYk+C8fqIXQgLXbM0MlxK
Date: Sun, 2 Feb 2025 16:28:10 +0000
Message-ID: <CO6PR18MB44190C87BF96732FF15D1390C7EA2@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <Z57qRK0zdeVGp4X8@panix.com>
In-Reply-To: <Z57qRK0zdeVGp4X8@panix.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|CH0PR18MB4178:EE_
x-ms-office365-filtering-correlation-id: 2272e591-accd-4d0f-5a70-08dd43a69542
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|4022899009|7093399012|38070700018|8096899003|13003099007|7053199007
x-microsoft-antispam-message-info: =?iso-8859-1?Q?fEFUklb2CBHLczuxwVgPlgsAygvZqBxeqzyKF4+Ew7vtlGl655Mgcc+gCL?=
 =?iso-8859-1?Q?7nkBmoDUQ9NzJLVxAqHkqzxARTLGOyJaDkBZQejT5+PYlRN+F0KHy4ze/z?=
 =?iso-8859-1?Q?i12Bfi27x44lrRvc0LbmSo2PqIClaB7W3PCODPbxZr7e5r4Lwc+C/MEkqo?=
 =?iso-8859-1?Q?Oha3m1fGXabz5bwGXwyufZkmOlMB/PIrChVkcj9cb52m62zBEj4WM/A43b?=
 =?iso-8859-1?Q?sIJmMA6DtmOQDVTd3Ykdg73Fl2yyUiODxUEr/V0Wkm+makDgDnNP/ph/cL?=
 =?iso-8859-1?Q?ATlhMLlCm+CDBk4dSMIcsnNKMO3rsNgspIxY5NVBkET/wlvFtnpHehX2T2?=
 =?iso-8859-1?Q?kDb1a0WqSCyiQxsaWRgBTN7rr4vgrg0U85nvxNxeLTGNZbCC/DsOba1h36?=
 =?iso-8859-1?Q?CMPziKCVnSp2u+CS7wDj/EsvyBPT8DcIO2PdP4SfpZlVcufxggU9rt63CT?=
 =?iso-8859-1?Q?zaMsbPkOOQJN9dYKkc4cNhFaBELA5xuQDj1Zj7qvGyCpyzOZqYjWL4sliE?=
 =?iso-8859-1?Q?ywxmTjZ93C1SKWqBNrOvXLohJNQgvFr3XD2qeJu38tEI93zVbPLjV6xhJ3?=
 =?iso-8859-1?Q?CCUa07ziB/L9TTMRLK1GqdSyQ0KX8zqFfWIHZRnjQQdP7DrGUAGin+WyKI?=
 =?iso-8859-1?Q?aN4Z9DjeAVlBz9uCMbZCmcOOXI1csd6wGZ0Qo1Gebjh/26RlxSRs9OGsyI?=
 =?iso-8859-1?Q?D+i+kwd/yasPbIgmrxEnIfFPXyPjkHsLYZblyryjxcJOfOy6ygE9IfAvsj?=
 =?iso-8859-1?Q?5uDALMvRJCfpsNAtHST6qwPJjQxATIvi+Gyeoo9O9KK4PnYu5Cy/VxVGqH?=
 =?iso-8859-1?Q?rGk1aiTu9DXZdhSZ42SeSWFApG2GweWeOBaX//GW2TEwX2TpNhhNZFI+OC?=
 =?iso-8859-1?Q?dUsBAS7CUhzNw4pmO4YCW4RFOGwH+Kkv/jfbHI1gvSMYVtPtipWuin0tni?=
 =?iso-8859-1?Q?2bwwwnYulbcjy5bjpJbK5jN93rHjeIpulzMV4HOmLqLVp4NEI7S/59uMBC?=
 =?iso-8859-1?Q?kWr82zcHKQVT0jj/BiUOhYUZ8ZKuQxft4BfaNzYweRzb+v6AEPC+s0eVDC?=
 =?iso-8859-1?Q?Kc9AUouqUfibkzoh581qWA29bjxojGJSLq/zodHopNgfxQIaE8f7R03MBB?=
 =?iso-8859-1?Q?/wCGyFHY3anwtXmvmpowL6NDAAe+2wzUy75DpVPW4+m8sT8NxmX+k+fLh2?=
 =?iso-8859-1?Q?J1Q117n/2okxAx7t/uMjROOs911gxzu9lUAeT9lWAzjefxL1rqVCVZ/D65?=
 =?iso-8859-1?Q?F73VwUJgR3dv7YYdvdHy++sHvr8S8sazBy4ahiL84X7pAkzL9luot4ojHs?=
 =?iso-8859-1?Q?vx9reXfdJ4pohNxVKFdIeorGo3zqGpH7/ziYgx6DpRf1z2+xoKrTAuFdqr?=
 =?iso-8859-1?Q?rtBJjn7s/2z/hhvAh2EKvK5PxMMl+He4tgFPM/EZYMhu6APkwJP2C653/P?=
 =?iso-8859-1?Q?XsR01Zz7ABO8U9RdUMPnLqIQR4FSY5l0uZplfA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(4022899009)(7093399012)(38070700018)(8096899003)(13003099007)(7053199007);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?l0YbR/V2xXi6VSs17ZpQx0A06O4xykb+RSVCAeChCNxfflaiSwa7IbfhiC?=
 =?iso-8859-1?Q?I3RrXHvUIDH9XYLB5XsbfqbDMfYGTE/dyrNArWkUHK0J38iDTxE1CYY95J?=
 =?iso-8859-1?Q?KF0B/fYIEqmTlL12wEXJl8DSbNcJcw7G1fBfnAzTizxxAW1q8DkIDVSSj8?=
 =?iso-8859-1?Q?sRelX6rhVZKBuaQB8R+2Dk10m1jKfsxyKWGda+PLOHeBMTyn+G5MpUnteA?=
 =?iso-8859-1?Q?xewXj+/HQw116SPP7BTEQ1n98u7Xn+rWqKGA4a/yr+jrmYkBjrqoAVYzu8?=
 =?iso-8859-1?Q?fpNWRT8v+3r7PAy5yfsHpiwC50Ft45DKVgUaL/uNLxY8YCED6DmlP8snXO?=
 =?iso-8859-1?Q?UnIATBqmZydXuwnVMOb8p2ZBhH+GJJX9eeCgxkB1cWqBDpyw1FRFNbj1HT?=
 =?iso-8859-1?Q?eSqDJwrges3deSM23+OwWwbugYKB9zjuOpGpx6jpyHQMQTBSetfon8KoYH?=
 =?iso-8859-1?Q?YkYxqjwTIptPpHNhkyrbwdk0igQRTRPBwtNq/Es5nz70PiTnS4Y45BEmXI?=
 =?iso-8859-1?Q?8bz1esPos+K17DFs+R6HHeUvuCWdO6ux6zAiv3N2TGBv42Uj3UE3X5cI72?=
 =?iso-8859-1?Q?zYX31jcMy43uYzW/lz9SRfGby8jftMSBFxiXNg75xO50LjkCKbZjXNChoR?=
 =?iso-8859-1?Q?R+TlIV07E4TGzDU31QyBk0crBV8unUAovPpmCFF4Tz49uVgRTEPaNb0Dcu?=
 =?iso-8859-1?Q?n9uW3CX4EY8Kn+lvBFwKAcL/BIbSYGKxVc8qb5Fr0IhkWmnZvlmcQaO3Rv?=
 =?iso-8859-1?Q?sLL3V2It9QVgBTJaXLRMeQPdzs+rnIUbyifcbZSrMjkNA8rijRPPgKvC2k?=
 =?iso-8859-1?Q?4GuPmyC1vqx5T1wxxPP4ZV8rzx1R6Yn8MzdONmfaJ6+u09IftrT7gTvKsH?=
 =?iso-8859-1?Q?YqQrEw3iBq0Cl0pzbGO4zGPtWnQx8QlFFRvWxUVxhSNO8i0My3AmANB830?=
 =?iso-8859-1?Q?7GqmpEihA6zwsusDQkePDwSv6xgpf/n+oUAqXZUTAtmF+k+Or1u1CF7dQD?=
 =?iso-8859-1?Q?G4l5rTn/QDJm5Hr+swgMgkBcv2UinOvxWjbPbW81Q2GAzG5YWwnc8EpTvM?=
 =?iso-8859-1?Q?COPYajzqRUIjovL3rgxYTavKRVCJT2SCF+2G55Ai8S14q/SRa2vaZTjt/J?=
 =?iso-8859-1?Q?EO6u88m4+5b3k+OlocWK/Zpem5ddQdPLa5/BWppSJPFOskgG97glJywh+B?=
 =?iso-8859-1?Q?v2Y1B503TH+ZN05SXYbDFInt+40blVN0jSs07JS2WCq8g4YND8l09Vid3C?=
 =?iso-8859-1?Q?O0UwRO2FtHr1vJoXWhpLpkNRBl3CuwL/okafoazWG024S3Yt3Ky/BIPz8Z?=
 =?iso-8859-1?Q?BkpBCIO6g+Hw95L5vHR5ZGM152yq5zu6kfU5rJd5lmvExFcUYP0/YKSeIv?=
 =?iso-8859-1?Q?9vOJAdvDmMB/qsrZR3/LdKnOcMhYxOFNv43m3/JgaVLf4yfgpod4u0YpG2?=
 =?iso-8859-1?Q?5VeUqlMTeizXgvSu7b1VCYNhOtWu1ovtkCGaiuaRHjcjOH5BdbnsVzOGoS?=
 =?iso-8859-1?Q?tcExstTNcFGE99vk7xWkgC54zqpz2bKSx76Ie5rsqU67ARi/3HYmDZCLlO?=
 =?iso-8859-1?Q?HrFM/D5K5ObJqoCmGoMs+11EP+1Znze10NUbFs5M0jVPH4gH9tXGeLEALT?=
 =?iso-8859-1?Q?TVYoWGKc23vXjQtt5paO6qcql6mXP5+NzA?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2272e591-accd-4d0f-5a70-08dd43a69542
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2025 16:28:10.4143
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eSHu2ypkiNQDCtchKXiJu3B+YbxIYYCsXosB3skAFTXLtD9e5jfmX7egXgQZB1zL/GIuxV7be3UniUqKP+sgVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR18MB4178
X-Mimecast-MFC-PROC-ID: fxXG7SWNbHx1qJ5CZh3XLGWsWCkfuvOM0UPui63hFd0_1738513693
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7xsAXgqGMUPRkJ1ssqCvwHfj_mKe5-IPVDoESJVXCDw_1738513697
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB44190C87BF96732FF15D1390C7EA2CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.236.96 as permitted
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

--_000_CO6PR18MB44190C87BF96732FF15D1390C7EA2CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 You basically just press tab to move through the form.  Use the ORCA-a com=
mand to toggle Browse mode on and off.  You must be in focus mode to enter =
data in the form.  If you want to change the default settings for ORCA and =
Firefox, press ORCA-control-space, then press Right Arrow until you get to =
the Firefox tab.  This has ORCA settings for Firefox.  If you don't want OR=
CA to toggle focus mode or browse mode automatically, you can turn it off.
Read this part of the ORCA manual first.
https://help.gnome.org/users/orca/stable/howto_forms.html.en
Filling out forms - GNOME<https://help.gnome.org/users/orca/stable/howto_fo=
rms.html.en>
Use Tab / Shift + Tab if you wish to leave the currently-focused form field=
 and move to the next/previous focusable object, regardless of type.. Use O=
rca 's structural navigation commands for forms to move to the next or prev=
ious form field.. Depending on the form and the application, you may also b=
e able to use the arrow keys to navigate out of a given form field.
help.gnome.org






________________________________
From: Rudy Vener <salt@panix.com>
Sent: Saturday, February 1, 2025 10:45 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: firefox - filling out a form


Once again I need help, this time with firefox forms.
All the intuitive things I've tried don't work.
All my web searches for this return instructions about automatic form filli=
ng, which I do not want.
So can someone tell me how to enter text into an input field?
How to check a checkbox?
How to select a radio button?
And how to submit?
At this point I'm not going to assume that navigating to the submit button,=
 switching to focus mode and hitting return is going to work the
way I would expect it to after a lifetime of using lynx.

And my apologies to the list for filling it up with novice gui questions.

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

--_000_CO6PR18MB44190C87BF96732FF15D1390C7EA2CO6PR18MB4419namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
&nbsp;You basically just press tab to move through the form.&nbsp; Use the =
ORCA-a command to toggle Browse mode on and off.&nbsp; You must be in focus=
 mode to enter data in the form.&nbsp; If you want to change the default se=
ttings for ORCA and Firefox, press ORCA-control-space,
 then press Right Arrow until you get to the Firefox tab.&nbsp; This has OR=
CA settings for Firefox.&nbsp; If you don't want ORCA to toggle focus mode =
or browse mode automatically, you can turn it off.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Read this part of the ORCA manual first.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://help.gnome.org/users/orca/stable/howto_forms.html.en" id=
=3D"LPlnk">https://help.gnome.org/users/orca/stable/howto_forms.html.en</a>=
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9oZWxwLmdub21lLm9yZy91c2Vycy9vcmNhL3N0YWJsZ=
S9ob3d0b19mb3Jtcy5odG1sLmVu" class=3D"LPBorder805152" style=3D"width: 100%;=
 margin-top: 16px; margin-bottom: 16px; position: relative; max-width: 800p=
x; min-width: 424px;">
<table id=3D"LPContainer805152" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td style=3D"width: 100%;">
<div id=3D"LPTitle805152" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor805152" href=3D"https://help.gnome.or=
g/users/orca/stable/howto_forms.html.en" style=3D"text-decoration: none; co=
lor: var(--themePrimary);">Filling out forms - GNOME</a></div>
<div id=3D"LPDescription805152" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
Use Tab / Shift + Tab if you wish to leave the currently-focused form field=
 and move to the next/previous focusable object, regardless of type.. Use O=
rca 's structural navigation commands for forms to move to the next or prev=
ious form field.. Depending on the
 form and the application, you may also be able to use the arrow keys to na=
vigate out of a given form field.</div>
<div id=3D"LPMetadata805152" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
help.gnome.org</div>
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
<br>
<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
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
<b>Sent:</b>&nbsp;Saturday, February 1, 2025 10:45 PM<br>
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;firefox - filling out a form</span>
<div>&nbsp;</div>
</div>
<div style=3D"font-size: 11pt;"><br>
Once again I need help, this time with firefox forms.<br>
All the intuitive things I've tried don't work.<br>
All my web searches for this return instructions about automatic form filli=
ng, which I do not want.<br>
So can someone tell me how to enter text into an input field?<br>
How to check a checkbox?<br>
How to select a radio button?<br>
And how to submit?<br>
At this point I'm not going to assume that navigating to the submit button,=
 switching to focus mode and hitting return is going to work the<br>
way I would expect it to after a lifetime of using lynx.<br>
<br>
And my apologies to the list for filling it up with novice gui questions.<b=
r>
<br>
--<br>
Rudy Vener<br>
<br>
Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wi=
ld: <a href=3D"https://www.amazon.com/dp/B0DPN1QGGJ" id=3D"OWA7d9b6c34-9935=
-072b-8c73-c93f7707c1ca" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">
https://www.amazon.com/dp/B0DPN1QGGJ</a><br>
Latest Limerick - California Pipe Dreaming Of Secession <a href=3D"https://=
limerickdude.substack.com/p/california-pipe-dreaming-of-secession" id=3D"OW=
Ae9ecf5a4-f7db-b7da-20fe-6b37bd00a23b" class=3D"OWAAutoLink" data-auth=3D"N=
otApplicable">
https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession</=
a><br>
Website: <a href=3D"http://www.rudyvener.com" id=3D"OWA28b1f2ed-92f6-d30c-1=
4a3-ea8cf6d35887" class=3D"OWAAutoLink" data-auth=3D"NotApplicable">
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

--_000_CO6PR18MB44190C87BF96732FF15D1390C7EA2CO6PR18MB4419namp_--

