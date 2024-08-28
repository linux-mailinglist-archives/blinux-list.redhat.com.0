Return-Path: <blinux-list+bncBCA2Z2HI2EIBBUM7XO3AMGQEWZJPKII@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 048839620B9
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 09:20:51 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44ffce7ed6asf93871251cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 00:20:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724829650; cv=pass;
        d=google.com; s=arc-20240605;
        b=LggSbmoeSPn7tA2WiMZSNeeBKZwZpqWu2Og4aJe2vFAJkYxGb3exZZZSr9X1AbcIod
         utLwk9KLun5usOLElPiDsr+dUMUjmIBRFhkFgnOvgRx2tKA6xfkUlyiFZ1bPh1t7AW/K
         I8/zEozzmR7wOMjvnqLFC4uvsKkI/yz4wJ6ua40wG9HJOjtokLgKdvk7TQlnNzZeqIw/
         XJqEF0NTPS6NXB1nH5Lahop/+gdYl37fdUXOYWfboEZ2zRnGRqMhaBP9SaneE1+rV3gz
         J4gFEvM1HPwB5RqBcjnrYo5618pXaga2AeeGOPP6pIa8sOulZ6+9DvmpufXUy7AV56mf
         eX4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:authentication-results-original
         :delivered-to;
        bh=I1rs6r++47wONfVGKlQC7EYxAvmxtpLsTw4UqcM6xRo=;
        fh=gBN4nS6B7v1QuwAKgKAiMtAx5kV7a+mdGU/BV8yRsn8=;
        b=hcSfN4gOwFMR8C2lSgnQLIuRHExGtVs1NqsSe63paN4GS+ZsX3ZJQi4xXK+FPxv2t+
         aT8VhbQ1yi10HwGltpRnwhx+LRnTzWZb3pGlOkQ+3UpN92offiUaB7bh2LMMkpbtqOQt
         iO+RSGAWZqVO2yqcsXbd/L/EdS2cc9BB32PQB86kdJzcWniSxHiz0eY4LBLBnZ/aps8/
         bqegjgSsva43KmJRR7unaRg86zMv1LJKP001vUR5WM4Qs1/BqGkDrdyqaRBtzcB1KYSJ
         ETfdbznoPqtbsh4ValDUsddGf0MwWvOpe5KNWumcEkmcdtzmoEiCYgI6ss3OruYMKKak
         nXRA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724829650; x=1725434450;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :authentication-results-original:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I1rs6r++47wONfVGKlQC7EYxAvmxtpLsTw4UqcM6xRo=;
        b=vCw5EH9S9J0i71/b6vGzBVlxfyUOIdJ81H1mkBtIEFBuqrYiKfxRGiYoNRkcuzqdlY
         4ruyDws1L1DTtK/XmJpEBFYl3sY55VFCuXqIJogooPDvfeEopxnXK/M7IK35rkLo7SOG
         cIaQfvTNd0oIVA3GTeKx/zke5oji1Exlr89hHIN37AXNVb+bezE/csXdnwGg+DbcCwCb
         1o0jgL2POI23TfnubHSBZyrspWJ8+SOEY9f9XJw55iDPvnWFQ1rzY/PC/EaWHUb1ZWs0
         cUgIjns28cHsNjkAW/qi2tRWQFQaG9yZq+1ofuulL7xv8RsYWjl9xAEYFEzcgWoObBmc
         9HnA==
X-Forwarded-Encrypted: i=2; AJvYcCV/zN/fOu6DAmYfD4zSM5PdQZwFrnsVz5xzprrYXig4/pdBUWkY73CTMGBpxLVxAoHAK+qF9w==@lfdr.de
X-Gm-Message-State: AOJu0YweIkiTPUIpzdmAEUBgcbgSJ7Z7wL0/67/ny2WXVt/rFnscfRMW
	ZyZIv+3YxP1NUE6R9sqbcdKfH71+7hNBsm09h2VPlfNBh02bIDEenQLK+hvivIY=
X-Google-Smtp-Source: AGHT+IE223p2vQWsoKJET4Z2kdjeSpZZ8J+JhY7/eT0IstduX/U6oZk3CNpc4OaeuShnK8T93DgKfQ==
X-Received: by 2002:a05:622a:4246:b0:44f:f2fa:352f with SMTP id d75a77b69052e-455097bc654mr178496981cf.41.1724829649651;
        Wed, 28 Aug 2024 00:20:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:198b:b0:447:f242:15e1 with SMTP id
 d75a77b69052e-454fc32cc32ls82746911cf.1.-pod-prod-02-us; Wed, 28 Aug 2024
 00:20:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXDwL6PEEm7OImP3hmteDIlfLJlbtmjquS9RU6kI9nj8kF6ZljqPMFw7ktrVSKyt1QpjssF4ulYxH42sw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2a09:b0:79e:fbca:5ceb with SMTP id af79cd13be357-7a689763cf8mr1860736285a.47.1724829648536;
        Wed, 28 Aug 2024 00:20:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724829648; cv=none;
        d=google.com; s=arc-20160816;
        b=sNuxwYz+9FoOxngEEHMCsqCz7OmAM8ScnLWhpXyrwcCGQ0PX60moGDd/S/vW5XppMH
         T5CimhsTQpInl+FWZnj8De1bonXeZs5FM4eGNqZdGxQ/cpnoDeyc2VwOCN2eVK/58piG
         cy9hvD9MZM/JT3SorM6YkeDGCDKcuhJaMMuAbGw093XwtrJwiVxJvcerSirn/uEFtrPM
         T68EmletASuBcVRCaa+GyHc+dNUimGJYP8qe3fg4dVjs9ksPx1ooggka4Zsnv/aOb1e2
         B5R3kf7285teALlCDwrrHew/FRjcLdIYGC7RoO3Wyqb9jS5aqMUZWrKq7zMgIAe6QD7I
         ag/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:authentication-results-original:delivered-to;
        bh=+jDTb8rvym27MDtetf+jVSgWW4Im0wUCh/UXvalT+ug=;
        fh=71dRKId0vhc2OBbBdNyFr5e5jwSd8uHPlX/mmKgg3wU=;
        b=cPCWcE3ZmeFGcy27jivBA0pi9lEQm5Otoshs1EefgxFZt0glCVMReV2bGp9oZtCQpt
         L9XjjRNrw0k+5g5aEu3NHB4r+0B66agal3I3X2an5yrt1IBAZRjCDmJtFo4SkIKVUuEU
         Vz6Su70gO6RGUbLWKTLMF9mqP7VcmNPMgBQc7XnMEyy7++NY9P2qaTHaO1whwaQipPiB
         by+FZbGxHJUoYzyrT7VR+bLiC4TCLQMw9A7ftn9DLjvw53YBjPA2tnYEIS3LmHIDo39L
         nc6lh9ZWC/3GMQF6cBP17enKYD3MusIG0WnGqyRG2l3+JZ2IRuW2X/Z1rVMZikBGqPXv
         f/6A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a67f3dc2a7si1606547485a.356.2024.08.28.00.20.47
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 00:20:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) client-ip=52.101.161.92;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-217-o-wQB8wtM3ualmUUxn4Lew-1; Wed,
 28 Aug 2024 03:20:46 -0400
X-MC-Unique: o-wQB8wtM3ualmUUxn4Lew-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C73E7195608A
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 07:20:45 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C13DF19560AA; Wed, 28 Aug 2024 07:20:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BCA8C1955F1B
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 07:20:45 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E4AA91955D4D
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 07:20:44 +0000 (UTC)
Received: from JNYP275CU001.outbound.protection.outlook.com
 (mail-southafricanorthazon11020092.outbound.protection.outlook.com
 [52.101.161.92]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-530-DMO_EKEmPWqiZ3mDusuDbw-1; Wed, 28 Aug 2024 03:20:41 -0400
X-MC-Unique: DMO_EKEmPWqiZ3mDusuDbw-1
Received: from DU2PR04CA0293.eurprd04.prod.outlook.com (2603:10a6:10:28c::28)
 by JN3P275MB2518.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:b0::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.27; Wed, 28 Aug 2024 07:20:35 +0000
Received: from DB1PEPF000509FD.eurprd03.prod.outlook.com
 (2603:10a6:10:28c:cafe::71) by DU2PR04CA0293.outlook.office365.com
 (2603:10a6:10:28c::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27 via Frontend
 Transport; Wed, 28 Aug 2024 07:20:34 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.154.180.224)
 smtp.mailfrom=csir.co.za; dkim=pass (signature was verified)
 header.d=csircoza.onmicrosoft.com;dmarc=bestguesspass action=none
 header.from=csir.co.za
Received: from mfod-euw1.prod.hydra.sophos.com (198.154.180.224) by
 DB1PEPF000509FD.mail.protection.outlook.com (10.167.242.39) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Wed, 28 Aug 2024 07:20:33 +0000
Received: from ip-172-19-1-224.eu-west-1.compute.internal (ip-172-19-1-224.eu-west-1.compute.internal [127.0.0.1])
	by mfod-euw1.prod.hydra.sophos.com (Postfix) with ESMTP id 4Wtwmd1mW6zCrV3
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 07:20:33 +0000 (UTC)
X-Sophos-Product-Type: Mailflow
X-Sophos-Email-ID: 9f5bc207ebd54f048d5558c6e04ea3fb
Received: from CT2P275CU008.outbound.protection.outlook.com
 (mail-southafricawestazlp17011025.outbound.protection.outlook.com
 [40.93.75.25])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mf-outbound-eu-west-1.prod.hydra.sophos.com (Postfix) with ESMTPS id
 4Wtwmb3g1Gz1xn0; Wed, 28 Aug 2024 07:20:31 +0000 (UTC)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:af::11) by
 CP7P275MB1459.ZAFP275.PROD.OUTLOOK.COM (2603:1086:100:32::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.27; Wed, 28 Aug 2024 07:20:28 +0000
Received: from JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32]) by JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::5a5:5b4:7ba0:2b32%4]) with mapi id 15.20.7897.027; Wed, 28 Aug 2024
 07:20:28 +0000
Date: Wed, 28 Aug 2024 09:20:28 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
To: Rob Hudson <rob_hudson_3182@gmx.com>
cc: blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
In-Reply-To: <20240828.070140.810.31@[192.168.1.100]>
Message-ID: <dbf9a85c-79c7-e5e1-9b75-a592b8fb4da6@csir.co.za>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite>
 <Pine.LNX.4.64.2408271546030.321099@users.shellworld.net>
 <a306ab00-7f97-0859-5fd2-2f2a27cd289f@csir.co.za>
 <20240828.070140.810.31@[192.168.1.100]>
X-ClientProxiedBy: JNXP275CA0003.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:19::15)
 To JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:af::11)
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: JN3P275MB2310:EE_|CP7P275MB1459:EE_|DB1PEPF000509FD:EE_|JN3P275MB2518:EE_
X-MS-Office365-Filtering-Correlation-Id: a814d600-c64d-4f8e-3a6f-08dcc731e7c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;ARA:13230040|376014|366016|1800799024|4022899009
X-Microsoft-Antispam-Message-Info-Original: =?us-ascii?Q?eLNeEbbnWRdmw1T9ksJ/0X0tiFGigj0UuwNG8lUC0h+bntuTmKsDHX86C50R?=
 =?us-ascii?Q?mhJpheNritZgHsm2cnTQfonnT9MSEw9oKKFQVVpv+THRluf/NfzI9jBGjtYe?=
 =?us-ascii?Q?25ZoZjQaOwsFb4gn8Wc5d6YeLma7yI3rMzeknYj5QoiikyIUbSqVwhh6XacJ?=
 =?us-ascii?Q?woNzoTiyAi5sS2fDC5O+7bpKZEYuQt/zhzyr+ZTBckLHSncLBtFlXRu4+rRc?=
 =?us-ascii?Q?fmED+5yjYwCv5wz8bZ9Wf+Oc66WRksVPJ5y+lG9YmA6za6246MsMinJa84WN?=
 =?us-ascii?Q?dnIyEwxR0rXLoOoGOYa48QFqTIqvmAbRKTuDabt/50xQQEYAFG/jWEQqSRcy?=
 =?us-ascii?Q?FB9T+F3PQBb5pf+VXrT5U+j2I8PaYdtIobacDGbvkVEBEF2MJ8LqP7IbjA8F?=
 =?us-ascii?Q?HsFA1952OemrrpdsN6/vksdE6fUeChIVZdY+YrPKzy2OhM9n8rzAFPVnE7Rg?=
 =?us-ascii?Q?ZS8gS0P9FEx8qORgCArxdg6og+WM+EPcaYnOsnKLC9DJ/4BzmIKF54tmhelU?=
 =?us-ascii?Q?H8Cgsi5OgrUELxDKIXAbhzbzOpjQlsoZn1B2IIe/vSaEgKASF6ILmi080/bY?=
 =?us-ascii?Q?uwvyV7cqbgFFvADQ9QdO2AVq8OMXPLGNlEWSn1ZE0zlPw9VGnQi7BESFS4NR?=
 =?us-ascii?Q?DzRDfX8gdTgnaV0CgJItf8g0f3yuZtv514tYsUL6FOKAKodRNHJTTcIf0Bki?=
 =?us-ascii?Q?1EaDuuKwKsNyNTOT9ZrMKE8P2li4AzMN1HgMS9JoNCXuicE86sLVz0vnYFdU?=
 =?us-ascii?Q?2/to9xF3OltNxGQh5nqT/0WbqiUQPF1aYRU2Yv6zom+L99Wx4qymGapy7KC6?=
 =?us-ascii?Q?14Oh0zTQ8FeC54i9fcf+kJGmnYtp/y71EyJ6ChYYpOKxDhwV2lSVtY38XlAb?=
 =?us-ascii?Q?uMAzj57bZFFmOQkbGUcETe9IxeA3wV0IUE0ziO/zPvSxXUwDwL3xF9kYQodF?=
 =?us-ascii?Q?xqofzpCO835xQieMtTefT1pDiidHwFVGoI3K+X3s3q6iN22YwmSZ7WiYeZGm?=
 =?us-ascii?Q?341pUDrg23oYwqAmU2kbHH3owHOghNa0PU0Zzg9y0zB2tT/z7Bmw8Tb6Jq1H?=
 =?us-ascii?Q?/J8EF81k4e9jGgDdRb55CQxx/ZuO53DEae8UMmJTFSVHS6JFmGH3wX5HXAXJ?=
 =?us-ascii?Q?pRYZtH8PaIREx1UqI9K2mAmuGoCxLCh3gcdRboHC9FIwN4YGp/1GWEFFjoTy?=
 =?us-ascii?Q?Ahx07ddYADa8xLDzsnIGvbLHvIn2mNRPOyAR9Maj6kNqkJ/cJfIPrIyFowkC?=
 =?us-ascii?Q?2Da5qArBNlqlTewt/Y5gdZNkCKl7/KiI5T/eGfOOFyRS3WKu6YjYpWzfpGq9?=
 =?us-ascii?Q?Fak6h+FLiTIkhUmIaetrnHil7RwR8B32AGhzgfRb4S7m+A=3D=3D?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:JN3P275MB2310.ZAFP275.PROD.OUTLOOK.COM;
 PTR:; CAT:NONE; SFS:(13230040)(376014)(366016)(1800799024)(4022899009);
 DIR:OUT; SFP:1102
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CP7P275MB1459
X-Sophos-Email: [eu-west-1] Antispam-Engine: 6.0.0,
 AntispamData: 2024.8.28.64820
X-LASED-From-ReplyTo-Diff: From:<csir.co.za>:0
X-LASED-SpamProbability: 0.083173
X-LASED-Hits: ARCAUTH_PASSED 0.000000, BODY_SIZE_3000_3999 0.000000,
 BODY_SIZE_5000_LESS 0.000000, BODY_SIZE_7000_LESS 0.000000,
 DKIM_SIGNATURE 0.000000, FROM_NAME_PHRASE 0.000000, HTML_00_01 0.050000,
 HTML_00_10 0.050000, IN_REP_TO 0.000000, LEGITIMATE_SIGNS 0.000000,
 MSGID_SAMEAS_FROM_HEX_844412 0.100000, MSG_THREAD 0.000000,
 MULTIPLE_REAL_RCPTS 0.000000, NO_CTA_URI_FOUND 0.000000,
 NO_FUR_HEADER 0.000000, NO_URI_HTTPS 0.000000, OUTBOUND 0.000000,
 OUTBOUND_SOPHOS 0.000000, REFERENCES 0.000000, SUSP_DH_NEG 0.000000,
 __ANY_URI 0.000000, __ARCAUTH_DKIM_PASSED 0.000000,
 __ARCAUTH_DMARC_PASSED 0.000000, __ARCAUTH_PASSED 0.000000,
 __ARC_SEAL_MICROSOFT 0.000000, __ARC_SIGNATURE_MICROSOFT 0.000000,
 __BANNER_TRUSTED_SENDER 0.000000, __BODY_NO_MAILTO 0.000000,
 __BOUNCE_CHALLENGE_SUBJ 0.000000, __BOUNCE_NDR_SUBJ_EXEMPT 0.000000,
 __BULK_NEGATE 0.000000, __CANPHARM_UNSUB_LINK 0.000000, __CT 0.000000,
 __CT_TEXT_PLAIN 0.000000, __DQ_NEG_DOMAIN 0.000000, __DQ_NEG_HEUR 0.000000,
 __DQ_NEG_IP 0.000000, __FORWARDED_MSG 0.000000, __FRAUD_BODY_WEBMAIL 0.000000,
 __FRAUD_NEGATE 0.000000, __FRAUD_NEGATE_FROM 0.000000,
 __FRAUD_URGENCY 0.000000, __FRAUD_WEBMAIL 0.000000,
 __FROM_ADDY_SHORT_LC 0.000000, __FUR_RDNS_SOPHOS 0.000000,
 __HAS_CC_HDR 0.000000, __HAS_FROM 0.000000, __HAS_MSGID 0.000000,
 __HAS_REFERENCES 0.000000, __HAS_X_FF_ASR 0.000000,
 __HAS_X_FF_ASR_CAT 0.000000, __HAS_X_FF_ASR_SFV 0.000000,
 __IMP_FROM_MY_ORG 0.000000, __INT_PROD_MP3 0.000000, __IN_REP_TO 0.000000,
 __JSON_HAS_SCHEMA_VERSION 0.000000, __JSON_HAS_TENANT_DOMAINS 0.000000,
 __JSON_HAS_TENANT_ID 0.000000, __JSON_HAS_TENANT_SCHEMA_VERSION 0.000000,
 __JSON_HAS_TRACKING_ID 0.000000, __KNOWN_SPAMMER_ADDRESS_2 0.000000,
 __MAIL_CHAIN 0.000000, __MIME_BOUND_CHARSET 0.000000,
 __MIME_TEXT_ONLY 0.000000, __MIME_TEXT_P 0.000000, __MIME_TEXT_P1 0.000000,
 __MIME_VERSION 0.000000, __MSGID_HEX_844412 0.000000,
 __NO_HTML_TAG_RAW 0.000000, __OUTBOUND_SOPHOS_FUR 0.000000,
 __OUTBOUND_SOPHOS_FUR_IP 0.000000, __OUTBOUND_SOPHOS_FUR_RDNS 0.000000,
 __REFERENCES 0.000000, __SANE_MSGID 0.000000, __SCAN_D_NEG 0.000000,
 __SCAN_D_NEG2 0.000000, __SCAN_D_NEG_HEUR 0.000000,
 __SCAN_D_NEG_HEUR2 0.000000, __SUBJ_ALPHA_END 0.000000,
 __SUBJ_ALPHA_NEGATE 0.000000, __SUBJ_REPLY 0.000000, __TO_MALFORMED_2 0.000000,
 __TO_NAME 0.000000, __TO_NAME_DIFF_FROM_ACC 0.000000, __TO_REAL_NAMES 0.000000,
 __URI_MAILTO 0.000000, __URI_NO_WWW 0.000000, __URI_NS 0.000000,
 __X_FF_ASR_SCL_NSP 0.000000, __X_FF_ASR_SFV_NSPM 0.000000
X-LASED-Impersonation: False
X-LASED-Spam: NonSpam
X-Sophos-Mailflow-Processing-Id: 64f2ba218aee4ed6ae30afcdee1a3832
X-Sophos-MH-Mail-Info-Key: NFd0d21kMW1XNnpDclYzLTE3Mi4xOS4xLjIyNA==
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB1PEPF000509FD.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: a70b99b8-0678-4ebb-050c-08dcc731e4c1
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|82310400026|36860700013|1800799024|35042699022|4022899009
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rQ4qfSyou7mw/HIRAtqkXCFOOPBnvbl8Tx02HZB4sSXBTAtTbQwjph6YUX+9?=
 =?us-ascii?Q?K8qSwIuUMJQ+Qdgvag85B8DHjtkG/GdoOCe1pb5qQHnT4jOhp2HoNFUvXCD7?=
 =?us-ascii?Q?g61cuthCEue6GyKBhKyPA8GObTkm0g6uNq3T+sHp+21/t5qFPVGf8D6B7kFD?=
 =?us-ascii?Q?Ya6woumEk5vAGUeUn+OB0/nKuqPAskUQTUxdEBFHPbitPwodgTIp1gewv0yY?=
 =?us-ascii?Q?euZrUxWQofMrYws40RHft8SGG1GDr/B+0T+8BszAWeVvNrkvdsyJM/vj8fKe?=
 =?us-ascii?Q?+i7uUg4LjSR6GwDiSQX3oRnXBnN9Z/DcPTheUgolZcyMBaD1TKODkp9Uy2MC?=
 =?us-ascii?Q?WEcQokhGfRDTRyHVq3XjbX9hzya2sGCaKN3/splbxDJmjVHhXnKrBS0bXgFT?=
 =?us-ascii?Q?0NbWrnzVFMSTA4Kw9dLUgZs0kcLJFUVh/XLn6BxFxHfZ3xOHDL2XKtpr8EVS?=
 =?us-ascii?Q?REBHMzCv/yya/xXzcfN0Lb0SjIVvj5aZHejlYyWXAoC/oqgXpBKDbgnwIl46?=
 =?us-ascii?Q?ukgcy0VTOyuex5yiQs+fb65jnx/rGRHs/nYYJoZLM1nG+s56dHA5iIFgFNs5?=
 =?us-ascii?Q?jdOMMrGQXpPdeKn2jmpIA7oqIhLNjeQfqVgVDw2tDo7lyrIhVnWhBZU1H6KE?=
 =?us-ascii?Q?TxwLbvPFjlQy1D27wd1Fiyui0i6JXgBzs7HeRoMCH5qkHT+XB+FxzTt8rSoV?=
 =?us-ascii?Q?wt7q/N+XKhQMywNfM2iHNo67o79p0ZcTvPr9CdPFNUN7dg/ewqvkuFL2BY5e?=
 =?us-ascii?Q?wX+AQzx3rPaLT7iAZ+WhVIcmrJHAKjfr+2oSdNz6NDaSduoeflthL9qVWYy7?=
 =?us-ascii?Q?f3P1SXwowQatDnZkXiUo11/PZ4iq6gKHv4kfSZE0lhCG3z+gvaAzQgbT2Uah?=
 =?us-ascii?Q?ELMpxGxeEIhf3jRru5N0rrbnKpS/ZfSmU4HP+O4KGc993vrreKPVvfECe2yO?=
 =?us-ascii?Q?WlK4WfgESKfZRl4xctpRCV/B3cdLmKyiQzgNCUG9b1bxrHbzC479R4Eb6npF?=
 =?us-ascii?Q?b1/OqvL8oo74v4QUl4SdJXrWJJYMiJmi1ZdZFJjVrk25n6zl+oRT7qHBdzu8?=
 =?us-ascii?Q?hA6tYLSAEqJwqUNt7L1tAB4th37+tIvoLp6B7ezMaPFBM0P5xvNZ+pADjlri?=
 =?us-ascii?Q?CPjhXP82gFPnTgqZ8lF52Kjdy/IdzO0mlbRUgSrHCZpAMgbAcGNFoE1uDcit?=
 =?us-ascii?Q?hX8b3SKt00IL2f7UMWjbq/Jg4PgxuanrI2JpZjDVP0b1LIiH25CfkK2bDuwD?=
 =?us-ascii?Q?OswmfUxOyWz2RZBmDO/IyPOsHyFwPkDpHw92jUKzXLrPp6NrQa5urpDliORs?=
 =?us-ascii?Q?EEFWFA8JMmSfh0Ku3cxQJVAVuqleXfYs+JOPqmgJjmscbCWFni4+AhCncYS1?=
 =?us-ascii?Q?WTqos1ea3FblRbEpEFWqBpq1VYIcppnbjxsJFd1spsnBG5/H068li584r5oA?=
 =?us-ascii?Q?h+eD1lpD6V8YkqKkIwpi/FgxKmis54cI?=
X-Forefront-Antispam-Report: CIP:198.154.180.224;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mfod-euw1.prod.hydra.sophos.com;PTR:mfod-euw1.prod.hydra.sophos.com;CAT:NONE;SFS:(13230040)(376014)(82310400026)(36860700013)(1800799024)(35042699022)(4022899009);DIR:OUT;SFP:1102
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2024 07:20:33.5036
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a814d600-c64d-4f8e-3a6f-08dcc731e7c9
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=2fd3c5d5-ddb2-4ed3-9803-f89675928df4;Ip=[198.154.180.224];Helo=[mfod-euw1.prod.hydra.sophos.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF000509FD.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN3P275MB2518
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: csir.co.za
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: wvdwalt@csir.co.za
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of wvdwalt@csir.co.za designates 52.101.161.92 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
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

Yes, that was me.
I called it sam for speech friendly alsa mixer.
Yes, it is still working.
Regards, Willem


On Wed, 28 Aug 2024, 'Rob Hudson' via blinux-list@redhat.com wrote:

> Weren't you the one who also did that alsamixer alternative? Is that still around and working?
>
> ----- Original Message -----
> From: Willem van der Walt <wvdwalt@csir.co.za>
> To: Karen Lewellen <klewellen@shellworld.net>
> Cc: Joel Roth <joelz@pobox.com>, blinux-list@redhat.com
> Date: Wed, 28 Aug 2024 08:57:24 +0200 (SAST)
> Subject: Re: Grants for developing accessible software
>
>> Hi Karen,
>> nama and dae runs in the console terminal, but remember, your remote shell
>> is on a machine physically removed from you so you will not hear the
>> sound.
>> Dae is an audio editer which I wrote years ago.
>> It does not edit compressed file formats like mp3 or ogg.
>> Regards, Willem
>>
>> On Tue, 27 Aug 2024, Karen Lewellen wrote:
>>
>>> Warning! This message was sent from outside your organization and we were
>>> unable to verify the sender.
>>>
>>> Hi Joel,
>>> While I personally have no physical Linux system, not finding a path to
>>> either a synthesizer or screen reader that works for me, I am interested in
>>> the work you are doing.
>>> I imagine it would be possible to access the software via a Linux shell,
>>> using my existing screen reader tools, much as I am doing right now.
>>> There are certainly grant prospects,  as well as  your drawing resources via
>>> traditional fundraising.
>>> May I ask where you are located before directing you to options?
>>> I dare say, much with other command line things in Linux, you will find
>>> interested folks who may not experience sight loss.
>>> I should add that Audacity, at least when I last tried it  was fine in the
>>> Mac environment too.
>>> Best,
>>> Karen
>>>
>>>
>>>
>>> On Mon, 26 Aug 2024, Joel Roth wrote:
>>>
>>>> Hello List,
>>>>
>>>> Over the years I've posted a few times about Nama, a
>>>> terminal-based multitrack digital audio workstation.
>>>>
>>>> As I understand it, Audacity, one of the most popular
>>>> GUI-based free software audio applications, is accessible to
>>>> blind users on Windows, but lacking accessibility on Linux.
>>>>
>>>> Nama runs on Linux, doesn't require X11, and is accessible
>>>> without working through a GUI layer. So, it's a much smaller
>>>> software stack.
>>>>
>>>> I've reached a point where I'd like to bring other resources
>>>> into the project. I'm wondering if you're aware of sources
>>>> for grants for developing accessible software or
>>>> organizations that would be interested in supporting such
>>>> projects.
>>>>
>>>> I'll appreciate any suggestions.
>>>>
>>>> with my regards
>>>>
>>>> Joel, Nama author
>>>>
>>>>
>>>>
>>>> --
>>>> Joel Roth
>>>>
>>>> To unsubscribe from this group and stop receiving emails from it, send an
>>>> email to blinux-list+unsubscribe@redhat.com.
>>>>
>>>>
>>>
>>>
>>
>> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>>
>>
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

