Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F334804A6
	for <lists+blinux-list@lfdr.de>; Mon, 27 Dec 2021 21:48:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640638123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RcAWfiYtin2hq2UlI5PxGpRsIvSrlKiEOHwQqRhxgAo=;
	b=CwX+vghgkdBuES8MlTQ/0CXcUQJebTntpTEwirktRM0zcpuRb7xMPcfhUpvAAHiEeLs3Z5
	Ih7rzqXlKZTXq7uXeLAn9rqgGBKmWOSpg+ACoMyJRDsgH5akYgupCQ3A+Mbx0dhDi/+c5Y
	Iap6GcGcIIbcdkTQe6GO3Sn80RZBiEc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-673-4IPI3jzVOhWxz3OHCXN2iw-1; Mon, 27 Dec 2021 15:48:39 -0500
X-MC-Unique: 4IPI3jzVOhWxz3OHCXN2iw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D24F801AAB;
	Mon, 27 Dec 2021 20:48:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7A869329;
	Mon, 27 Dec 2021 20:48:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 931F71806D03;
	Mon, 27 Dec 2021 20:48:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BRKm3CO003939 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 27 Dec 2021 15:48:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F21F2C08096; Mon, 27 Dec 2021 20:48:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECFA9C08095
	for <blinux-list@redhat.com>; Mon, 27 Dec 2021 20:48:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C0097185A79C
	for <blinux-list@redhat.com>; Mon, 27 Dec 2021 20:48:00 +0000 (UTC)
Received: from au-smtp-delivery-108.mimecast.com
	(au-smtp-delivery-108.mimecast.com [103.96.21.108]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-642-JuItnoGfObKA74JWB-u5NA-1; Mon, 27 Dec 2021 15:47:59 -0500
X-MC-Unique: JuItnoGfObKA74JWB-u5NA-1
Received: from AUS01-ME3-obe.outbound.protection.outlook.com
	(mail-me3aus01lp2239.outbound.protection.outlook.com [104.47.71.239])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	au-mta-15-tffd7Bi2OqWuDilT9Irs_w-1; Tue, 28 Dec 2021 07:47:54 +1100
X-MC-Unique: tffd7Bi2OqWuDilT9Irs_w-1
Received: from SYBPR01MB5472.ausprd01.prod.outlook.com (2603:10c6:10:e1::13)
	by SYBPR01MB6447.ausprd01.prod.outlook.com (2603:10c6:10:106::14) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.19;
	Mon, 27 Dec 2021 20:47:52 +0000
Received: from SYBPR01MB5472.ausprd01.prod.outlook.com
	([fe80::5453:ff4:edcd:cbe4]) by SYBPR01MB5472.ausprd01.prod.outlook.com
	([fe80::5453:ff4:edcd:cbe4%4]) with mapi id 15.20.4823.023;
	Mon, 27 Dec 2021 20:47:52 +0000
Message-ID: <25034.9845.997655.909319@gargle.gargle.HOWL>
Date: Tue, 28 Dec 2021 07:47:49 +1100
To: blinux-list@redhat.com
Subject: what is the best virtualiser solution for running windows on
	ubuntu 18.04
X-ClientProxiedBy: SY6PR01CA0118.ausprd01.prod.outlook.com
	(2603:10c6:10:1b8::7) To SYBPR01MB5472.ausprd01.prod.outlook.com
	(2603:10c6:10:e1::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 318217c9-3fa3-4721-a9dc-08d9c97a2612
X-MS-TrafficTypeDiagnostic: SYBPR01MB6447:EE_
X-Microsoft-Antispam-PRVS: <SYBPR01MB6447D489AEFF8B71C899A3588D429@SYBPR01MB6447.ausprd01.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: lNGEM6cP4nPehzoQIaC1cUsNCkhcJoSJJ6LPgyjOQ8vhO8f35JbvRjRGesyVI3PTEGSSgBQaIQSXG22eoPr2NWVeYyF7ulON95JJc5BkQi1Ymu3d5SCWCIbyu5LwHmPn0lYZz/Os1Oqqlz8EfNh4yyJ3hTh6nmDi93CRpeyjjTaL9JIo7VBKAGQ/sR6XH7BUmEsB3PUSGaPRwTX93WR5WYwa08X0JodG3C1PNugFPi28N6iHK6U/1Zf7QwcBir5e6AwQzXVqKl1onHjRuTvAl7qo0riWI1UzY/Go0AfJDIqoB9aGFPAGdYu/4oXfOR7tVpM+eFKoBN3ywYwITf4h3S3Xv01TSy1fCicyz0ItkvGvrasOqWIVJN77BJxRDn4HVvQfedOP8ZKmWYPH0jOWMxB/YqFVp8wbeNTKT7Zbha+ErpaQ6Gi5FDFuPP3aHBXx+PjA/8deTyNtKwUbjZ1ZwEWK4lgnJ9dfq8P8comdSXuCZ1BiAIOBBitPiSVfq89Uf1Jh8mPvVlGCSQI17pK0SPno4P+1AKGh77n3vQtx7iSZ+qpl8+zK2t8z/cVUAMKAY8kJaHj10Snx5ADqSE++0AsLK7MjMw/v6bvMxnko69VUzy5uMhmFAO1n4UonwU/5XU/zdj6IzQ1SUcTpO1WXjjKa0UsE2k+MOmorrtMzx3poCJ5P6Ju5pK+Np3sBTXX3WXDJq2VyLi7ZQzQAqs0HbQGcLX7RTPO/g7dB0SFWmT3arTbqDcxfsh2c/JKAuaSHeU/wzm5LhdXakXIGSQEzXMfgz1UdkQ1bcJHDLORPAbxElmcLfLQFtKnXKg77dtgaUN7i/z7V8RkRtZQu8lTNUQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
	IPV:NLI; SFV:NSPM; H:SYBPR01MB5472.ausprd01.prod.outlook.com;
	PTR:; CAT:NONE;
	SFS:(366004)(508600001)(26005)(66476007)(186003)(66556008)(4744005)(103116003)(5660300002)(66946007)(8936002)(6512007)(6506007)(9686003)(38350700002)(38100700002)(6916009)(3450700001)(6666004)(52116002)(8676002)(86362001)(316002)(786003)(2876002)(2906002)(6486002);
	DIR:OUT; SFP:1101
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9YqVBWGMhTXtrZY5GWo5v+4tGN55B/4cHuYRZwmk5tAg9ao8ACFz4H/xDcNw?=
	=?us-ascii?Q?OdHLz9yy2ID5+X9Crh3ohFBN5Q0WEd8C3XKeRCvdJL2B127NBWdMS0r8eQ4B?=
	=?us-ascii?Q?aQEhvaoEmbvIol99p+W4P2JO6gzyf6/6kGeqUyOT60KL4mjKFRmRs7ddpmyK?=
	=?us-ascii?Q?7+SJAO5d6WbqrbLL48KByNZwOeqHQfbo5IdEk/OGonoABzVtmZL7axH6hqDs?=
	=?us-ascii?Q?wNdldGyAEev3Pcc9Mi6cUscJ2RLDGAltv+PhiUOPyO+FbnNO2FylbUMmjesN?=
	=?us-ascii?Q?UdEAGumrWq01mEddLb6Q+UqWY6O5v/YUXg0szo9Kxj7CKujRLyuYQUk1AjBZ?=
	=?us-ascii?Q?/F/c7gsCZicrTpyqdD8+V7bQ7vcKLtmVmGrr+CaZwGOS7v9Iucl/6n2XbvTL?=
	=?us-ascii?Q?LF/8GnHGgDXe1eL9lX8+W4BGdd2E/+mJWiXc07zfobliSSKFx8CqSaVrmo7t?=
	=?us-ascii?Q?onJM/hf++EwkrMSDpZJBAs2FvLEfqGxR0WuSrfRDtoeUVrQHVOF7DoLLRgp2?=
	=?us-ascii?Q?z6B7Eq+fx9ZmBQC5k/NTERWC6w7ewIgW4B/T56mCZETOXtYvj121nLS4Brt0?=
	=?us-ascii?Q?lwsSpP9yhTYVsff6QpV5bdb5fdOD7/CvdcbiU+J17rhoxejcvMXWpvDa+/s9?=
	=?us-ascii?Q?ER6/kxOVKsaDEQXs6i48TVgO3nBxDy4oblNaqJdKvvFBUGowD6F+f/Y+mJ6U?=
	=?us-ascii?Q?FN8T+K+rhmuS7VUusudtpXGhmIu1uyv8EPLvABHWyOkBqGWm+l3VUW5z1PL3?=
	=?us-ascii?Q?ijFbXWTQX10EDKLBKITSTPYxe0DYCs6ai/9mxgfffB33bZlFvvQM/DNzXQ1p?=
	=?us-ascii?Q?TYhFgfK+leLa6hjMLRXnihBEPu/UIVKSmW9gNO9B+voRSJLBo7d/bzMnFB0J?=
	=?us-ascii?Q?zxLINYCPkRC0sKK0yuHb5nYumn4+pdayBu4metlzRXsEm9n1AkPFEGehBNxj?=
	=?us-ascii?Q?Vr/I/dgAQaIq0PV44vKF6F36bUYjK2pTH5wwhYhrZ2m4b8942YxN79a3nStc?=
	=?us-ascii?Q?UHuyg0EtQq3tUGcORSRIkvYMnIRRigZnwodasiXuZXgSAJmEcbErlmNRNZ6e?=
	=?us-ascii?Q?SNMuO2xfVVjV3Wh/xQa3s4nwSLuI/cuGLBXc/BtB5nQvmEG3lhFpSLNFArI/?=
	=?us-ascii?Q?3BpDn8KSaWsDGSndzQvEZbny+6Jg16NHmid0gG5hb4X5IhJbg+syLcp9e9d4?=
	=?us-ascii?Q?X9DsQ6poyJKANj6H0CJMD0ybrl2mBa6h2ACKYPkVriQahDb1WZFIDqhUob6Z?=
	=?us-ascii?Q?vH5lC5DUQxIZhTfpnZrEahRpxIez4rmxbDjn2ehc+/jyXZaqh/FUtGBtvxai?=
	=?us-ascii?Q?48zJ3e1ZeLUbL8QwT9JH7NjUNyxFvEmQx3VdwZtmQXV/KU7IaYNlmavOVzcO?=
	=?us-ascii?Q?MThcQFPqpCMaaumXAEUDXuOn/6elX+Xqd7yKWjEBZfXTZHKHVzvkw/Njjtc/?=
	=?us-ascii?Q?ikw7iLVkSQa6yrxwd0Be/M4yqXFeSoNcsch2n5JKR/p+M2w92h2oizH5Djcj?=
	=?us-ascii?Q?6MG6eCe8IR+1qTiQIq9qEigI97l/UIf0upMSnfvMDnc0E6KzMjcax0H+nN+3?=
	=?us-ascii?Q?OGvHXCmoa1HXHuLx+/Kcnfa/sc+RCSU6V+oNOrzDNlqT1XWGQ5Ar4v1hoSQV?=
	=?us-ascii?Q?Y+bQmdP/OiWwHsOaOixgvzo=3D?=
X-OriginatorOrg: unimelb.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 318217c9-3fa3-4721-a9dc-08d9c97a2612
X-MS-Exchange-CrossTenant-AuthSource: SYBPR01MB5472.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Dec 2021 20:47:51.6739 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0e5bf3cf-1ff4-46b7-9176-52c538c22a4d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N7Bqz1V+q1UO6NUvKtNuK7D+VRzZl2g3AZdK0Bfg84azpSJ7JgodfceXIRrJdDMq8UrEypoHl+qvHRGYYbOIiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYBPR01MB6447
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BRKm3CO003939
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I still need to run Windows apps every so often so am looking for the
best virtualiser to run a Windows version. Sound seems to be the
problem. My organisations preferred solution of virtualbox is way too
choppy to run  NVDA usably. The machine is a 2019 lenovo laptop with 8
processors and 16gb. I'm running ubuntu 18.04 currently at kernal
5.4.0.
thanks in advance
Peter

-- 
Peter Rayner (he/him), Level 1, 187 Grattan St.
Academic Lead - Climate & Energy College <https://www.climatecollege.unimelb.edu.au>
mobile +61 402 752 379, skype: petermorag 
zoom id 4431343191, join at  <https://unimelb.zoom.us/j/4431343191?pwd=a1E5Z3JEOTRVQUJsaVdRbVUvR1QyZz09>
mail-to: prayner@unimelb.edu.au TWITTER: @raynerstrings
I acknowledge the Traditional Custodians of the land on which I work, the Wurundjeri people of the Kulin nation, and pay my respect to their Elders, past and present
I am sending this email when convenient for me, please only respond when convenient for you


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

