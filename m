Return-Path: <blinux-list+bncBCA2Z2HI2EIBBGVNXOVQMGQEMIR46EQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 98059804B77
	for <lists+blinux-list@lfdr.de>; Tue,  5 Dec 2023 08:51:56 +0100 (CET)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-db539c987e0sf5167942276.3
        for <lists+blinux-list@lfdr.de>; Mon, 04 Dec 2023 23:51:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701762715; cv=pass;
        d=google.com; s=arc-20160816;
        b=SbXJ2r+Tz7quxm5dqXyWrxuFc/Ey7y1PtD+DskqKO+vGv/g/wr7MJVbTwRymQFndkI
         7wKXP3ZNo5YblVee+awR2te2kk0tCQ8/OMzURlTG6BWmaILuhohiKpOjlpzA9icpGzEk
         Z1zqWYGTGVMd8TrWMi2PslAyTFW3DAnZoQuLYFKAHsxWepoklUvVlF0WmDsQ5VkgE3Z9
         ceXdGSbP01fQ8KEUtI4DAgvsCCSacmrXwBgdJFBJv3zRN37/ZzEJdokx+JsH3X+zKAvd
         OOYI6BvTqTbfo7evQjA4ZVhAg6jh8HgG7n2+OTAnOd2iZHEPUsXkw9FtJ+ysyEyRwCjt
         3g+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=PQLCfQef6Gb1YANoEVkS1Pu477qOrzyWqZ7Yc4vrpUo=;
        fh=MXAUtNa8dI9YApw+MnYRRoIsNu9hfbkbW2hYXHDL2dM=;
        b=eHEoPiFcb9gYeGsoXJcunwyOJQ5hOWYyM+YxQ5tpSQHOPRpE67ic3iY6LAnJozTjFo
         Ww9Z3mezqFUhEKdzaFc+QfrHtjz5AHgZl9LfP+378qREGogDkjHoJymv3vkrt0g9EHDK
         WogO7epLOd7nat4gM5+pAf/aZYCxwi4OW5gVRkHpx88UfEA/18J/bl3OewcSQx9JSZdW
         6jRHIylhlnAGsW6lQ1WCqpRxsFy0ghTQy/Y3GxFBaAPZDzkSNpHAv8ny9YZoOeoDOKyd
         T8BaHXVVv6M1Mv5JEgskNEg3Jel2cD1SwX86BK6AuD7f83FZQBWKECbv8kgaA075GSgL
         oAIQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 146.64.81.183 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701762715; x=1702367515;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PQLCfQef6Gb1YANoEVkS1Pu477qOrzyWqZ7Yc4vrpUo=;
        b=YtuZX+Qi6m95Cy+DRuDBpMeHuWDtR1cl2aXXvKpthN4auyC79G2WAPtHIgY1d7gxTw
         vWynRwqztdrfVrRbr3aL4HZ3wo3yRrS7IFXSpMU+KfQBMf52M0lN1cFLSpSPMj5fvEmK
         Zwcujk2PEDwXtoHboWAYcfyYJfc0C21Ajz9ECsMJP5n/IRhLrlJOt+PSE/IXutD7blhs
         N8ySkl9wFeLyJB3F8MCby30IoyAP5eoNsvB5k7gU7c7VFZm/tyNe1rHBklxyURdZQPrU
         Bdvd1ALb/ePSfJAyeT49YsPsZTzYmS/yl7rP4lAq76O+jk2xGaqkNSd9sWCxmhWkl0pe
         p4hg==
X-Gm-Message-State: AOJu0Yy8FEO99K4eKOIPeqYNXxjyQTc1qjXob6m0vlhc7Rg/zeW7/fP3
	LCJ32biGDmBvZMGzTwXN/+/EUQ==
X-Google-Smtp-Source: AGHT+IH5AuBeR8ygiiAJ58P9esHMao4yupeL77oNe2qN64YmyLVxec1YlgFg3mXkJ9PorFnAue4pQA==
X-Received: by 2002:a25:ccd5:0:b0:db7:dacf:6ff4 with SMTP id l204-20020a25ccd5000000b00db7dacf6ff4mr4441172ybf.124.1701762715282;
        Mon, 04 Dec 2023 23:51:55 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:742:0:b0:d9b:df64:a21d with SMTP id 63-20020a250742000000b00d9bdf64a21dls1126700ybh.0.-pod-prod-06-us;
 Mon, 04 Dec 2023 23:51:54 -0800 (PST)
X-Received: by 2002:a25:3208:0:b0:db3:fca3:76ea with SMTP id y8-20020a253208000000b00db3fca376eamr5179405yby.0.1701762714315;
        Mon, 04 Dec 2023 23:51:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701762714; cv=none;
        d=google.com; s=arc-20160816;
        b=LhMYLZXLrq3b1F+NT6HuQS+8H5wxYcoipF5pQlMMZ4aFNYw0A7P+hf0K/YcWFJkknv
         2wlGK//uXXtENuhDWOBJm/MgDLipQQisC8D1BGDkr/6AisShv93sTycm3Q3DWUCDBOWv
         sv2XusxoFa3/8V99GQfSIWJGUJRm06KIN9PatLj4Z8oBhizfPJF0m8c/HiqlHkApRDOi
         ZeX7bNZm2iDPLYKexH5/RcY21P379rgDa3G2pxhZjaSGB8tBiMoeDZafbtDPPdqf2dEx
         /88p0DS5PTCSF2a8mH+6qrmAVDpVsiTU07L35ayZ8k6M09g8egWS92J51n78Uj8Fh9u+
         wd6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=OMSVOAs+6/U0WixgXh3/g79zG50EdaBbriI4h92gtjM=;
        fh=MXAUtNa8dI9YApw+MnYRRoIsNu9hfbkbW2hYXHDL2dM=;
        b=UR/veWcV89NMOu2AecEc2kwvhCExFDmMsFOgigwcC+pDzuV674kI2skw6QF1aTOzPC
         LPcgqnewiio164jQaEuH56K371b05/G7CDUB0yt75IQKiqbJtmclCUmdrd80RFV6kaM2
         naipq2FfKP2cs8Fav4xS7qw0oVicx86lUsgDwskTkhpX3K4D0jukD8ua+Hg8KmGDb9VO
         Cr26/XWlfdqYQbsV1HPn6Fgyi8Hyof6aTJnkvC9pQjNVfTwvrSXEHGWCd99egr1gtvCK
         K2+Eh6KMPL2hqzbGxdH+z77sVdvUnJeFfFfZPmd62MU3LmE9whS3i9H/GYx2xyCe+nut
         OhyA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of wvdwalt@csir.co.za designates 146.64.81.183 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id o125-20020a25d783000000b00db5467ae3d6si4896108ybg.137.2023.12.04.23.51.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 23:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of wvdwalt@csir.co.za designates 146.64.81.183 as permitted sender) client-ip=146.64.81.183;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-655-iaRVraPPOCmHLOR3cVyO3Q-1; Tue, 05 Dec 2023 02:51:51 -0500
X-MC-Unique: iaRVraPPOCmHLOR3cVyO3Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7AD61836F21
	for <blinux-list@gapps.redhat.com>; Tue,  5 Dec 2023 07:51:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 77B2A2026F95; Tue,  5 Dec 2023 07:51:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 704382026D66
	for <blinux-list@redhat.com>; Tue,  5 Dec 2023 07:51:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05AF31C05130
	for <blinux-list@redhat.com>; Tue,  5 Dec 2023 07:51:51 +0000 (UTC)
Received: from pta-smg4.csir.co.za (pta-smg4.csir.co.za [146.64.81.183]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-37-nGw8E-zBMl-kxNhxHyzzCA-1; Tue, 05 Dec 2023 02:51:47 -0500
X-MC-Unique: nGw8E-zBMl-kxNhxHyzzCA-1
Received: from pta-smg4.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 228CB1B3487E;
	Tue,  5 Dec 2023 07:46:10 +0000 (GMT)
Received: from ZAF01-JN2-obe.outbound.protection.outlook.com (mail-jn2zaf01lp2041.outbound.protection.outlook.com [104.47.19.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg4.csir.co.za (Sophos Email Appliance) with ESMTPS id BAC4E1B345A6;
	Tue,  5 Dec 2023 07:46:09 +0000 (GMT)
Received: from JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:10::12) by
 JN3P275MB2459.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:74::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Tue, 5 Dec 2023 07:46:08 +0000
Received: from JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::bbf3:5141:e32b:c64b]) by JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::bbf3:5141:e32b:c64b%3]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 07:46:08 +0000
Date: Tue, 5 Dec 2023 09:46:07 +0200 (SAST)
From: Willem van der Walt <wvdwalt@csir.co.za>
To: Martin McCormick <martin.m@suddenlink.net>
cc: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
Subject: Re: Alsa-compliant Sound Programs
In-Reply-To: <E1rAE0r-00D5Pd-LA@wb5agz>
Message-ID: <72cb02e8-3cac-a811-fdab-4a89923c17a8@csir.co.za>
References: <E1r9sxc-00D01F-D5@wb5agz> <eb293e4c-cd90-4f35-973c-d7b64ee3b7c1@jasonjgw.net> <E1rAE0r-00D5Pd-LA@wb5agz>
X-ClientProxiedBy: JN3P275CA0029.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:71::9)
 To JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:10::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: JN2P275MB0171:EE_|JN3P275MB2459:EE_
X-MS-Office365-Filtering-Correlation-Id: 024e0735-8a9a-487d-9829-08dbf5663e0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0
X-Microsoft-Antispam-Message-Info: xYthol8rIRvBXqpFQMt+hhYKJSvWQV9kG7MqZ1nxtdVu3MCVAjOEXPle7BNJ+NQT2PlR9S3PlnVYVrrK5bQO+7BaLws/JJgHGBs5XZA6Uoil9EouoUw975vk4PnZe7BCO3dkPZaVtm3inJBfI7rnAQSalO0nEGzOx9ZeP9FI34WYHX/meBBitAADoiV18g8GFEsWOflY03YDvdRM4BwhjTESit9CPKKLq6Qso02F6ehpXPUnmwl93nIcD+KXJBnuB0ui7v0lWHaFhj+2bBuzrXSPPR8Z+T7OXyJgVvQIgKdAL2OBFQFpEJkSlhjxnbmF3brcpeJzKDTg9vA7TUoNXtVpvPTAWrRJW5tGJet3wnXSkfGEDpIivn+7qf6HFAObnm2Kr18ZRDPjyLjVmkDZw1YqDrIel32yKeJid273qrcTz9WVVhX9ZkYiOI/sXow4irntzutFI09ahAg2Vt6CEJXOIjxUmncgl6W8HGNwMoIZDijRNzbOCggjj01an7vwh1aKgteQ/6VSMjeJIdpau1SnvT38ddPLjCqsTDM6kSlZR4jnSEUBOSw9PIJcZnbASZfL+uyo52pnf6Yi7cLGH+cpOdWJIugB5HVlMHMVsFze26w+2Y0IcltCtrycW2BalR/5g95fWU85e6edPljqlqKNK61RpSKmtIvtWIw3p3E=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(366004)(346002)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(83380400001)(36756003)(6506007)(3480700007)(41300700001)(6512007)(31686004)(38100700002)(2616005)(6486002)(66899024)(2906002)(31696002)(66556008)(86362001)(66476007)(6916009)(66946007)(5660300002)(316002)(8936002)(478600001)(8676002)(4326008)(45980500001);DIR:OUT;SFP:1101
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TjWdVn5g7S0tsZS/ifdFJbKE7gEpZ/D9Hs9vXzJ3nOY1Sk/92KQ7heeyPjD0?=
 =?us-ascii?Q?OFwG962hdM36DwVJT7hPevnRMmy3Q8k3WjnEp6tyoDXjhTJUrL35UR0iXURL?=
 =?us-ascii?Q?KhMbsS9h0/x8cdySMu4Hyhj2E6coo+KbqvCE6Zg+gvELkYfCau0UKLUbZrap?=
 =?us-ascii?Q?eUZO40bbW/y4ezVB+XZD78yotpEVox7ig+Du6TFVcFsyFQ1+mgIsFvrUoeGW?=
 =?us-ascii?Q?XjFCLMwEDeN4NGbmKO1HXgVzADcEZwyKNu0i//DGB7cQUyo2ut6vIS1q9L96?=
 =?us-ascii?Q?mLTCmrtNcUH/szH59dfSymCGTtBDXmMA2h4cNcnCadXm+UB9RTrXCaokDUtN?=
 =?us-ascii?Q?gn+y6IvQRwRJuIOShcuerpUjx4H29dyTO/v6YtE6G4p2fPR1G2o7ivv0jMTH?=
 =?us-ascii?Q?PYSxK53KkqtApE1JgTsgCLO70m0v/o1HrJHzqvO/ZKKNzn1tJXvSo1vk7HFP?=
 =?us-ascii?Q?h4QuojzjJ52UosbmdoO+4gjEMe9ci3coPkRP5g3kqJ9eo8MPDipMURgN0YXT?=
 =?us-ascii?Q?BElN0o0hbOP19jADO0sm/A20L33lxY29yHKJRWEF+rIr4tzkqU1vd4oFDRb2?=
 =?us-ascii?Q?liCv9kDfaVaCWAlXC/gGyQIBF3Zh5WScEbl/ptDsPZKO33ed4BGfWEXifXZs?=
 =?us-ascii?Q?RSxLy9jRsXw9l1u7Nt8EWM+m4k/I8AE2/6beUiytdyHG2OZuPKQvFITOuyQr?=
 =?us-ascii?Q?xBZK6hzozNld9O6Zq8DQW5HbPzUGHgJX9D0bgX2SXFBYcCjsdGSwlCTY2VPN?=
 =?us-ascii?Q?cjHUCfmKqGD0ve8k3yZzppkUKX6aFcJBPFe+qr9pVd8Deejf9euf++jBKdFx?=
 =?us-ascii?Q?7JcTSvxYcxKvL58mwRZztH0Y0uif2MCsn4THbILPzBJdxRPtLkVjHwJ9cnYO?=
 =?us-ascii?Q?BHFHL8hiuqZuZDApQIeoHE53UvCbCNyc/KjjSUXtJM9qjmx0iC49IWmTmvQX?=
 =?us-ascii?Q?QoYpboluzpw2aQBs6cx6DHCNATWUOQD2iqJFWR5l3bZ3gv2ENjV5vTPqMZWd?=
 =?us-ascii?Q?dumAtNlXfL6FNPlPeju8sU0wwNkhGbvfcPC6SCRqCxZJaqJFHauA0yBz/jkB?=
 =?us-ascii?Q?fNc2o40BqC/g/SP2z2yrsY6MsSfb6zHxOqFAMPCDtl7t5pDBP0yIaflt4NdO?=
 =?us-ascii?Q?qPtT//p0Nd2BzKBoGp1OhVctOyujkuXUZOdOg8/c4sv1iUOdUexeBkemsg9H?=
 =?us-ascii?Q?Hsd8PziUN7AkDrp7tTCJJiDaMbxu/ekiTlpDdMzgFz1zvpKTuQ8lmRdf/xOH?=
 =?us-ascii?Q?jM7YnTKmXrt84BHroj8XtMc0p4RzY8ODWLx7Jwr0O0Cx8COT0tyDQAsrakyQ?=
 =?us-ascii?Q?9oSS+eEAIL9uC/tfP2fQ/Hm/TKV9FixNvxinl9Q6EIJpUVE8Han+Nzr5o8ue?=
 =?us-ascii?Q?eaFXipJmNVxnxdY0GzMe2Ju5s5f3zEKxUHS5oU8DnwpTWxlwFqKZT4Zo6Rrd?=
 =?us-ascii?Q?534sD5qfoNQZmLQ7z4aBkDEMO0Gwo6tcCvdjFriU4ZXLbDBcE2Obw+VeZlqQ?=
 =?us-ascii?Q?hp8RwCfHVOi0a4+b99Uh+ibUTaqId+n9V/JpyQFAbakmazcvgMZ5bUqGOheb?=
 =?us-ascii?Q?rf258a3O/TzIBU6253H6x5ZI30Nh75JlTm7gs1QS0ETRCNpNFBM/DqdIsG1R?=
 =?us-ascii?Q?TB4lsDf1JN+4T2OQJFjJLpYMlG13FI2pjJGCtrUIC0BX?=
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-Network-Message-Id: 024e0735-8a9a-487d-9829-08dbf5663e0f
X-MS-Exchange-CrossTenant-AuthSource: JN2P275MB0171.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 07:46:08.0740
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3/NHbcZDUyvopogeaLcl5vSpGUjPe1Lbghp6GQoI89UM4cGX/4No8RkdamrY8t/h7Am3694yWa+Ayr6EtbhLsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN3P275MB2459
X-SASI-RCODE: 200
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: csir.co.za
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: wvdwalt@csir.co.za
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of wvdwalt@csir.co.za designates 146.64.81.183 as permitted sender) smtp.mailfrom=wvdwalt@csir.co.za
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

Hi Martin,
I suggest you grab the source of amixer and look at what they include in 
their gcc command.
Regards, Willem


On Mon, 4 Dec 2023, Martin McCormick wrote:

> There simply hasn't been anything else I can find that gives
> snd_pcm.  I know what the errors mean but I haven't found any
> other libraries that cause any of the 2 or 3 code samples I have
> found to see the snd_pcm functions.  Since the system I was most
> interested in is a Raspberry pI, I have looked for any libraries
> whose names include -dev:armfs.  There are many of those but none
> open up snd_pcm functions of which there are many.  Basically, if
> these code samples ask for any snd_pcm functions, one is
> guaranteed to throw this error right now.
>
> 	One sample is for a 64-bit desktop system sound system
> and it throws the same errors on a 64-bit desktop.  What I am
> thinking is that there may have been some change in thesound
> libraries and their contents so stay tuned.  I know it's here
> somewhere.
>
> 	In searching among lots of dead ends, I have run across a
> couple of other people complaining about the same issue but no
> answers at all.
>
> 	Oh, and don't you just love the net cops who will post a
> whole diatribe in some list about how X Y or Z is not the
> appropriate question for the list.  That shows up in searches,
> also and you have to waste time to determine that this spigot is
> dry, also.  It just makes faucet noises but produces no actual water.
>
> 	Anyway, Thank all who responded and I'll keep trying to
> see how to get snd_pcm to show it's face, so to speak.
>
> Martin
> "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com> writes:
>> Those errors from the linker typically mean that you aren't linking to the
>> required library in the command that links the executable.
>>
>>
>>
>> You have to include the appropriate header file in compiling your program,
>> and link to the shared library. Try adding -l asound to the command that
>> builds the executable.
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

