Return-Path: <blinux-list+bncBDDJ53UQ74LRBYFC5KVAMGQELJEWAOQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC0A7F0979
	for <lists+blinux-list@lfdr.de>; Sun, 19 Nov 2023 23:51:13 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cdbdbd8a5sf56005791cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 19 Nov 2023 14:51:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700434272; cv=pass;
        d=google.com; s=arc-20160816;
        b=sCdxYBz+bAWfwfmCiHhQejDk1MRyUh+SkSFM8gwBZ8GPrFJs4WiN4qZjn+aYNtyqCC
         Kuzn0giAEKdRm6Iz5A1MbEAsC4NMmjdYRNT1td4NlHJcQNSmEz6rjyFFC6jACihZa+gd
         Iuk09WyDId8SjIQR/7704wVbV7WOw3xA2+P6WKW9xIRXXqmRuoI4kVhNQF0pPbz49e/5
         IKQWpVNMipo0f2pxi4Jslo04of5BbDQBEbf0gDvyYM/XDOa4D+W/XZVYfW6fBTWXK+ih
         Yo237ptIoCYv3oHyIHEx8gIDmYA+sN6mOOv7uZ9sfBm2nGYIjQiB8drGG3SAuqVfR/uH
         WDTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:content-language:mime-version
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:delivered-to;
        bh=ocd06LwwSbuXFaPcv66hEXowa2rzJ4Wsii0R+O9ofgc=;
        fh=+C+5woSXJVrHwO33oRd7sJAkkum6P3iXJfZvnMID46M=;
        b=hO5YsE83GsUXRUlCXdiPmOjR20mqrVP07eV2Y94hC7WPm5qQ242f0HWaverqDXKiWo
         y1SJbkvkyKysNYmmmW7UPHmeU8yndSuP0oraTdJYYe2UB3uyZJJjW8ymvPFeVHJhuRmz
         Ffa2ui81rtGdrZcwb1ET5/9I9aDDLiDuE5fqT6+feOQQBFdN5L/GktCpHKfJnYvhe7us
         0R3fWfpRpZX/ntOwRYhS/KRgBV5jlqitNqhSfv6MENOyZ6ruCxAu3lcMptEw2361n3oT
         078rhtaWUTW3ypxj2IgZn/q24/3gaxI7CQtL+tT0WGchLLodKatzlU2Lqm7vcQwZya9T
         QDiQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jldail13@outlook.com designates 40.92.45.24 as permitted sender) smtp.mailfrom=jldail13@outlook.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700434272; x=1701039072;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :content-language:mime-version:accept-language:message-id:date
         :thread-index:thread-topic:subject:to:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ocd06LwwSbuXFaPcv66hEXowa2rzJ4Wsii0R+O9ofgc=;
        b=fCwnlidGP0lwjb6h8LCxpPIQJNRBf6wUqvthciVC/sEA9fHw8mVL//vTyjx+SmleYk
         Vjqcz0Lvgexocmt7kCENulUfLKq0NIUha0xTbW7A4oBDiYkUGEbvQRZGw2Fy9W1L2GPT
         yj3K/ZRNnrpE70x6vHcmjcBNRu4EJABzu9EIi6whDJ7pxGfdodQF5Z+XSfx3T7+TeOwz
         nw4/5VZsAz6Ear8bqFLxHLP5oOx7hIxO950hV58IGJIXznWK7bXcOpUzqo26AAHsEMSj
         9d1BElVMc2LvYgSnaJX76DaRJOWW470tH0S14eWDzmgKTP74fXy8PvLAuSLRr9/2UxZW
         DLOw==
X-Gm-Message-State: AOJu0YwSGpOZcumDnZXet/oMaSE5Waq6w3+PrUVE+yS5kPXt4sMLgKF8
	tumniL5Jm2ZDcGnbt+yvZIPnpQ==
X-Google-Smtp-Source: AGHT+IEBLcuWDkjDt7Y/Iz2g4rxBOR051aDWJZ9S8i/bS2R6iz/V3WUc1TBweoy2ZdvTwkPSsTZmRA==
X-Received: by 2002:ac8:5c91:0:b0:421:bcc0:d6c6 with SMTP id r17-20020ac85c91000000b00421bcc0d6c6mr7504546qta.28.1700434272327;
        Sun, 19 Nov 2023 14:51:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5847:0:b0:41c:c119:24dd with SMTP id h7-20020ac85847000000b0041cc11924ddls1684446qth.0.-pod-prod-07-us;
 Sun, 19 Nov 2023 14:51:11 -0800 (PST)
X-Received: by 2002:a05:622a:13:b0:41e:2112:611f with SMTP id x19-20020a05622a001300b0041e2112611fmr7813529qtw.39.1700434271185;
        Sun, 19 Nov 2023 14:51:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700434271; cv=none;
        d=google.com; s=arc-20160816;
        b=NqVhChpBuK3jbrHxwS1VbR95/SG+w1MCYh025AAtkAUqZY1Ke404vzlNMwc077+0zE
         qsALD94n0NQH2AMWuF997hK+/mQ2El6NHh2YsWewcAeAzlav/ndGKda5evy6tp+Hwq69
         J38ocuAEW+tk9ItaftvWKACrVqeJkP3yR7/Gi4AGpHji1M1iSoBYUbuIkb09Fpy8r0Bf
         bILE1sqLSEOTQjO0Tr9hIbJoQP5Yy1I0zS4GfdTaqOtzwYlc8f0yyo9E8tl2NlzSm+H2
         Rfsp9aJW4JDGSp0hkCcudhE41Wa/TqQ2jyN2yNW/QvpGK1/2j2z6kEDCIBG5If/yHT25
         6APQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-id:content-language:mime-version
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:delivered-to;
        bh=Yaazxl7VawUH4ojdKK5PVx9gW/FFlmNSdKdczaNGczs=;
        fh=+C+5woSXJVrHwO33oRd7sJAkkum6P3iXJfZvnMID46M=;
        b=IZ9+ZHRmuz3bWg30rZPXPo0NGjwAk9ahGtuAgD24TyrbI9/qAY82s39IdlXe07MDtZ
         6QiOpgqDaOGjPwvfaSPSxD27/rH8oeY3MscjFhizyClxzJI7PhwaMQuEEi5YXs/ovHZL
         D4Qzp3jKf2bQaFkEXGtQp8f1u5IsVu5Ar8jPEigOBiE/DM7zk/XE0ot+UqGOF2V8cyH4
         UtPyy+R0ByHZcxKWioUdF3B+C3X9sBrcZYZlvKnlhNhaO3QnpnKCM/O+xwObDmYTgAW4
         FmSFXazFBDSbPigg4rMnBcIMC560o7OVslt4+pnie3Qs+XqFHwThpAVHudAMQ868ljZZ
         KRFA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jldail13@outlook.com designates 40.92.45.24 as permitted sender) smtp.mailfrom=jldail13@outlook.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id k20-20020a05622a03d400b00417be34bff9si6108978qtx.675.2023.11.19.14.51.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 14:51:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jldail13@outlook.com designates 40.92.45.24 as permitted sender) client-ip=40.92.45.24;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-319-i0k0NisFP2WnkfxBwZzrvA-1; Sun,
 19 Nov 2023 17:51:09 -0500
X-MC-Unique: i0k0NisFP2WnkfxBwZzrvA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A45429AA394
	for <blinux-list@gapps.redhat.com>; Sun, 19 Nov 2023 22:51:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 162501C060B0; Sun, 19 Nov 2023 22:51:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E8D61C060AE
	for <blinux-list@redhat.com>; Sun, 19 Nov 2023 22:51:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD96F811000
	for <blinux-list@redhat.com>; Sun, 19 Nov 2023 22:51:08 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam04olkn2024.outbound.protection.outlook.com [40.92.45.24]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-25-4PANSUGYO7ec9tMWwo2CzA-1; Sun, 19 Nov 2023 17:51:06 -0500
X-MC-Unique: 4PANSUGYO7ec9tMWwo2CzA-1
Received: from CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:930:2c::22)
 by CH3PR84MB3670.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:610:1c5::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.27; Sun, 19 Nov
 2023 22:51:02 +0000
Received: from CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::7181:dc3a:b080:8e9a]) by CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::7181:dc3a:b080:8e9a%4]) with mapi id 15.20.7002.015; Sun, 19 Nov 2023
 22:51:02 +0000
From: Jessica Dail <jldail13@outlook.com>
To: "Blinux-list@redhat.com" <Blinux-list@redhat.com>
Subject: Connecting to wifi in LMDE6?
Thread-Topic: Connecting to wifi in LMDE6?
Thread-Index: AQHaGzreTytYRZVs3Em0WN78Mz26GQ==
Date: Sun, 19 Nov 2023 22:51:01 +0000
Message-ID: <CY5PR84MB3051475D0C7DCCE86B6424C2D8B5A@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [E8+/OIOZ7J26MDzcXXWPDWBbn+39qcC1]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR84MB3051:EE_|CH3PR84MB3670:EE_
x-ms-office365-filtering-correlation-id: 4b847f41-609c-4e56-84b0-08dbe9520137
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: Tap5MC9LKL9z13gvnWKqPRGvadw2Bz7FC2Dqeic+fSbjI8j1IdpyvanumyruRQynyLtSo0cPmkHxOermyzGuPTyXzF1GAMGIao+eZuJiWGk7ZbXHoH8foW9ryWKgM2Y7ynHn+kI3nIldAhlvJ479JGRYguCnvfJL3gXfx1bPKshB6BAIpBZEAZYA1CnwAVjgVPyu020J+prj6XDf1M0jCAoh1N6RGnCeJZVsu4HKIEtyZurjQDl+4tPj0XQBTrOsj0hQ+sULrLHnMkYyXIvIAiEwWbGKLVk3mPprTBntiBA34i7Ryfj1mT0cNTQhNzqEhucpXzhwYRpGn8AVhXptFJmPxIG2viV+fmV7QebkhguPk1Insp+y3V3l/WUqgBwwi6CzO71c3hPT2abNZiW3CHveumTtFhWyAeNgxGmO0xgB2azIUTuUWZgobc9zZBxm0Vtf0IF5RYABCkHlEuKEvA6ZxoJUCWYtbc5Vz7ANcVa6iCRJSOrJoAPR78novWRsgNzQMj8UsIshcUUs848sZ23PUoaGZVn7YVmTQoNt5aMFK/sRTcEDnjsukPr+S2Ztva8KRyLgNTvKufnwqAXkz1XzVuJSImnNvABuFNHIXWT40ckC0/V0pGHuQA7NbDll
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?bSLAg1J/m9aMD1BpqQ9Pg0HnQcjNlw85aoiyOGggr+rkq81Nc68wfDDv+S17?=
 =?us-ascii?Q?wiJ04B6TzKeHGMsM/KAVWffwF1cteI1m/q8fhafuoaYDyyfn5fCaCO0h0umC?=
 =?us-ascii?Q?1xGMpNKjyz3XBUp502EORmLkvkqbP4W5TlsP5BwH0+F6i1JIlHFjre/LCoJo?=
 =?us-ascii?Q?PUpuWbJ7SGfe76MKU/JtBHPMsKoEgJGtHBaOXABddbnDXIcfqv/0f0zSv8AA?=
 =?us-ascii?Q?/RgaEsRmzaaYPjqTK7k0sHqgJeAEHhio0M1sMFVuGPNgEp1K3l+Xptq0m9n1?=
 =?us-ascii?Q?/Q8hM0DHkDmJuOXPvC2ok0dBPUyUKamIqy7cvb/UW9fgGpVZPOD00c0sOCrb?=
 =?us-ascii?Q?SofnzL2eBe/Z12kS61AyEY1WHbrCMcDWG8G0vTNdwrWfbqcyDIxsOu/hZ2cV?=
 =?us-ascii?Q?FcGJ+BuB053hv1rBxglXFI46wabNAfmbd4qkmOp3TqNce2OjQRVq0bcyAXj6?=
 =?us-ascii?Q?aZn/t1HACQxNYLZOhRQeoYDEriq00pKb0fjLhmavISEnPma0yyIWqF/SGH2w?=
 =?us-ascii?Q?jRgku9S7l2k/bwKH0hh6UbBXmQQGDvVQixcWQBGXg14148Qb4WkerTWi5+U/?=
 =?us-ascii?Q?HA+xkrQetwrrs+EJEofC78gPuwVP3nWQXZ3vVpRDqhcbNfN8GHWxgbLpENmD?=
 =?us-ascii?Q?nexrnDBDxa7Z8Oz/3rijnyfkqMKaIM8gHeWXHMusH9XftfsXPuld0epi42df?=
 =?us-ascii?Q?Yu797Ohwlvy6DV03OQNiv7ZuDV5beBNu0cfObHUqcytKF1sRKTrj0E6UkyxI?=
 =?us-ascii?Q?UGbAbeAUure+tQPKep7PvVa/dXE8cPXRryk9UY3+DjVViQ5sSm76kg0LyPMR?=
 =?us-ascii?Q?AqVNDdTitENnWCJnug654RNYjefXHvYSztTQA+Prir/+7BUmg46/AkOD2AmF?=
 =?us-ascii?Q?9Bw3jr3UJbjedqglNihPkUbEXhNxSa0m0AXbC0VZHWNJ2PVvixXjR6UfbzSC?=
 =?us-ascii?Q?DLlDHCyxrHVpgE2KZVkND+aRZ/B/I/TglXXpZfe9hQ71eFpKKL+yXPgR+P2l?=
 =?us-ascii?Q?Dhb9UgAPT4SnGzlWzvkoK4GJLbgp4fU1QJFJD4YCf4hadGUitXhcFTultQmY?=
 =?us-ascii?Q?X6EtdXkkX1sTrsWv6VBy2rNBvWpdQK3VyTkpB9d2Dk7XVCq04QVUjs0rnMSF?=
 =?us-ascii?Q?dHHjuHbcQpT06dI6OAluXHJf6aH4i9KyOXebEFeGVWTEpT9bDQ5FyXUPKEsE?=
 =?us-ascii?Q?56e/kINtkGVvNDyNgE0T6NRkLOnlMtyHRzkOUg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b847f41-609c-4e56-84b0-08dbe9520137
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2023 22:51:01.9722
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR84MB3670
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: outlook.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-ID: <6C547BC0A772D44F941B76582E5AFEEF@sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant>
X-Original-Sender: jldail13@outlook.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jldail13@outlook.com designates 40.92.45.24 as permitted sender) smtp.mailfrom=jldail13@outlook.com
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

Hi,
As of today, I'm using LMDE 6.
This operating system uses the cinnamon desktop environment, which, I must say works pretty well with Orca 43.1.

The only thing I'm unable to figure out, that wasn't mentioned as part of the installation process, is connecting to wifi.
Has anyone done that successfully and might be willing to assist? 
Thanks,
Jessica

Sent from my iPhone

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

