Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C31BA3208FA
	for <lists+blinux-list@lfdr.de>; Sun, 21 Feb 2021 07:45:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1613889903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GRfdLVTbEURMvXbKbsTJRSLV9PrfDkoqTbWYA5nyl1s=;
	b=PHG/i1p+5eyxyF4R4HVUPOZVBVV3DQRVN9LFKOc0ZCM6fuXsST8aGDfSOu+q28DDM+f2Ak
	r1DEB98vrcg8EoanzTGYg6R/YFUsUSY78NPXuGHb891fR42eHI2WLzKH/OJzav1M2r+5hZ
	hOQnc/8MB3IgpObr7BOHyRaVFwinKzw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-VP3SZaN8PKuT7ENjS4dWrg-1; Sun, 21 Feb 2021 01:45:00 -0500
X-MC-Unique: VP3SZaN8PKuT7ENjS4dWrg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7444B803F47;
	Sun, 21 Feb 2021 06:44:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC8506249C;
	Sun, 21 Feb 2021 06:44:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1ACB18095C9;
	Sun, 21 Feb 2021 06:44:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11L6ffjL020941 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Feb 2021 01:41:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A64E4200E261; Sun, 21 Feb 2021 06:41:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C4102102C0C
	for <blinux-list@redhat.com>; Sun, 21 Feb 2021 06:41:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E40785A59D
	for <blinux-list@redhat.com>; Sun, 21 Feb 2021 06:41:38 +0000 (UTC)
Received: from au-smtp-delivery-108.mimecast.com
	(au-smtp-delivery-108.mimecast.com [180.189.28.108]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-153-7DaFjzuxPCGOF2G3WnWY6Q-1;
	Sun, 21 Feb 2021 01:41:34 -0500
X-MC-Unique: 7DaFjzuxPCGOF2G3WnWY6Q-1
Received: from AUS01-SY4-obe.outbound.protection.outlook.com
	(mail-sy4aus01lp2173.outbound.protection.outlook.com [104.47.71.173])
	(Using TLS) by relay.mimecast.com with ESMTP id
	au-mta-39-HphEYEzEMMKHzN6zBko1Gw-1; Sun, 21 Feb 2021 17:41:27 +1100
X-MC-Unique: HphEYEzEMMKHzN6zBko1Gw-1
Received: from SY2PR01MB3083.ausprd01.prod.outlook.com (2603:10c6:1:1b::22) by
	SYBPR01MB6192.ausprd01.prod.outlook.com (2603:10c6:10:104::14) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.3868.28; Sun, 21 Feb 2021 06:41:26 +0000
Received: from SY2PR01MB3083.ausprd01.prod.outlook.com
	([fe80::acfd:ecf:d4c7:af55]) by SY2PR01MB3083.ausprd01.prod.outlook.com
	([fe80::acfd:ecf:d4c7:af55%6]) with mapi id 15.20.3868.032;
	Sun, 21 Feb 2021 06:41:26 +0000
Message-ID: <24626.147.38075.522338@gargle.gargle.HOWL>
Date: Sun, 21 Feb 2021 17:41:23 +1100
To: blinux-list@redhat.com
Subject: luetooth connection to Brailliant BI 32 from Ubuntu 18.04
X-Originating-IP: [175.33.136.96]
X-ClientProxiedBy: SY6PR01CA0056.ausprd01.prod.outlook.com
	(2603:10c6:10:ea::7) To SY2PR01MB3083.ausprd01.prod.outlook.com
	(2603:10c6:1:1b::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 6250l-137483-l (175.33.136.96) by
	SY6PR01CA0056.ausprd01.prod.outlook.com (2603:10c6:10:ea::7)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27
	via Frontend Transport; Sun, 21 Feb 2021 06:41:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 81ee87d4-ffbe-4659-fdba-08d8d633b58f
X-MS-TrafficTypeDiagnostic: SYBPR01MB6192:
X-Microsoft-Antispam-PRVS: <SYBPR01MB619295954D22DD85AF5F15AF8D829@SYBPR01MB6192.ausprd01.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: C+//lTy04r2PosYNUt0mlaJdKQHU9laHDcvqbmXq7nZPhdFebFhenlyNSpHkl9eJcNUik0wEy2lNXBrSpGR3FaPO6LczWPfiTa73NhHUGr4CKKIQhnX5lYxpLA5M8tsApKsxd3S1IYUBjT1LKrvm1mU7xA4KmFRD+q97olz883jYVMueCNczmT84F3Q5lTkiVopGocxwxori6KuIcRJzqdxIHOqUpRwhqyx6cA7mxRYmVPfvQ33y4X2Q2YfNQ3KShMVWwEUeDTAPBWQvVbfglC/ZAJI4nG5H7hPST7VcX/Z8tKChWS943IY8Tk9MuRmJRULbSFoMrB2r/x8rgiP791QffWEa8KL0IxOI5qgF9dcNu3naAkRNvM0Zzsxm6XjntmjmnxOGLgMDFR8oa3TIKgBt9yNWbGRIFS4OYfSjVYn40z4rrOZyaFqpgbPOKkYAFbrIz+4KAns2/RgQ81J7G3RjOVRTSihqC77zovrPPENJcptxqybVhQiU7MPvOD0nfp7FCONkqxeJNo3a/3zfCaLTMsYGkhGRrePwkeMsMWE4ihsy8YpV/5qOgzU7d5f6yT0K+mBLug9i7LeFqAUUlaofuY83VpeAf8CUBkYLD+xaoVntjUeLFETEKfmelxKwccNElWWdIL8X+OXg7LvQFRKqhsuRG63O8NEMFc4wD+8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
	IPV:NLI; SFV:NSPM; H:SY2PR01MB3083.ausprd01.prod.outlook.com;
	PTR:; CAT:NONE;
	SFS:(396003)(366004)(136003)(376002)(346002)(39860400002)(6486002)(52116002)(6916009)(6496006)(3450700001)(786003)(5660300002)(2906002)(4744005)(66946007)(66556008)(83080400002)(2876002)(66476007)(316002)(16526019)(186003)(26005)(478600001)(103116003)(9686003)(8676002)(8936002)(86362001)(956004);
	DIR:OUT; SFP:1101
X-MS-Exchange-AntiSpam-MessageData: =?us-ascii?Q?JWc25qxf8h1682LoFafXSaaooF4mRYSuB5btiFNZfh3l/NEJ2IXZotK+E+lq?=
	=?us-ascii?Q?JupaE5+Yyv0p3rXqTzoxwzWq5UCc8TxVUa7rHl55+ovkQY+x3KfuGa6HHzwJ?=
	=?us-ascii?Q?hp8G5umOyFZqy8EWyAuIlKa3TOqA61L+YrPs7q709whmMNgRXJ/mlAMmgnpj?=
	=?us-ascii?Q?ekV2GZo1vapgiuM++qbp8wOvaF+2Gmv0dSFL/yb3TphOKSxkBgUYnybE31a6?=
	=?us-ascii?Q?AKbuyWtb5husvgjvRgT6SjEP7JaNu0/1I40Kp5hW3UhlmabF2V344cRcKOiM?=
	=?us-ascii?Q?Ja++lJZ62Ol4UZ6KnXsqqbZEPiw25sLmbiiEM3+bsGiXmkV4bv7wn7rT/aKK?=
	=?us-ascii?Q?SdV9ZcfjJPcRBOrpNx3a9zHZX9aupKzOOQYacKP3Dy7PajmPHkHSbFs55kOY?=
	=?us-ascii?Q?DGtxSbJ0dC0Gz/PCnTIwhoY698otVM80ksMftbU9OtDzp6o0/fnGfRAQH6y+?=
	=?us-ascii?Q?5bMQ1F4WV7aUJnwHUv8UPQahh8UL5K2GVQZHfljr7L3XPklSiVLubH6jhcqm?=
	=?us-ascii?Q?HIKXxM9yHVT/F+0isGRMm99YLrcjQulMdE95i2CmoTcZA++1aviEKdQpbc6v?=
	=?us-ascii?Q?aPlAWfu5wJtKpeZZWSbr8tZUAfCrCRZVLgp41wXkdYlln7UkxQnHjBCbsQKZ?=
	=?us-ascii?Q?Bu4C2Sr0ryBw3BfmOsn1ki6b2HQ80T83OLD87pXzZwRHlgHCHZJNseJgh9d0?=
	=?us-ascii?Q?KKyGxpTBrWVrSx5JKj391E+urw9kKJa7EVnmpqeGVpUGZhfHLnP2cyM8ap3J?=
	=?us-ascii?Q?knViQqP9ZCz0UJ8tCBuGauKlF4HwsHSKO6YGh5yP2WfjfJ6ZttYQeh9XJ3ty?=
	=?us-ascii?Q?kj1dyACGvum3PRREsUQ8GYrUTWpEci8rDDNH1CWH4YJ8o3JXnUNdr3h/Ok2x?=
	=?us-ascii?Q?eVuMZvrMbIzxm43c9mJl0yEkEwo1GTlzYntgnGTZW6aTJhWhjqTDslxP6XR4?=
	=?us-ascii?Q?lWfNlcp6x/fYzaXyWOPr/yMoyHMPtTeEKBV58cpS6EOuJEBB3aOGpYrPyzoh?=
	=?us-ascii?Q?BeVd5/q3uw9rf9eCIdOeaRT8QXC+eGHGlYaVM7uopolV3SnQvB2NKXnBFbMy?=
	=?us-ascii?Q?jkp1tDYHhaf5tSe2iebfNTf4zT2Nb5HfV62OaFph49DpYaqtRhgpJcs2luN6?=
	=?us-ascii?Q?XJ9EuU64P+TWN3SKXhgQclNPB/2OLd7WVYsKbglu3IsdA4+VafKdQ1amhtK3?=
	=?us-ascii?Q?LmgPND3WpHQt7OMcC/RJBiioo/OsIREzP5fzUA1z2zR5nPtcdBqhVpUqOmY1?=
	=?us-ascii?Q?H/yHd7oSHfh1D4PMdse1zCMi3ckt8rflfjMFcfGCupM7DDlogVUhhhPbuL3A?=
	=?us-ascii?Q?yjAzv4ZcWi1j5fwpptrLbW7c?=
X-OriginatorOrg: unimelb.edu.au
X-MS-Exchange-CrossTenant-Network-Message-Id: 81ee87d4-ffbe-4659-fdba-08d8d633b58f
X-MS-Exchange-CrossTenant-AuthSource: SY2PR01MB3083.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2021 06:41:25.3952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 0e5bf3cf-1ff4-46b7-9176-52c538c22a4d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5SxZq9/lG0ROxQL9FcItl5cO79n60ZKZoy0hB8id7EXxT5ZPH4u2Ujva/qgK5mssS/nzgAPMHb0xQ5CdtHDGeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SYBPR01MB6192
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 11L6ffjL020941
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This connection isn't working. From the command line I can
* pair with the device
* trust the device
connect <address> fails with:
Failed to connect: org.bluez.Error.InProgress
This is from a Lenovo laptop running Ubuntu 18.04. I have connected
several bluetooth devices to the laptop and the Brailliant to a phone
so both bits of hardware appear to be working.
Any suggestions for troubleshooting welcome
regards
Peter


-- 
Peter Rayner
Academic Lead - Climate & Energy College <http://www.climatecollege.unimelb.edu.au>
Clean Air and Urban Landscapes NESP hub <http://www.nespurban.edu.au>
School of Earth Sciences, University of Melbourne, 3010, Vic, Australia
mobile +61 402 752 379, skype: petermorag 
zoom id 4431343191, join at  <https://unimelb.zoom.us/j/4431343191?pwd=a1E5Z3JEOTRVQUJsaVdRbVUvR1QyZz09>
mail-to: prayner@unimelb.edu.au TWITTER: @raynerstrings


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

