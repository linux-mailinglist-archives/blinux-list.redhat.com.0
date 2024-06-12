Return-Path: <blinux-list+bncBCAJTHUAX4NBBB46U6ZQMGQEDWKELMQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id F259F9058EE
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 18:38:33 +0200 (CEST)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-627f20cff42sf1095207b3.0
        for <lists+blinux-list@lfdr.de>; Wed, 12 Jun 2024 09:38:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718210313; cv=pass;
        d=google.com; s=arc-20160816;
        b=c6+pCEc2xX7vX3uxeFlBeElH33yzwkUlWujs+AzoM5SZkzq74j7v1IEDcUQa+3k6PJ
         F2ISS4jZdgb7chaEP3KEoQ7E+d5yYUyAgPoqgDGz/pnz7Fjx1EVWf3CepI2aYh/s4N7w
         3wx8L5+yenLEVTekBEmIuX3/xd5ZjCRt/PWJWveMeQal68jXpCZ8rD6UdWqu77So6uCa
         0q+YvqijF/5rcahEW5cXXYgymnsowyv0i2KGDIF71dx4AJcBSReX3B5y/p1+ieRRE7/N
         nFbq5ePLl34L4jr89gplUMjBHUhMBwWTU33imwZSUHDz+ClWkGzfQxAe4R1mIx3ZqDgN
         uhNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:mime-version:msip_labels
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:delivered-to;
        bh=0gwmMSLAXzyHwK6R2rRj+05gwfVlYsvQx9U5TOExS0Y=;
        fh=FQcbCGx+wM8Hqt20E5VXBAD4hViSUlZ47ScmQU/KzS4=;
        b=qOdMZ7Du8JhiqMTY5oCJVbKXzTDmFmYEhFTCyp2pasFVTiOI96yBnv/Di/JSu0ou4T
         ZQgnueLbr70YKN+HFiYlNaUwLlx59HLvk1BQxCK6LUUmewS9d4llgnKRuv2M5yL1qEdN
         oOKO6oWLbn5v7rgI/zenGt0SHKkiqyVn0Q06uIW5wMoDuMdeg97cIHIisMJr8OC+2xtl
         J54YfTxrIVJ54sPnGJY9J8y6TlkVtFaGWU6JN37BBrPaxTogIkIygy+BgO5dw84fzy+i
         /64Ew0nkPNJ77LrgMFT/MqqGUoXPuhdiz7Cqj1v04R401yojI8Empzot9eVkMKbcp7S7
         YXfA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.139 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718210313; x=1718815113;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0gwmMSLAXzyHwK6R2rRj+05gwfVlYsvQx9U5TOExS0Y=;
        b=g5RoSQxxJmbuPPdQ5ykmmX8JNSEPbhUlrC/x2iERVBEqFXsvXLHnh3hINHaLQdwECo
         hnOceqjif1fEPuaZ/QJZMd6ykcUALk1Kw8ktHUJo2tOxOaqpBaBSRevNdrEPIksY4I0R
         dRwBh8KCH6DLDg6wWqck+/y6QOAybv/90gD/IY0unu7KN3VAHlZpRdCDxXLCd6CD49qJ
         qe6xqgIz/yIfUmzaWpJeo5XwWdzRyosjiJvZuWP+csUjVdJwncKxqyHgWyAH8Y+fOq24
         usx0U3Cf3v5tKCNf5OU6F3fRxBzjq8rAD8imISLz5Zu0cuIMLJVX5BLDx5kvmKVbo503
         6SrQ==
X-Forwarded-Encrypted: i=2; AJvYcCXTpKHFlfEXrbocbTLSEeMvxwZXm7srp9PUvXt3/18PWDjUhXmKDZzUmL/12Gv5u1FRWGI4bhUlSjD86+VveAvfyB9uQKKoosJL
X-Gm-Message-State: AOJu0YwxRqoRhNk0RA/IllKhoQItLqcHF+daEBJkqz4gKGYk0pCVmeqR
	qI4KYA77nj/CbOIXkfsUbUBh6MsIQPOrfv7adTtfIZqfsCsEz1QJqY91/izS7Rk=
X-Google-Smtp-Source: AGHT+IGOwaf2YGvof5+8WBeU2E9jzj70MURBZHbcM2yF2ST6VQocNem3bmWyROYr/AJlPYRAlcZ8xQ==
X-Received: by 2002:a81:8605:0:b0:627:a917:bae7 with SMTP id 00721157ae682-62fb99d3bdbmr24748417b3.30.1718210311669;
        Wed, 12 Jun 2024 09:38:31 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3993:b0:6b0:8881:bc19 with SMTP id
 6a1803df08f44-6b2a3506ca9ls1296716d6.1.-pod-prod-08-us; Wed, 12 Jun 2024
 09:38:30 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUJhWwkxP32UERjHQvWsrt7haD+yYNViYDcTob7MnTnDxyzp9xI0nn2oh+Tjtafef3oCJT0y/CZ/0EZU4EuZN71Shru+YmKmNTaFx7b
X-Received: by 2002:a05:6214:4486:b0:6a3:294b:5622 with SMTP id 6a1803df08f44-6b191c50daemr26749036d6.17.1718210310432;
        Wed, 12 Jun 2024 09:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718210310; cv=none;
        d=google.com; s=arc-20160816;
        b=pQdslB8GhhJ8R+R4WFVDa+eXmI6HEdfGh0InLw41w3+zlQQln2KbKAnRoVSaCOKrG2
         E4QBV72DXe8D2ANt3mftgfkWllJM7RHIZJKW70gzqzyXWDyE0e4p8m/uD8RHMpmNK4DF
         3l/EpkZsAjczj323er0NCgKQNKevLTwkLqvCsoWjg+SqKcDvgd0i/dYfC1e8T5gia7ZA
         oF/hesUcfS+5XCdVl9rU4WKm0SOP9LnrohVaxELRWVb0yE507HfsCjDEqll1X00UQhkU
         PK0znxfFlOeFpHe8ruL0PEaIyQ2hxGcjOx4ul2+13XA0uzwCd/7i/HBHWGKZTGvFK2WG
         AF/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:mime-version:msip_labels:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:to:from:delivered-to;
        bh=6g4dSY3iLEOM+aPnR1AkivS7vi29f/ADI4q9ESqQdgI=;
        fh=iYm9hEOS1ykkSDnqL9tYxIN99VSv6WqRC6bwbuecb8U=;
        b=UAvzNgmTsZ39C+n1SH4Up/mc7NuKPQUsKVG9GYrQ0wY02DR53TX9BoM9jMw33q/Xj8
         IiBI+VqcNY8ZLPzZGdMMcnw9TNrKpnYgvK222enLK5LMx2R/8Wo4CQZ70wrqI4EXSjuq
         G1Xz2/jWOGQJcUCyYX72WxnMdimUJhC2q/akZSwQf6p97p3vftxOJgCDj2G/4RpM7mrc
         tP5QJRmaN0Pti0Otsx281DU7nuCsJnFvjkRlphYZV+uw50AFFOA5XTa0LJH8HQ6PE/eJ
         IaPCJOmcRpqZnvuX5dfZ/k0LtSyBbukaOTvt8x2HqArvNzr4xXZ1cFjBMXMbHfsy3Azw
         jxjQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.139 as permitted sender) smtp.mailfrom=cstrobel@crosslink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b08e32517dsi42304046d6.121.2024.06.12.09.38.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 09:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cstrobel@crosslink.net designates 40.107.244.139 as permitted sender) client-ip=40.107.244.139;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-418-XX9y0c64OO-2OAVPHs8OFQ-1; Wed,
 12 Jun 2024 12:38:28 -0400
X-MC-Unique: XX9y0c64OO-2OAVPHs8OFQ-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2CA9B1956094
	for <blinux-list@gapps.redhat.com>; Wed, 12 Jun 2024 16:38:27 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F37771955E82; Wed, 12 Jun 2024 16:38:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F062D1956087
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 16:38:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 64C1D19540FC
	for <blinux-list@redhat.com>; Wed, 12 Jun 2024 16:38:26 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2139.outbound.protection.outlook.com [40.107.244.139]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-AkYScqXTO1a3XFqbKUlDkQ-1; Wed, 12 Jun 2024 12:38:23 -0400
X-MC-Unique: AkYScqXTO1a3XFqbKUlDkQ-1
Received: from PH7PR18MB5078.namprd18.prod.outlook.com (2603:10b6:510:151::20)
 by BN9PR18MB4361.namprd18.prod.outlook.com (2603:10b6:408:11f::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 16:38:18 +0000
Received: from PH7PR18MB5078.namprd18.prod.outlook.com
 ([fe80::ddf6:cc86:6000:c344]) by PH7PR18MB5078.namprd18.prod.outlook.com
 ([fe80::ddf6:cc86:6000:c344%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 16:38:17 +0000
From: cstrobel crosslink.net <cstrobel@crosslink.net>
To: Ryan Mann <rmann0581@gmail.com>, Linux discussion <blinux-list@redhat.com>
Subject: Re: VS Code, Emacs with Emacspeak or something else for Python
 programming?
Thread-Topic: VS Code, Emacs with Emacspeak or something else for Python
 programming?
Thread-Index: AQHavHz6A65t0MAtVUKFgXMnw66enrHEVKpS
Date: Wed, 12 Jun 2024 16:38:17 +0000
Message-ID: <PH7PR18MB50788D4322D6A6A0FE3DCEB9C7C02@PH7PR18MB5078.namprd18.prod.outlook.com>
References: <B1FF2032-3261-442A-9576-46C4CB3CCBEA@gmail.com>
In-Reply-To: <B1FF2032-3261-442A-9576-46C4CB3CCBEA@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR18MB5078:EE_|BN9PR18MB4361:EE_
x-ms-office365-filtering-correlation-id: 5323ffab-ea4b-4230-00ba-08dc8afe1040
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230034|7093399006|366010|376008|1800799018|38070700012
x-microsoft-antispam-message-info: =?Windows-1252?Q?9CWLzl4XlFYiOaXoN9KGvFxyBxo66LOYMwSdID0Qb7bJ99JnQx1o6So4?=
 =?Windows-1252?Q?wzjQWWQDbTmC9HEYVFqmzsZQxnEQ692h3embW7scbrgx4vZToKjQ5a45?=
 =?Windows-1252?Q?yxQCqjJqXL66q6KemgsjFleJmPPMFg1nu2BXw7GtQlM9keMIIEC14tZ3?=
 =?Windows-1252?Q?HbNb1WO4jLc1K/hRu5ypXiPvGiu7ZTuMtHggEZgp5iKQpPfJyJG8eiqL?=
 =?Windows-1252?Q?+0FArdcBg5atr7x3V7uQioe0mW4tQNWzvCiPL2BvfgfZbdvaU2h8j5dm?=
 =?Windows-1252?Q?sx3ID+dxn++HTNxRU78/GQg3jR2gHWNlR6LXnetSdjx2HikGGI0yINGy?=
 =?Windows-1252?Q?TV17VZ/w5rViolYy8rycajeZgHGJ8VghtypQdz9YgZ5mxUjIZPbHdhY6?=
 =?Windows-1252?Q?Low+t0dccxaW5nr3z5IrBQKwyDFjCDnX6VAFktmPfRfodQPQmPEvryNR?=
 =?Windows-1252?Q?MqASe/OCUwev9B9OkTE9ET9J7+fwSr6akscwpw22xtoZDPfnAPqU0RSO?=
 =?Windows-1252?Q?Iuo/UggcR4qK4x7ur/CXILlp3fDNF4wQz8izojisslpKC8lFqGiONkO2?=
 =?Windows-1252?Q?UOF684Stf6O/zQHmjqGU2ZaDsrVr0yC0oSY88C7af4NMVt67t4/o25XM?=
 =?Windows-1252?Q?LutrzQE9XcJRxxYkYPKFzpuA6K3xMYMeBNvph0vODMQWFX4qC3lcqCqS?=
 =?Windows-1252?Q?g/8fnFx3RxWvsynf5MYOqTJh2++0hznsr58aB2wAGiiLOdZrWr4lX0aE?=
 =?Windows-1252?Q?OLYLpZih4FQZQzBppnr/ZCdZGh19mfGreUXbFxSDVg4THzvFOVZN2oB1?=
 =?Windows-1252?Q?1HOKfJM+MhSOkB/Itlxecxvz0gWidhoocNJga1Rz5nIFJ/Lm2xDgWluf?=
 =?Windows-1252?Q?AiBiDbqof0NFYODvhszeLs939cpYVXJTdhte8LgY/h5w94kmpOwYy21V?=
 =?Windows-1252?Q?8XsYXpgyzt4HjHO57SY4wADJUvndtvLHnoTM4CKBv9XzKmCYjO7awVxg?=
 =?Windows-1252?Q?0PA3dfzHHGepp2ro4KlsXoOfOE98xv57v8io4JnagO+E9/fKPioc7bEO?=
 =?Windows-1252?Q?Kh/+piE8GqFqPwc9g22UWIPmq7/zEnHIoQxzeczQ2e/2mIaqwEg1Ym2b?=
 =?Windows-1252?Q?d7dPeGrS+zhGWxmGZkXUyAC9SNseqa5i75I1Z3uzLUIGCrkJyKHSaGRz?=
 =?Windows-1252?Q?qC0s3tdpCL0ZokQcNj9AqmMoCc3ZjIr2nccPMbIXoXgWaG2m+0RJdA50?=
 =?Windows-1252?Q?+ImC1YYV0Gs+QGzicchVaiuYjGF3unUBfYaWeVH9gOMvuatopGMLWOwV?=
 =?Windows-1252?Q?/JX3aK8SHrxMpTEoblaCAXCUFKMyDaBfrnLOQ6rcdtGmFJMq6nJLOAJ7?=
 =?Windows-1252?Q?w57bjeVovGRCoYjmvPvP6LZp3EX0yA2wcUKN+n/E/u3IVBrTuLcgSOwY?=
 =?Windows-1252?Q?C10FpkY9v+OU16qCEFZ0X5EOmt1CHuf3nt0/7mGUl4qtrDi2jUg9AOUE?=
 =?Windows-1252?Q?/Kut3H5oP+wgleoPPqqNSYtERLATLA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR18MB5078.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230034)(7093399006)(366010)(376008)(1800799018)(38070700012);DIR:OUT;SFP:1102
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?oYjEGQfG6/hDhma90ZOccPC64i0ZRV1XcvxV+DOc/w5PXDV0CgeGZRRD?=
 =?Windows-1252?Q?BKoJRATQ+PVXf4Qk+7n+vFFdzyJoRjqQqH3zt5GMToCYceG68Cfx+6NN?=
 =?Windows-1252?Q?F5N531uXAn2XcbtaME7UF03i5GbptlqO7t4DoiZcska+8PWDCJw4HxiY?=
 =?Windows-1252?Q?5SzGBO+9gGsS/QD3Uhkd3BVLrkW8kDtkb7IV8G2RBTa1kyMyrodfsLEx?=
 =?Windows-1252?Q?vEgbVSAkyWY5/bjytEGgE2eOxJtjElTiGca2a2GCgJUv+7X91XdlL7iX?=
 =?Windows-1252?Q?QzAjcwyeZhdT+k+HRoeQxYsDdtZrmMW5GH4s7VbJllJEY3L6s2cplkhv?=
 =?Windows-1252?Q?7HuqJzcDI7w52Rn3oRc1zE3TAj7pgSnSXgcuo2U1iqSJv2JA5V89h6O7?=
 =?Windows-1252?Q?YQqOkET7Upp+YhBtZ9g0zSjL1+bIkUtSfSH5jbeX/V2E4CbCRgiYHDEO?=
 =?Windows-1252?Q?PY0XMsyP/ksKQhz5Irn8poH93SqhOQQUkyhiYPDgr9vnvetYWO3MF7d7?=
 =?Windows-1252?Q?BIE3Rgs4DKFJL0zJTICHArFMplczZy9NBxQ7ft4+A/sPXitdi3kprtmm?=
 =?Windows-1252?Q?65xVZcurmaAUpXxvDdxzNkmKtzbc8guHwZJmLo5qrxGv53uSC73qutyd?=
 =?Windows-1252?Q?e3hM8nTkA0UTxWFKpzbQOs6j8maPAlP7ra4N1Tu+SGsCN2qOTwWKBOwM?=
 =?Windows-1252?Q?vnQ6+rQfiiv3Xvqn96TNaUSWnHJVF1GurprZDOo8iNht1Gr7/5ytLtZo?=
 =?Windows-1252?Q?5W/7x/VZUL731OHrWekiuWSq9D8utlJwVfOK4UiA+EHYVkQqf9p2LKrw?=
 =?Windows-1252?Q?SkN2UyfjxKPhl7VMPkriBvZMRuxA2MQ+wKrWPPk6S7mKKcOMxBm4Uz+W?=
 =?Windows-1252?Q?ixZQybskLyRlp9d9+4hJnO/VS58EN3PXakLXwoGPW4Z+QVyzFBO1VXSy?=
 =?Windows-1252?Q?zPGa78pYvNtPvHea6LV5X6Zv9q+BeL6bAIKMVudw/WiXmbQPMslhp1ez?=
 =?Windows-1252?Q?vji3gXkAUaSFZrCmPRIaoYTUZmuzF1lYRrzBu8k27eC2+VWys6ZDNYpk?=
 =?Windows-1252?Q?p/2eeIeHCX+pUfcj94WhTp05qwWoBPaowi5TbNN2QLz54iRixxCNLsop?=
 =?Windows-1252?Q?DgAYBT+7fprNXBz3iRvTK5+6YV5u3sU9KDBzyEp6fvY85cvZt0RQxqQz?=
 =?Windows-1252?Q?YSaXEgCgbJW24LY/4uw4RQKBX6tEjDIM/qfL/BU2AXBWPkbMaG6IP20N?=
 =?Windows-1252?Q?4oxiOiVT6IPBJ9vy3pvbu96SM4pWs6CswT+PrBChXGg3mYsBniXexJqE?=
 =?Windows-1252?Q?LmofIj9ZSj9ObHMo7k83XskIa2QV6oL3Wie/25Ru0zWAhox9pW4VwFDc?=
 =?Windows-1252?Q?xU6ZO6tR0gTTBIH/I2qCk4+jd5MIm6Pi0wvgNq53IxaIHFKtZ3DxZKxG?=
 =?Windows-1252?Q?onrjKWl791acIVS1DMMhkIlYqCbAn92ru8I5JUG6w3ho+YQcOyLU8jbK?=
 =?Windows-1252?Q?OlCbAcoluTWgheENPrsKoAmyNLbatTqVj8CFj2GPNqjGBmbAyjYP/yAK?=
 =?Windows-1252?Q?+VsS37YJiFlxoEII6XIQEbQwrXaF3zk5sI4RCTJcW4STLJOGDLPXgXGo?=
 =?Windows-1252?Q?JDiSlUiQ6JD+k2Pf97dszeP/lP5TLpgNHpCof1GA2QcH5+8t1ccqzFla?=
 =?Windows-1252?Q?nxEauzw6CW50ZyDxVMXT1sy7380Fszin?=
MIME-Version: 1.0
X-OriginatorOrg: crosslink.net
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR18MB5078.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5323ffab-ea4b-4230-00ba-08dc8afe1040
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2024 16:38:17.8123
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ffc1c47c-8879-4594-ade0-28ea8c2224c5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xpXwjADXccIH+qqaJqiNFrISZnA1jYj20fPj/Dgdw04dBmxmVni9mOqj0njjX50zGj+PfReklS9YwQz42wrTfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR18MB4361
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: crosslink.net
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH7PR18MB50788D4322D6A6A0FE3DCEB9C7C02PH7PR18MB5078namp_"
X-Original-Sender: cstrobel@crosslink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of cstrobel@crosslink.net designates 40.107.244.139 as permitted
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

--_000_PH7PR18MB50788D4322D6A6A0FE3DCEB9C7C02PH7PR18MB5078namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The ORCA setting for Speak Indentation And Justification is under the speec=
h tab.


________________________________
From: Ryan Mann <rmann0581@gmail.com>
Sent: Tuesday, June 11, 2024 11:59 PM
To: Linux discussion <blinux-list@redhat.com>
Subject: VS Code, Emacs with Emacspeak or something else for Python program=
ming?

I=E2=80=99ve decided to experiment with Linux and accessibility again.  One=
 thing I do is play with Python.  Tonight, I was trying VS Code with Orca, =
but I found a problem.  I turned on the screen reader support in VS Code an=
d opened a Python file that I know has indentations in it.  When I up and d=
own arrow through the file, Orca does not tell me the indentations.  Is the=
re a way to get Orca to tell me this or should I use something else like Em=
acs with Emacspeak?

Ryan Mann
Certified Assistive Technology Instructional Specialist
rmann0581@gmail.com
386-383-5175

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--_000_PH7PR18MB50788D4322D6A6A0FE3DCEB9C7C02PH7PR18MB5078namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
The ORCA setting for Speak Indentation And Justification is under the speec=
h tab.</div>
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
<div id=3D"divRplyFwdMsg" dir=3D"ltr" class=3D"elementToProof"><span style=
=3D"font-family: Calibri, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);=
"><b>From:</b>&nbsp;Ryan Mann &lt;rmann0581@gmail.com&gt;<br>
</span></div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<b>Sent:</b>&nbsp;Tuesday, June 11, 2024 11:59 PM</div>
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>To:</b>&nbsp;Linux discussion &lt;blinux-list@redhat.com&gt;<br>
<b>Subject:</b>&nbsp;VS Code, Emacs with Emacspeak or something else for Py=
thon programming?</div>
<div style=3D"direction: ltr;">&nbsp;</div>
<div style=3D"font-size: 11pt;">I=E2=80=99ve decided to experiment with Lin=
ux and accessibility again.&nbsp; One thing I do is play with Python.&nbsp;=
 Tonight, I was trying VS Code with Orca, but I found a problem.&nbsp; I tu=
rned on the screen reader support in VS Code and opened a
 Python file that I know has indentations in it.&nbsp; When I up and down a=
rrow through the file, Orca does not tell me the indentations.&nbsp; Is the=
re a way to get Orca to tell me this or should I use something else like Em=
acs with Emacspeak?<br>
<br>
Ryan Mann<br>
Certified Assistive Technology Instructional Specialist<br>
rmann0581@gmail.com<br>
386-383-5175<br>
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

--_000_PH7PR18MB50788D4322D6A6A0FE3DCEB9C7C02PH7PR18MB5078namp_--

