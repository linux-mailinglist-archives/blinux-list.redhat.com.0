Return-Path: <blinux-list+bncBCAJTHUAX4NBBOXBQ25QMGQEHM77IQQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 9455E9F51DD
	for <lists+blinux-list@lfdr.de>; Tue, 17 Dec 2024 18:11:24 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8f51b49e5sf104839026d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 17 Dec 2024 09:11:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734455483; cv=pass;
        d=google.com; s=arc-20240605;
        b=Js8qIzUPl2oTrLvoXCwcYqtM7ARpN5x1VqtK6z9K191fxXxMz5bVWcDrGvcAYN2QSW
         4ompUTSeMNdtCh5ct2m8gapDmYEZcx4oCc7hI/+RCGCJ6TsWo9eSn7Gxu76cDN/Qc9Xo
         KuLUEZHSXKQ1HRs5o/keaqaWN83VQNqVsa8lg96AKbOpKfVPWOqu9eS8h8s25I5FrkBe
         YnQbvsVqPBvzYw8ncNNFkIaUBL8BnJ6q7nW6M5Yb5WXRk2WBRrjtMFlSf9uQZdkZGstA
         lM0m5CsUAZeMTQHY0TLH7C7/djv+0sM2S0vUXbG0riC6QSOFxsOXkV5UoTqDdFulk1yc
         T+jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=wgXRCBbS7T1OCnkWMxxw0hlO2bxruIBKiBm7Sdh5Hw4=;
        fh=jLkwwGBAOeHYbPucAKyvc22M98RNmbzHti3GqHpHq8Y=;
        b=a04kIJfzbb201EZgoImm96xwW99FAbTyfFAJYze7Rw05hnIWFDn1Jz4sL/6pDRaQJL
         DMgDEVSac6GEMfpNczhIUjhh0vRnU6aFMMWj+K0Nva9hYryB867uKSxcH7d16mWpUh6S
         F4PQwL8UBzW1VCqQwydOIuy5IRNJNlX5kdOEUHf+mwivwn+R4ucTL2k63WsvxV9QJYRG
         f5BrnsMGtZDwhZWdn8rDpalf3sCBAoatCdHZT6664sZer/b82Hw2y2DEx/DZIjM2CGQ7
         b7FUWpO0AhDNTXrPTX/b8ZZ80l0IPdI8DHL4VuP9xGjTKVKmmiIgPoidnwCqaLqVPcWW
         rzGQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.220.102 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734455483; x=1735060283;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wgXRCBbS7T1OCnkWMxxw0hlO2bxruIBKiBm7Sdh5Hw4=;
        b=vYwq/JxotPZMrt/YFn0pPf/YWCm80fOYZoFnzqluZIVRJa3k6vo/QEYgXDDesF9u+b
         JST+i1941Q+e32XOPVISj4Yk+j7ejujAWWO0TrbZ6pCbvcC7J7u3+jbOVdwZ6xj/x/j7
         SjmOo7ibf1cSECzHNo/22b4UaH0Z7X7lYgHbxGzg6pt6gE9k0DQ7lkMZd1KVRb81xW8B
         wjbocdLs7R8A2OB7ueHcE1D+dj8GeGzlB4yoKwFJx4BgUOcSXM2Q2tOAhNiDBVDRkHwz
         a/wLCM+JVbia0jGEZI9Iih6oB7NVHMm7M9hdpNR2pCXOvlWHUrE/IpwcXMl4AqqPhBQF
         UEjQ==
X-Forwarded-Encrypted: i=2; AJvYcCVw7kYRcAUQIXDgwmIvmOeyRRG/zK3RvnXOXGUKkgr3EFl5MrAbXzhtlLePcLKM2MffEAqUIA==@lfdr.de
X-Gm-Message-State: AOJu0YzpENkvmM0HqcvRQ13buT/Kwb5NVmY99GcwRYqdY2IXfKhpCM3F
	p3KlrwptcKUayQ8cDe2OhyGmPr5xUq/M+R3LGgTKQ4TH4EUr4c5SKxjt/ANM4gU=
X-Google-Smtp-Source: AGHT+IGONUwXTjbWHTdQ7viVSFS/KYnblXmw909uhhlkouRi3d2wAwVQ5fc8Ql4S9tAXxOn+vxVGug==
X-Received: by 2002:a05:6214:2123:b0:6d8:a1fe:7293 with SMTP id 6a1803df08f44-6dc9686b652mr310042976d6.42.1734455482805;
        Tue, 17 Dec 2024 09:11:22 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:ec44:0:b0:6d8:f5b9:2be3 with SMTP id 6a1803df08f44-6dcbf1117a7ls5530016d6.0.-pod-prod-07-us;
 Tue, 17 Dec 2024 09:11:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV6j9a5l7pz+USisfhwK5zOrOqd/gx3XXpwQGLKS6kPrmp/DnqkcNje2zTfWqEL5sYiLCYwoYnbogohVw==@gapps.redhat.com
X-Received: by 2002:a05:6102:441f:b0:4b2:5c1a:bb57 with SMTP id ada2fe7eead31-4b25db3c33fmr18124882137.20.1734455481457;
        Tue, 17 Dec 2024 09:11:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734455481; cv=none;
        d=google.com; s=arc-20240605;
        b=T8pSUioK3Wo5W3/n6PsAaiVK2y2plEAIOaJnmZwNnxFDuRuzSYn61nwAjBbQxagQY/
         HqXb4prd7jYJTAl7266G/wQ0ihNpTzLZQn5Ul2H9a3w5QXmkujg4MMZq5B+B+0iYWqAs
         9g5QQGkJwv/ZDHjIHsa0K0IVWoeJJ/8TP84LWMRFRFeDwFXzv/bg+/+QPH66+FRfNXYj
         tO0Z2+Y+fdiHz9ewJ/2CrYGeiJv1BGKNcoPg9y/bnQYt1per5JnjgMtIM/uii8ZvPWSJ
         viLKskw7sLOMJWktUXSPU00yru3EyL4ytreEYViEBZwIVYrwVWtNVrSwZFe0pVsyY1nx
         qFlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=CZoX+Lhw4hlZVZyoiJdhZ12sVCxtKBlUGWzaP4BGT6Q=;
        fh=hoFmWoXC2CHKI6JOxm+3BL/uUCjMqmmKgZJN+XpcqWY=;
        b=SDq2RmWq2i59TRo5M1Maq2xyappBos9MafCcLkY+U0ko/MME0jMV98Dm9RRYWmZgGb
         Lcj0a0EG+j4SXoAdnrheW3+XThmFoOmdy62boLs7dnFj/NiwSuAOMWMjl+u67IQd4RlX
         VV1CsMqUFMNbPT5yyWCMwHVDLodv5Bh+Qz89sBsy5JHnv5JsPcQTzTFKLrBrDyj0+MpI
         WVtmxpFJWsb13+IpABYtCXHhlxNbS2Zc+J0quPp9xOyxxqo/hz622spvbWkk9HZl0ETp
         gEjeEnl5I/RRLyo5y4BpDJVi2JVExx3Lq/QfMXnFwW8dZdn5/5GRLdUmmWogPo9HeD03
         Mksw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.220.102 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b27047a6a9si2494635137.581.2024.12.17.09.11.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 09:11:21 -0800 (PST)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.220.102 as permitted sender) client-ip=40.107.220.102;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-475-Pt80ROqtONasD1sv-B1maQ-1; Tue,
 17 Dec 2024 12:11:19 -0500
X-MC-Unique: Pt80ROqtONasD1sv-B1maQ-1
X-Mimecast-MFC-AGG-ID: Pt80ROqtONasD1sv-B1maQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C3C1A1956087
	for <blinux-list@gapps.redhat.com>; Tue, 17 Dec 2024 17:11:18 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BF259195394B; Tue, 17 Dec 2024 17:11:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BC22A19560A2
	for <blinux-list@redhat.com>; Tue, 17 Dec 2024 17:11:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2C7821956069
	for <blinux-list@redhat.com>; Tue, 17 Dec 2024 17:11:18 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2102.outbound.protection.outlook.com [40.107.220.102]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-541-8dTOC0JHMzGyi68zq3kc6Q-1; Tue,
 17 Dec 2024 12:11:14 -0500
X-MC-Unique: 8dTOC0JHMzGyi68zq3kc6Q-1
X-Mimecast-MFC-AGG-ID: 8dTOC0JHMzGyi68zq3kc6Q
Received: from CO6PR18MB4419.namprd18.prod.outlook.com (2603:10b6:5:35a::11)
 by LV8PR18MB6322.namprd18.prod.outlook.com (2603:10b6:408:25e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.22; Tue, 17 Dec
 2024 17:11:09 +0000
Received: from CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518]) by CO6PR18MB4419.namprd18.prod.outlook.com
 ([fe80::bc0e:c0a2:a316:9518%4]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 17:11:09 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Martin McCormick <martin.m@suddenlink.net>, "blinux-list@redhat.com"
	<blinux-list@redhat.com>
Subject: Re: My Sound-Cards Are out of Order Again
Thread-Topic: My Sound-Cards Are out of Order Again
Thread-Index: AQHbSe68xTE2Z6HN8UaT7XDwpJ3Ls7LdSsyAgAACiYCAAAcOAIAABSyAgAACtQCAANZoAIAMbvcAgAAWnkM=
Date: Tue, 17 Dec 2024 17:11:09 +0000
Message-ID: <CO6PR18MB44198F8576A20363A7C5D0D5C7042@CO6PR18MB4419.namprd18.prod.outlook.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com>
 <20241209.040341.694.24@[0.0.0.0]>
 <41ed14fc-97e7-bfd8-b13e-ad14d429cc1a@hubert-humphrey.com>
 <20241209.043800.647.26@[0.0.0.0]>
 <20ccc5fc-d10b-edab-7aa9-9ef3365491bc@hubert-humphrey.com>
 <20241209.050612.901.27@[0.0.0.0]>
 <40ebd47c-4d86-9d2b-7888-eb0ed70adafb@QuiteLikely.com>
 <E1tNZlg-0009xE-2c@wb5agz>
In-Reply-To: <E1tNZlg-0009xE-2c@wb5agz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR18MB4419:EE_|LV8PR18MB6322:EE_
x-ms-office365-filtering-correlation-id: f8d6dc08-8b99-4c44-55bb-08dd1ebdcd08
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|4022899009|7093399012|7053199007|8096899003|38070700018
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ltsN+4TD6iM/Ntxbzf/IMJ/YR3GfGTPfQvfeVKjInP8syBT4Q0wPFc7K1u?=
 =?iso-8859-1?Q?EAeeunWgnx38Iy/lLgOxMQ+npoOmsrVYCGX3jqRzEoNZbAqXpXteWylStE?=
 =?iso-8859-1?Q?09BGzLtd1HxmuFhsfukgZecYy/6RbNEohnRO2sttzAGqNp/IYC8aVpYAHp?=
 =?iso-8859-1?Q?cuH58SRyTFHZGSgIfNNs1MUOrmxczXrt3mIqBGyQWIkCacNuUm1AnITiJT?=
 =?iso-8859-1?Q?mcXJlH1r3UFRXG8tRlQhQNTyW/EOwZ3beDO1hkXosd88Xr9JGvljFUIhwG?=
 =?iso-8859-1?Q?QZc5vF1MeBKXULt8MaMVxhVNfE3qAQeAQhShpJS2+l6AHKY9B8uXydvCvZ?=
 =?iso-8859-1?Q?wPSCqodj74ZqVE1yAUptOjQXjcVWt9ugoXTlAiO+BAhwFRV1yuYQCNc4Sn?=
 =?iso-8859-1?Q?r7jaud/m12PTkFqvAmHZm7yVepijbKFqZ4YkYUXStWGh/7+2LVIw7ebumn?=
 =?iso-8859-1?Q?K1e2IZoUyb2ex8SObMko+kaiKM0MwmNoTTQrbP1W+kUqXigooJaagOWNGy?=
 =?iso-8859-1?Q?bcfHqjWIW42Y57fdk1TBKvuY2SefSv0BU1Pqep/jIxGUh+TL/hOVYtJAGV?=
 =?iso-8859-1?Q?w7wlpF3BMGD+i/UjTNb3HAkF/0SEwsKRxehiBQniS0wCYzoctPIy8dw8fZ?=
 =?iso-8859-1?Q?D2oG6weVQnxpb0M0Jt4ySqFb+vvV+6oUVBZNChWCythGmlE1O9IZAhPm6O?=
 =?iso-8859-1?Q?9MwusJOkY9lc496YVzInIbjPB9RNTHSQnE2AAKAgfon8Cw521C0G4YKZiH?=
 =?iso-8859-1?Q?/WszYxZ10aYvoPwE9FEn354y7/6kQTkSCftJAaDrVlvtzdeBy/RmfcB3mU?=
 =?iso-8859-1?Q?MuWPxjsgisn3/+FAAgXiAEJoTda86kzoBQ+MsiFk0sSTsvz2eMZAkQxEXh?=
 =?iso-8859-1?Q?osDo5oMUqbbTWmqbuCUHK2/UNsCm4zS0Rim4pvM8r4vmULFcRY7d16jSyW?=
 =?iso-8859-1?Q?O6O+7u4fPzPNhQUlaSPJWSFNrtfOBiXJSrwkvtitZKKJXPfPlOh+tKKS9o?=
 =?iso-8859-1?Q?J/PTXeCbkL+y+4QqddBwSeds0CwazXz0ZQq+18oEsX4JkkV/L7ukDwcm/6?=
 =?iso-8859-1?Q?SA4XDPtggZ+5qdHH6H5AJ0My1tkcrAKWzk8uLHlCOokCoohUGWqd0MdnRJ?=
 =?iso-8859-1?Q?sLLW9YGoPErYBu2khU//JIhKYDYJfn5uMllaYTmBF7/bU4TTxTesq0XiRw?=
 =?iso-8859-1?Q?Gu8bdomnLDJhLN04DiLp8Xk3kIXTx9bG/SydAkYp4jP10Dy/dqLwKf6aD5?=
 =?iso-8859-1?Q?nC7osQPWyCFKCVc5m2E19JGU4xuzMhPVrvXgg/rPsFedH5j3v8d1tUReyy?=
 =?iso-8859-1?Q?mNKE4sf80Dln9azuEbBHh0ZSUcMBW9fXhe1My3/zQmUF2YiOwdhnDXRX1V?=
 =?iso-8859-1?Q?R7AB0nle5Zkf9AtioD3l68pJ4CHU8dFU9rSzuzfmHnr5wX1+ICovL9dkxK?=
 =?iso-8859-1?Q?/AbKAIsStWi13yjS/i457zZh06RTYgDAwxCax+SKmR47tP5lKTwO9T2KYZ?=
 =?iso-8859-1?Q?I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR18MB4419.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(4022899009)(7093399012)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?9Wl9BTPLuXrWr2OO6AGQs/lIMmTGqGqfqkHp3Vc02YXvBVSMuhU41diG9T?=
 =?iso-8859-1?Q?3Rf6nJJWDt3CJDDexWaCal7Gro969q9jX6oUCASspcaxhvZ5Snrk1XEnE9?=
 =?iso-8859-1?Q?SSLPhjaDE6+VbcuyL1TSKrxJpwPgvcrvSMFr0KNRBs28PrORS+sSqEn2FH?=
 =?iso-8859-1?Q?wd/Qeve1cxT8jaNZrcWyf3z4s8Z3RdcbYtPttYuHWMSIsujsJrvJMcSZxx?=
 =?iso-8859-1?Q?IRb4IbGkYeqxn5F44I2VkGlGeST2E2xM2/BplrjpV/LBXsacUl5gtGnmaz?=
 =?iso-8859-1?Q?yfwxHsNWuJnmjsmUx5a/OaZWnpHmNkrpsyBb9eoF/vxwx/L7+VgVhR1Vok?=
 =?iso-8859-1?Q?BNnqIEnw/Qp58l8kUR7mv+vm2TgO+ufrWGMB2oZ6SwMwaRQyVlqISq3BXY?=
 =?iso-8859-1?Q?zKMAd+/N/XDz6/dWACBiQkD3Z8F1VX9+dxrU26n2FEZCrYF2bjFOACiN9j?=
 =?iso-8859-1?Q?L2dpTd57KjXDvGU6x4HFc4jlD+QlcX+yKLIrVBnGQIlOQ4qc7s4T9feMMc?=
 =?iso-8859-1?Q?0HX4oFwI1nlTpO7RNzGx/8GHaRBq+b8gmq4NuCll2rciHlEdPYJoFBrLKM?=
 =?iso-8859-1?Q?8tO4slJvJGH+lJQa9ZHYc6aOq3AjSXzj66/EYKf7i3fEtVwFMOIfxbf9ie?=
 =?iso-8859-1?Q?GLff7lfVn3eIX6RWPJe0tvzo3Ss55n30bsqcoBapFajrXMroxZLulvo89W?=
 =?iso-8859-1?Q?6Y0UsFSA3oNbpmm/7PpX6SPfnvppyo5hh3fDJgLPlY4L6NkCWTZEeP4YR0?=
 =?iso-8859-1?Q?aHKnNHDQSZjq6IQcKN3TuzPUPQxlxNWm2Bq/YYS2hYFWvxDailqdununn2?=
 =?iso-8859-1?Q?RA1I5Yul9GqU9AjRb4zdy/v28tweLFhhufW972zxuJYvLyhK/OTe5CQ7VC?=
 =?iso-8859-1?Q?O2OZkP7kvrZ8MGpv3EzcBf5eqDd4CUfTgeQdbwknmY9TUvr9eOxFltYOcw?=
 =?iso-8859-1?Q?xx0VZdk0oG25427XIceviP2tYGaoytNRf2SW47h+GLNB8suhKAQd1QV8jc?=
 =?iso-8859-1?Q?b0bwRgHHtE+BXQ8ZeLivVhUnrKt7OY1pwL1rk2bVg3F3QiJbZOBw0s0BBD?=
 =?iso-8859-1?Q?wLB2ZUzG/nt8Mhrm+W9whjOCUAobmy/MDEAS1MF3XvM0EdnSmMgJJDcu64?=
 =?iso-8859-1?Q?+hyAm9Vzg1UD93UWsouRkvu4wiT1qlftdaj4Eutcs21LbuRFV3/1ouYCbP?=
 =?iso-8859-1?Q?QsayCAt31wzGgHonelC9E0HvnlQpZgfcGiyx+1AGUH/o/JwYOWAAlEvf6z?=
 =?iso-8859-1?Q?ZGfH+bJ78dVA+x6NCq/QWbsCg/yioqSY01nx4jIGPj6SGGwsi36GvVI3Qr?=
 =?iso-8859-1?Q?amvKjsKJlA4CtjDBzwLVzgZbHhVAKQw21/ULRMOb2Vp7Qj2LJzgN91L/fW?=
 =?iso-8859-1?Q?Ppp1CaWFu/aFab3Aa1z27BfxhSHrqBeZM4CWNQr1qFCLKUuZG5Z26TZO4E?=
 =?iso-8859-1?Q?IZzUFyNLtohrOuiJfDc+P27W0PoEPYfmTJHvRL3JYVe9E5rHv81ddPteNp?=
 =?iso-8859-1?Q?41MtrN1Pm0vGFKMogVVsr9y57dltO0R2fDnmYl8eXC9WMjylZ+SzxvBVSN?=
 =?iso-8859-1?Q?fCy8twT6tKo9EOECDkWdjB5n3yfdSwFnb2OV2vhIBDv8xWAMt0j+5093R6?=
 =?iso-8859-1?Q?nHGbdHAQ4jl+lOdWuoYwJbaDXsp0pnVBHa?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR18MB4419.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8d6dc08-8b99-4c44-55bb-08dd1ebdcd08
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2024 17:11:09.3372
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EMwez8iFQN+PmlOPJJl1DSqTrk1XsN5nFApwuoFQDXeJLGiG5zpBye5mYgpAxCAN2VSughn/ZWZW7zdckdhAhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR18MB6322
X-Mimecast-MFC-PROC-ID: MZmtykb_jixaKR6xgX9_xJqS7qvLWoDA57UyoxGceVI_1734455473
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: HgrB-84BeNIbA_9mRjei-6XzBR-ndt-UutNS3h9sFno_1734455478
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CO6PR18MB44198F8576A20363A7C5D0D5C7042CO6PR18MB4419namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.220.102 as permitted
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

--_000_CO6PR18MB44198F8576A20363A7C5D0D5C7042CO6PR18MB4419namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Martin I suspect if you use 'dmesg' you can see all the USB ID numbers and =
that may answer your question.  If you are using Pulse audio, I think you c=
an have a simple script to set the default sound device.  Probably Pipewire=
 can do that also.  Maybe I don't understand what you are asking.  See
https://askubuntu.com/questions/14077/how-can-i-change-the-default-audio-de=
vice-from-command-line


________________________________
From: Martin McCormick <martin.m@suddenlink.net>
Sent: Tuesday, December 17, 2024 10:45 AM
To: blinux-list@redhat.com <blinux-list@redhat.com>
Subject: Re: My Sound-Cards Are out of Order Again

I am not complaining, here, but I don't feel good about the
following situation:

        I have 3 identical Behringer usb sound cards on a
Raspberry Pi.  Every identifying descriptor for each card is the
same so udev rules may not work, here.

        There is an old usb 4-port hub that the 3 Behringers plug
in to with the hub plugged in to the Pi.

        I discovered that if I plug the 3 sounds cards in to the
first 3 slots on the hub, they always come up in the same order
every time so far but I have done nothing with configuration
files to force this situation.  Am I just lucky that the order
doesn't change or what?

        It always seemed to me that if one could control the
activation sequence order of usb ports, a lot of weird trouble
would just go away.  The order problems are race conditions in
which one device may register  a few clock cycles before another
so it is device0 right now and may be device1 or 2 later.  If you
could tell the system that Socket 1 should go live first, then 3,
then 2 if that's what you hope for, then that would solve a lot
of issues.

        Obviously, if one unplugs a device or the device disables
itself for whatever reason, nothing guarantees it will get's old
number back but that is a different sort of issue.  If you leave
your sound cards connected and they stay operational, they should
keep their current indices indefinitely.

Martin
Geoff Shang <geoff@QuiteLikely.com> writes:
> Hello,
>
> The card number is defined by the index parameter to the ALSA module.
>
>
> So if you want to change it on the fly, you could remove the particular
> ALSA module and reload it with the appropriate value for index.
>
>
> For example:
>
> modprobe snd_ens1371 index=3D2
>
>
> To have them come up in the right order, you would edit whatever mechanis=
m
> loads them and add the appropriate index value.
>
>
>
> I'm running Debian Bookworm (version 12) and I can't figure out exactly
> how
> my sound driver is being loaded.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_CO6PR18MB44198F8576A20363A7C5D0D5C7042CO6PR18MB4419namp_
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
Martin I suspect if you use 'dmesg' you can see all the USB ID numbers and =
that may answer your question.&nbsp; If you are using Pulse audio, I think =
you can have a simple script to set the default sound device.&nbsp; Probabl=
y Pipewire can do that also.&nbsp; Maybe I don't
 understand what you are asking.&nbsp; See</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<a href=3D"https://askubuntu.com/questions/14077/how-can-i-change-the-defau=
lt-audio-device-from-command-line" id=3D"LPlnk562483">https://askubuntu.com=
/questions/14077/how-can-i-change-the-default-audio-device-from-command-lin=
e</a></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><span style=3D"font-family: Calibri, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>From:</b>&nbsp;Martin=
 McCormick &lt;martin.m@suddenlink.net&gt;<br>
<b>Sent:</b>&nbsp;Tuesday, December 17, 2024 10:45 AM<br>
<b>To:</b>&nbsp;blinux-list@redhat.com &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;Re: My Sound-Cards Are out of Order Again</span>
<div>&nbsp;</div>
</div>
<div style=3D"font-size: 11pt;">I am not complaining, here, but I don't fee=
l good about the<br>
following situation:<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I have 3 identical Behringer usb=
 sound cards on a<br>
Raspberry Pi.&nbsp; Every identifying descriptor for each card is the<br>
same so udev rules may not work, here.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; There is an old usb 4-port hub t=
hat the 3 Behringers plug<br>
in to with the hub plugged in to the Pi.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I discovered that if I plug the =
3 sounds cards in to the<br>
first 3 slots on the hub, they always come up in the same order<br>
every time so far but I have done nothing with configuration<br>
files to force this situation.&nbsp; Am I just lucky that the order<br>
doesn't change or what?<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; It always seemed to me that if o=
ne could control the<br>
activation sequence order of usb ports, a lot of weird trouble<br>
would just go away.&nbsp; The order problems are race conditions in<br>
which one device may register&nbsp; a few clock cycles before another<br>
so it is device0 right now and may be device1 or 2 later.&nbsp; If you<br>
could tell the system that Socket 1 should go live first, then 3,<br>
then 2 if that's what you hope for, then that would solve a lot<br>
of issues.<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Obviously, if one unplugs a devi=
ce or the device disables<br>
itself for whatever reason, nothing guarantees it will get's old<br>
number back but that is a different sort of issue.&nbsp; If you leave<br>
your sound cards connected and they stay operational, they should<br>
keep their current indices indefinitely.<br>
<br>
Martin<br>
Geoff Shang &lt;geoff@QuiteLikely.com&gt; writes:<br>
&gt; Hello,<br>
&gt;<br>
&gt; The card number is defined by the index parameter to the ALSA module.<=
br>
&gt;<br>
&gt;<br>
&gt; So if you want to change it on the fly, you could remove the particula=
r<br>
&gt; ALSA module and reload it with the appropriate value for index.<br>
&gt;<br>
&gt;<br>
&gt; For example:<br>
&gt;<br>
&gt; modprobe snd_ens1371 index=3D2<br>
&gt;<br>
&gt;<br>
&gt; To have them come up in the right order, you would edit whatever mecha=
nism<br>
&gt; loads them and add the appropriate index value.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I'm running Debian Bookworm (version 12) and I can't figure out exactl=
y<br>
&gt; how<br>
&gt; my sound driver is being loaded.<br>
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

--_000_CO6PR18MB44198F8576A20363A7C5D0D5C7042CO6PR18MB4419namp_--

