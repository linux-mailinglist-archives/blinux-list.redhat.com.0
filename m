Return-Path: <blinux-list+bncBCAJTHUAX4NBB2NA7K5QMGQEJRTSHIQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 432FAA05F4E
	for <lists+blinux-list@lfdr.de>; Wed,  8 Jan 2025 15:49:15 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46909701869sf378406381cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 08 Jan 2025 06:49:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736347754; cv=pass;
        d=google.com; s=arc-20240605;
        b=SvvlX9wonJk//lj86W1LC6ZyB8OwFbYNRVlPVL0nTLs9u0YfmtQmEpMjjimeN/JOY2
         3VW3hppsiK6Avr2PAXXZBd1a8J3TeU4+2ykda1F2gwBG7M5LwuimDmwSiXHB36pH6zbu
         NXXgYHjJCJZSg5IQxxWBK3U+mVyP0WNTLnlx5UuMyiCLcpKUbJKZpiHyXkrQJhG+DnpZ
         xdJ4JQVLG08pU2T84puk5MyFt0TQu5FWdBBJedSLkgLvH4xnJp7NqtH1L1Id9tfBNIz+
         7Kiphtfy97YRQxLC/4zmh02sfQPTdtEIFAL+FIlqQbpPB5uYyRFHfvx/mAOAKzdrJ9rs
         C1VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=jQoMTjCihWQ0fL0NW/YQ6P5l5b8ztR0XFEi72c/xQVU=;
        fh=OX6ne52gcr41Aya4+4DKXE1m8GVcCh298lgReaMY01M=;
        b=aAC/F5j/x+5Ygxx6sn7qUm6rseNXIo8jb2Go4aQMfPdDydGoYXIqRi6j0O0SI2GlC4
         Dxkh+VkXJKgZAiNABmsItHs2ruCyxy116ltzoMw+yFdr0vN9VH8j2mZYKZYN1Il1pwsn
         8VEfut4WkLuZs6G2nqy9uVvybal7VepFqrZDuVcOaNCjSSjTrgN+XRWJ7pnwVeJEMWJ3
         1m/Su8j/itUluc+3MD8oogixqqtczFyAwg7kLxn3MXEGWS1xHrwlTJC9AR7mx4bkpD+e
         veJm1xE0q3Uh1tTowIzDSVnPQLWEVagpJStt4WLPZzRJ/+px5bVOHoTKOw4jOvP9wSXE
         Mr2g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.124 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736347754; x=1736952554;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jQoMTjCihWQ0fL0NW/YQ6P5l5b8ztR0XFEi72c/xQVU=;
        b=GVkaA6XSMfPfRfR+9tHTsGnzm1Ehz3ijpIAINIf2v4Uautc2xdTI6CZ8Qyp1vC2bkc
         czCTadMJ2rGOaYhyNoF+tsfTW8zlQ4AMa9rHMvz3Se1kMVaDiFXV5PzDc7VA0ZpDlgXh
         gc6weoiirUI8bIC6V0c6qzwnVBe+zZ71SEdBcph73wNezlUCNoO4i/tgRcWwUi7GK/gy
         KWl3y7LQv7nDle/du7T+9sfnYx3Rh8j7rToci6SVSytRgOzTxAsGFQh0X3PBtl6b8fee
         W5b84uO9//7FUsfWKZgFhf03XokPZl50WMQN7fHtPVzwpt05HUJxyPDpjr6s6d8vQGgb
         vHbA==
X-Forwarded-Encrypted: i=2; AJvYcCVnKTfpOAo3Ag97FcBlUgIneD6jx4pcqSXvxGailhhdoJc90U5dpvbZKBxg7VLmUFSDRJsB2Q==@lfdr.de
X-Gm-Message-State: AOJu0YxZwoic455DBGeW1uJDG8orws7PR7k7LgAvVl/mJHWpXleBcjNN
	6DbJKQqKzVB03cOg5WzuHV/yv5X4V5LYqVt2GEE8W+dZKWXmqVp/oIUGFeNGeKs=
X-Google-Smtp-Source: AGHT+IGzRcWhuJkzftt3waYX22prOgNCtXZDlUN7qGYTuejWB3MqJTxY5kTLwEpJfxU2u+RVvSNFNw==
X-Received: by 2002:a05:6214:4111:b0:6d8:8416:9c54 with SMTP id 6a1803df08f44-6df9b1ed60bmr52219556d6.16.1736347753923;
        Wed, 08 Jan 2025 06:49:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5706:b0:6cb:d4f7:64e0 with SMTP id
 6a1803df08f44-6dfa1ca37e1ls4394926d6.2.-pod-prod-09-us; Wed, 08 Jan 2025
 06:49:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUe/ZS3KUlzMdazZmWhG4UcUWNltrLoAPE5Th2GiG0othsQIVhhMp+Galu4w2g/fXgZDQbZvPSkqoiPVg==@gapps.redhat.com
X-Received: by 2002:a05:6214:3d87:b0:6df:8112:3e48 with SMTP id 6a1803df08f44-6df9b2ce45cmr57727846d6.36.1736347752733;
        Wed, 08 Jan 2025 06:49:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736347752; cv=none;
        d=google.com; s=arc-20240605;
        b=DqhesSOgfVIHbN4J5es5Vw2MpsDUeM4599WYqvOzo7ukYGFZyWjWZvDSl7fkJpudTc
         ca1EBsPKUwBcomujJ3TLffXzevKR5kzBN08z8vkQwVcOkmlgqowCv6AOlUxp0AE9Mlwh
         M21xkIQ1pLvNLi8xenlDKuXEx/mILjPjJoGFDDAKlZiiwHoKxUyiSf+k4FCs8UfnCepf
         bbmNFYFo4LQXwWVcqXNv5SpVO3Rgd0K9eG6sQwnghb2FSja4wLfXiMjH8SURTvIYZ6pK
         Pu9p9CsHXKq33NNuuwf0kf0jpZIHvHbdh8b/qyWeDK84EYN0XgKRQ5qyIHZPxC+f8Rm9
         MQwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=5QoE3IvvShWcQxdxN16v7+EuwoJs3B3Jh8vyoq+Tbu0=;
        fh=Wh6N8LAwNTF5AcBoSlOpApQ7hXVcxLVs9ZrQbBVByj4=;
        b=Ov34jySkOz/xK5C0mg2RwqMVMUoBVaDAOfF0CsU7hY7u6JSf5M3YvHxBWhJgCuGwEY
         2FZGZasNraPy1GpKLndgwqGLua95LMoBSSeKNx5wOAag2q5l0C6tDIaEl9o9nhrpemT7
         gWdOMudCoCUjFW8tioROp7XY+pQCzkJ/bWBurfrmQdsUX7JKKIBdXfcertpYCUTLp2E/
         YzZ5+OwdcVMpFjw/effsP1ffHpo+oi1hDM9hPvsmyR0I+YXqQ+STPXsxrjUdRURYmR+g
         cRGSv7xV84SgqF2jbt+t16TCqxFz+bH2iYOf9o6YatWGAcWBArlYWdvVBGq323wpPmBD
         ow3w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.124 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd18234929si194788606d6.248.2025.01.08.06.49.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 06:49:12 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.124 as permitted sender) client-ip=40.107.244.124;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-263-zu5CPrfEMb2z6qWISDsdzg-1; Wed,
 08 Jan 2025 09:49:11 -0500
X-MC-Unique: zu5CPrfEMb2z6qWISDsdzg-1
X-Mimecast-MFC-AGG-ID: zu5CPrfEMb2z6qWISDsdzg
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 43B97195C244
	for <blinux-list@gapps.redhat.com>; Wed,  8 Jan 2025 14:49:10 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3F48719560A3; Wed,  8 Jan 2025 14:49:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3BE87195608D
	for <blinux-list@redhat.com>; Wed,  8 Jan 2025 14:49:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B5CB619153C9
	for <blinux-list@redhat.com>; Wed,  8 Jan 2025 14:49:09 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2124.outbound.protection.outlook.com [40.107.244.124]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-232-WOn6kDdwOXe5XO_JW5QFkA-1; Wed,
 08 Jan 2025 09:49:06 -0500
X-MC-Unique: WOn6kDdwOXe5XO_JW5QFkA-1
X-Mimecast-MFC-AGG-ID: WOn6kDdwOXe5XO_JW5QFkA
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by MN0PR18MB5974.namprd18.prod.outlook.com (2603:10b6:208:4ca::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Wed, 8 Jan
 2025 14:48:57 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 14:48:57 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>, Kyle
	<kyle@gmx.it>
Subject: Re: MiniPC's
Thread-Topic: MiniPC's
Thread-Index: AQHbYTgwnZo7OPMJTE+bcA7FWHiLirMMHqyAgADUw+k=
Date: Wed, 8 Jan 2025 14:48:57 +0000
Message-ID: <CO6PR18MB4419E98A41E54508BCF9E949C7122@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <E1tVF0W-000Hgp-2C@wb5agz>
 <4ff1d3a0-740f-4849-89f1-91bef9ac1616@gmx.it>
In-Reply-To: <4ff1d3a0-740f-4849-89f1-91bef9ac1616@gmx.it>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|MN0PR18MB5974:EE_
x-ms-office365-filtering-correlation-id: 63228abd-111a-49c9-07dc-08dd2ff394a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|4022899009|376014|1800799024|7093399012|366016|7053199007|8096899003|38070700018
x-microsoft-antispam-message-info: =?iso-8859-1?Q?QxmyrdJlHmcSezkRPDIBh9XYdt7kXpVymT+SfvGyMLDxo8yDCU0aZO1f68?=
 =?iso-8859-1?Q?h006UycUZ5ezgGibxge/R+K3z3GiJLccttOhSAlCdgi1ukoKZOsa3DWZYl?=
 =?iso-8859-1?Q?abcC+unL1gguf2jKbwaJnRhJySu8eZYWjbPKr6UE7P1VRuWDOxG8xdmYGi?=
 =?iso-8859-1?Q?autVf1JzNo6HwhZ8yzhzTqvkgVmbQ/gqTRHNRr1BsU3hJK30sxEbN8VmkJ?=
 =?iso-8859-1?Q?GzOLm4C6Ef22OjWJ4hMRovSf0qGqhx4NcHeOS7bllbuQHQek3T5PM+fEiD?=
 =?iso-8859-1?Q?T01RXYywh/HzDbJG+oUOSqKFcgVhF/bewsDF/teM8lQgb+8KF/0i6FSNEw?=
 =?iso-8859-1?Q?tZEElHdcIJkpVikWiJ0t9N66WjeqH+ctoMhmf+DPD3ONkyqT9YtQ9PzmDu?=
 =?iso-8859-1?Q?PsP2bYDFo/N6s+6dzIPJ4QBHa8FhGcCKReBi897RS0aLKHEO0lvKFWlg1n?=
 =?iso-8859-1?Q?MRb2wFbSMdrZbpEhDetcSQh49hjYnMYH+qf/dAxGSmqqGNFAIPTyoBncUF?=
 =?iso-8859-1?Q?RTP5I3m5rjXaGm0HhlCE9pCroY+J0/YRxAXVpy6xgqotzXNssJKE2Wbpor?=
 =?iso-8859-1?Q?rYZ6P3rQ4zD3i0VLqDKe/hZKR4h1kJsc0PPU5WcljqsGDXgDk0uk30y+k+?=
 =?iso-8859-1?Q?gvM9IQ49hGECmmLZOStVlz6pE4SzgqVjQ7Uy95ZGaKeVIv/ILmde6i2nAT?=
 =?iso-8859-1?Q?5cN9QDvjv6BLMiM8IH2rbx4Vf/KE6CW+yluMxvZ9bJVjU+qL/ZcO6eUL1S?=
 =?iso-8859-1?Q?LMN/+/jdYs7DAKrCq5eux+CVVcG6rZuwyBpSillj+u2SePPHiRSnuVWixQ?=
 =?iso-8859-1?Q?rfgvL3RSwVe3Wt+kuqUV02KjdkPePifK6mT7+Fdn8M06PDRO0s4HGh5Ra+?=
 =?iso-8859-1?Q?LPaG5LUJTsQurdb800ylYXU9T1LfHa9DARAzMAs4VWweEt011HMU/E0KOw?=
 =?iso-8859-1?Q?cP1LIWXviXsz3QqRj+MCEqZQuTIi97M5/N8BWnLY01yQDxV5teXpBYqEGB?=
 =?iso-8859-1?Q?k8G0BVOS5UPJlRrrTZZAGvQiYaQP6ldQ5sYooqB8NrKntUzLDzmZrMwVIL?=
 =?iso-8859-1?Q?7YEDNpOzauPM5oVjeWuq50cD5LWOZTrvbMx2v0dtOonMG1C8hX2Iq7Y0gM?=
 =?iso-8859-1?Q?Vlof9bgOD4k+tjrPypA+avYKAs4k9+fdjBA/plK3FGUhur4h/Yrf8Km/Pe?=
 =?iso-8859-1?Q?Ic6XlINWO/if9kjV4MNBTs96UY6GCTV5Quqk9zieDtLO9JBtZdIJTNttb5?=
 =?iso-8859-1?Q?GlrTWeqvKsIt2uUv70eYYidvke/imPfLlDaelexfOKkRGOLYrgZy7tUX6t?=
 =?iso-8859-1?Q?ek/o3w4oh9qirDJxxcOPXF+COc+NhM1W5To05oLM42SzPIiqaq86eBwAPK?=
 =?iso-8859-1?Q?QHVnEL3fhP5vesRp64Sjq00l+XNbG3DH2PDQDzP8OTrqBdc4Z/6mrBXAvO?=
 =?iso-8859-1?Q?SX1RBdGDE+hR0Lk5hC4rbQLUs+hBeAsfKUKjxnNKlvDuBM03LCYAMxqWTZ?=
 =?iso-8859-1?Q?F0r2frbgiL1p6k7ZHJ3Bh+6vqbvGP3Ix2pxR7/A6oWBA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(376014)(1800799024)(7093399012)(366016)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?HWvc4vVoaOue07ipMCvORZOsdr9aBggqhwy7CPdywvWerA30xhKVuowXEV?=
 =?iso-8859-1?Q?ZY92H5mRMhcJ7/hY1hBtDrkDFX/IfIoH7LT0OcCoMGWyBCXmIC+2dlaIzu?=
 =?iso-8859-1?Q?SKyOP1Zrn7ieKWzAcqFj5uHGQpaKEE05c42kcjMES8DRR0X9qxFRL8P/l7?=
 =?iso-8859-1?Q?3A5lMvpS4IXNFZ52ADFv20TGzL73xgjIrOJY4Atk0F2vUaLyb5w+s4ZYru?=
 =?iso-8859-1?Q?9AmkczeYKvN9AvRCXyRipPb8NPyVIpy+Hp7+QX7JWDd7cNIjzYhBVWohCr?=
 =?iso-8859-1?Q?K29vZtxKVB1ZET31nikoqe8sBKqwh7bmY/2HmzgUrb1e5f8rAb9l3IWN7a?=
 =?iso-8859-1?Q?M2aFrQHbb4rfZqe02WMRZ8qgOhtBsHUnVXv42JFX1j3dDsagfxrCvr3vI+?=
 =?iso-8859-1?Q?J7KgFznAHjWgMnR5qeMH1uCycde6jpnuJkx3MMAJe5CmRb0V6CEi277aSE?=
 =?iso-8859-1?Q?UVhT+wYGp7tdomb/SGEp/Fj1YfnAFxJwyev+hE49kS5A3s0Et6pYp8yC8o?=
 =?iso-8859-1?Q?z2OxSMXx/xr6jizzFZDMRRkE3QbNJwyIq/kn9KcwLxN4H7nuwQUu9CShHi?=
 =?iso-8859-1?Q?Wm2a6Do1IoSNP3qepuYVbhrlDrzIXbXUE8MvsVwEMLySS2OmIL7U6zESo1?=
 =?iso-8859-1?Q?xC5vUCfdop8bOxVWgIevpj+n9JjVDLGZLigBXdV4fK2h10Qwce79qbT9So?=
 =?iso-8859-1?Q?Arm9QkRuy79qwWKdCrqXq3OTceyd7le8Pqm4bW4pDopdiDSUTEh2mfe07+?=
 =?iso-8859-1?Q?cBWjEFg1JaDicbYvhsQhbYU6D3Jk2QieysfBfpGx4QE/dVFWz++eMefSzA?=
 =?iso-8859-1?Q?tf+q4e4f7BZnSHhzW5pd7zzgIhIkNZ1RoZSQQLt0DEEyP5tUfoCsVcm7Iv?=
 =?iso-8859-1?Q?aCmLNSr+hla1AxvpCwINLwrhEk10umxS9pNwoR4Vm+eTrRNYVy6TQHXF7b?=
 =?iso-8859-1?Q?hSNoAwruDLzWgNDWK8jmOoxRiT/wwjQTfn2KQPDj0GYy3xwjdCdtLjO8BG?=
 =?iso-8859-1?Q?x/KLfwJ1rSonbN79yzZJJkoSdImnAhyK33MzSKrPFOao2bIupT1JtU3Hem?=
 =?iso-8859-1?Q?5nhGAh+7Pv5AFxzHPCoiFFDsTgrcgC+UEEBclsy2bQ8Jb4Oon/lqZ5Bo01?=
 =?iso-8859-1?Q?yl/aAksAPViVOGnjzxDP8qx3RXHmnKnfbWOarpqoBtsXvW0Vsmm5gcEq1A?=
 =?iso-8859-1?Q?ciVyDxrwYfIeOOI/09mI0lyuvTRWLG9DI2aJBozTmWAUOkKXX2FDOYgvcl?=
 =?iso-8859-1?Q?p5w5hNFO1boFO8xJgIC2vbREaJi+YPx8kgXebj+crcoMucFeV7lF47g6tr?=
 =?iso-8859-1?Q?jUACYuOU5vnTdbiTQMrJrqsiXnY8NNcK/xoBZf9UMbt8kecfoSiuaQgFf+?=
 =?iso-8859-1?Q?xyaClDNNUvU7aLAKQkgjmMy+Wvfh/LKL2qpAue4a9deMrR30zQTcZ+udKM?=
 =?iso-8859-1?Q?eOXQECL83diXi8l2yeOr9DuLuaQa656l/DYZIUHrfyXAGIvmhOXRF+B6UA?=
 =?iso-8859-1?Q?eotdAXWIGdchE9quaFJcm6Whotw0/hV0/Nw3TotWbYxIKVLUWMG0CMZj7u?=
 =?iso-8859-1?Q?FY1ekFkBPr3pVpehB0NQ1shL0cdFuuB1wAOmEDh1DDd5d0lBQxy06gYXB8?=
 =?iso-8859-1?Q?vu4ZuuumDS5Ny9qZgLKyKAP+YrsGFf89Wj?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63228abd-111a-49c9-07dc-08dd2ff394a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2025 14:48:57.3360
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jC6dG4RAdEyW/YuPds7YKqSvZthAd2tqRlrYFBAPzCeb2hio+7BeuCI16s9J2JtcPvVXeOYgeuO97F+d4eGqXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR18MB5974
X-Mimecast-MFC-PROC-ID: a6GziMLflQqvXvgt2Y-UmQ278Md9JZOuP0BaPqdkulo_1736347745
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: V6UUlaT6wAQ0vrY71Co4aJX2iSV4MKPbBfNij1Io_aQ_1736347750
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB4419E98A41E54508BCF9E949C7122CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.244.124 as permitted
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

--_000_CO6PR18MB4419E98A41E54508BCF9E949C7122CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It is a matter of how much you want to spend.  There are hundreds of mini P=
Cs that should work at this point.  Asus bought the rights to the NUC line =
from Intel.  It seems that some of their PCs may have pin outs for a tiny i=
nternal speaker so you could hear the beeps from the grub boot loader, but =
I'm not exactly sure which model.  Many of the cheaper ones have built in a=
udio and a headphone jack.  I have a fanless mini-PC from Lele I use for ex=
perimentation, that you can run on USB power and thus a USB battery.



________________________________
From: 'Kyle' via blinux-list@redhat.com <blinux-list@redhat.com>
Sent: Tuesday, January 7, 2025 8:56 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: MiniPC's

An Atopnuc miniPC originally running Ubuntu 20.04, now running
Fedora-mate-compiz 41, recently came into my possession. The first thing
I notice is that like the Raspberry Pi, this little machine does have a
working audio jack, so it's possible to plug headphones or speakers into
it. Also, the problem with your Raspberry Pi is probably not related to
parallel tasks, but may be more related to i/o, which is known to be
slow on the Pi, although I thought this was largely fixed on the Pi4,
and by all accounts should be even better on the newer Pi5. In any case,
since I can run a full desktop on the Atopnuc without too much
difficulty, it should be possible to run something lighter as you
suggest, and sound would come through your connected headphones or
speakers. The main problem is that parallel tasks would be slower on
this machine, as it has a dual-core processor as opposed to the Pi4's
quad-core CPU. I/o is quite a bit faster though, as it has an in-built
SSD and an additional MicroSD slot, so you're not limited by the speed
of your SD card or the USB bus. The main problem though isn't even
related to speed. I think this specific miniPC may be discontinued, as I
am no longer able to find them. I did however find another Ubuntu miniPC
with a bit higher price, but I'm not sure about sound, although the rest
of the hardware seems similar enough. That said, it may be more
economical to try out the Raspberry Pi 5, as it does appear to resolve
some of your issues with the older models.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB4419E98A41E54508BCF9E949C7122CO6PR18MB4419namp_
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
It is a matter of how much you want to spend.&nbsp; There are hundreds of m=
ini PCs that should work at this point.&nbsp; Asus bought the rights to the=
 NUC line from Intel.&nbsp; It seems that some of their PCs may have pin ou=
ts for a tiny internal speaker so you could hear
 the beeps from the grub boot loader, but I'm not exactly sure which model.=
&nbsp; Many of the cheaper ones have built in audio and a headphone jack.&n=
bsp; I have a fanless mini-PC from Lele I use for experimentation, that you=
 can run on USB power and thus a USB battery.</div>
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
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<b>From:</b>&nbsp;'Kyle' via blinux-list@redhat.com &lt;blinux-list@redhat.=
com&gt;</div>
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>Sent:</b>&nbsp;Tuesday, January 7, 2025 8:56 PM<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>To:</b>&nbsp;Linux for blind general discussion &lt;blinux-list@redhat.c=
om&gt;<br>
<b>Subject:</b>&nbsp;Re: MiniPC's</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-size: 11pt;">An Atopnuc miniPC =
originally running Ubuntu 20.04, now running<br>
Fedora-mate-compiz 41, recently came into my possession. The first thing<br=
>
I notice is that like the Raspberry Pi, this little machine does have a<br>
working audio jack, so it's possible to plug headphones or speakers into<br=
>
it. Also, the problem with your Raspberry Pi is probably not related to<br>
parallel tasks, but may be more related to i/o, which is known to be<br>
slow on the Pi, although I thought this was largely fixed on the Pi4,<br>
and by all accounts should be even better on the newer Pi5. In any case,<br=
>
since I can run a full desktop on the Atopnuc without too much<br>
difficulty, it should be possible to run something lighter as you<br>
suggest, and sound would come through your connected headphones or<br>
speakers. The main problem is that parallel tasks would be slower on<br>
this machine, as it has a dual-core processor as opposed to the Pi4's<br>
quad-core CPU. I/o is quite a bit faster though, as it has an in-built<br>
SSD and an additional MicroSD slot, so you're not limited by the speed<br>
of your SD card or the USB bus. The main problem though isn't even<br>
related to speed. I think this specific miniPC may be discontinued, as I<br=
>
am no longer able to find them. I did however find another Ubuntu miniPC<br=
>
with a bit higher price, but I'm not sure about sound, although the rest<br=
>
of the hardware seems similar enough. That said, it may be more<br>
economical to try out the Raspberry Pi 5, as it does appear to resolve<br>
some of your issues with the older models.<br>
<br>
~Kyle<br>
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

--_000_CO6PR18MB4419E98A41E54508BCF9E949C7122CO6PR18MB4419namp_--

