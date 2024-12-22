Return-Path: <blinux-list+bncBC3NDNGRUAMRBEGBUG5QMGQEHURCCEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 669339FA799
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:55:14 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d9135afda3sf59736586d6.0
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:55:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734893713; cv=pass;
        d=google.com; s=arc-20240605;
        b=hQcUOVQB7MLTCu/ipEpGo8KXL1u7VqmN5CmrBiTNeW14s8bFEeDRgB9t4vWGHK1Muw
         8lrbPI4BgcAyfN5Cn5Ewz4UEKhbk9ILyPfuqcojBdYH+ymOuEmUcvx6BZFG6cCV5TkAQ
         7fQEd+sSK2zOl8tsFyATvTHDY1tdPMUiZYWj0unxbg1Pv5+qclA0rq7EV+EFIQL+iqva
         bDEYM+o8K6JguUbDb1woSTorVXurqXMzf42vdlKJc1CRrmF2PbUZXUU0x5AjWJTGyoKQ
         RELtT+sClr12qtEwfS85wkvtAozqYOE76dwRY4phEBJyrHjXEr2j0aoIw0RhLzsj4eeO
         c9Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=Y0mdhJHRmqMgWx7hnzRcitroO16s4LJHU6vW4eF9C5U=;
        fh=j+RE3KvSXhXdu4qNzcOVGB7+hyvb1MFzP1S7Fy2Tdik=;
        b=UJWDUaggM6Jv3H6y8fnhk5V9VXz5Wx1Ac2VrYz+Gsw6p6E7NWoOBe2rhrvOXZo7c7E
         31jeIt/XmVtl6FFIP0Ut901N74rKkV3LVcl3XSHtLrg9jAr6fBjAohqf0KTWdhhdRqhd
         3BHQp0iHUUyH732cdkIRl3zA5I7IVyDK4PFc6gRSdbQWQZTd+3CC8Lyc/1lFZOShSYSL
         dlIgWfmN9Q5oJ4blp5OtxnBZPUDiV1UyJnTimkF8DAPbOvItbMQxInOE2ANECPred31G
         EzaVdG4+w/CF3xzWHHGHtomJBm06YbZ5cj2BY2zOVn12Y5wwEdm70TFQZJst8754RdoY
         Ek5g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734893713; x=1735498513;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y0mdhJHRmqMgWx7hnzRcitroO16s4LJHU6vW4eF9C5U=;
        b=MrJOsJHS1ZDVdEI7FLJ6RpPiDDEnB2CRMdQVjgoAx6igFurdze+Od9FN9B5Gh+8Dya
         mIzD7XI+URXKdROctYLF/zjwLnrPjcbu9pNyOH9wL02bbNQRddQkIlDlSpz+z01Wymls
         jB3c/W43vnNMY27V4ciouZ1QkAO+zzQqNH/oV6hOnAVb/lfJ5+5VbB0Zs8Iv6XIAoC2c
         lE0s+0BLgmJYBgK7bI3Fg3W1l9JQVgGNGLE7+E6Wa/9AL1q0iXmTqGogaeD4jybYyAxT
         g+h3VJkPQXXnwT0ktcj5CH1E1c8tvMjoVN/cfB1Ik+XZPatt0sPRfQe9HFuqW08g1vun
         Qlgw==
X-Forwarded-Encrypted: i=2; AJvYcCUc3RUpfWmJqE3efFBWNG59nlyItou9oh9bqkpUBsQqcIOVlCLfET9+lna/wZ8JDLss0yezcQ==@lfdr.de
X-Gm-Message-State: AOJu0YxQiLnnPjvSESw24NXsnW/t7KaOcJyA+n9C8bWJH/je6/Ti9Es5
	auBTud2RlYN6DCn50iJMiJCOv9CU6SpZWN/ikO5KyU2CKPPVOeXZ8QBqCg3jcqs=
X-Google-Smtp-Source: AGHT+IFbtQuwRCl7Zes325lrbR8+fAmfqhXBJbSSyhaUrx7QOn6ZsB9cC16Nf3R52XNvlhOVsfYugg==
X-Received: by 2002:a05:6214:242b:b0:6d4:180e:e7a with SMTP id 6a1803df08f44-6dd2334b781mr174686676d6.24.1734893713026;
        Sun, 22 Dec 2024 10:55:13 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:188f:b0:6d8:87d5:f97d with SMTP id
 6a1803df08f44-6dd1548d6c6ls14903146d6.2.-pod-prod-07-us; Sun, 22 Dec 2024
 10:55:12 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU5FKiyCdVF9LtPJcKWAmreyan5W93v1cUKo96z+14m+uZ+26vkQVZWfWNDPmpzAWozPqoAYbCIO3hU0A==@gapps.redhat.com
X-Received: by 2002:a05:6214:ccf:b0:6d3:b936:60d1 with SMTP id 6a1803df08f44-6dd2339dc55mr172919066d6.33.1734893712144;
        Sun, 22 Dec 2024 10:55:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734893712; cv=none;
        d=google.com; s=arc-20240605;
        b=QJRbHwcINIXtUDIegegkL+GUQ3rw4POJymUSJKMBeY46KBtJLKKJPrCRZK+d5M0sfk
         pjBSmBwblUz4bnRnh7DI7QG5ri1SjHkDKPPJ9UTfJOMkPw6Ij/r/YD/EEVPtOs4WkQJ5
         13aOmHIYi4ZewPRU8qgLdXvefHEy12XGBBeI2NLGjqbMd8/Iq2F/LifoILuyEx2Ks37f
         JEUxCQMv+YgxDr4eQc/buKpL2wRrZFmplOVRXiWtgQpm7zy57/PZYTolTKyrsN3cUPYc
         2vJmRHKIWsR4IgFioMO5sNAUW1QQ+CdInTFjo2ySMiAzF6bWz6o9JfymqsK59g8ILRdD
         o7sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=a8u2kR8tn/jl8pAFzeTNmXoMHzeKXB4oyqRYuw5AKpk=;
        fh=EnmT/XM52Cw5dKgKwAcAwrWfgpvmbC8BORRziwvcwVE=;
        b=DdGAmEViLMr1BsUiuiROKEKtieQjYnbFq/vIZfmmPNSgAQbHvPATFXPFq8PjKUvbJI
         a0K711+j0UBZmxxoW7rvm34O1DQBUfizL6PguzKnmPVHWwVcDv2pjS+jgveB1LL7p+Hu
         vAu3gB2zv+aCI+qdLtxe58vF+vY6Flei8K3yPhOnSbv5Das1PBNyJa177g3XyndKOety
         jujbBtP573NdbDVmlORpL5X0oVEW4HmKl7M47IZFrgi3ga9ghserkQzYUZIs+8jEJldn
         j0P+6rDrtebO+JX1m+ORToo1eGTuUCLguKZlbQBz9AtL6atMRCXzz1Q6tlk01DM1umRk
         TWCA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd181016absi104481596d6.13.2024.12.22.10.55.12
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:55:12 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) client-ip=103.168.172.159;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-678-r3qg1cCzMMqP7OVB-Zp3nQ-1; Sun,
 22 Dec 2024 13:55:10 -0500
X-MC-Unique: r3qg1cCzMMqP7OVB-Zp3nQ-1
X-Mimecast-MFC-AGG-ID: r3qg1cCzMMqP7OVB-Zp3nQ
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 93B3D19560AA
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:55:09 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8E28E1956056; Sun, 22 Dec 2024 18:55:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B9601956053
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:55:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 23EE0195608B
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:55:09 +0000 (UTC)
Received: from fhigh-a8-smtp.messagingengine.com
 (fhigh-a8-smtp.messagingengine.com [103.168.172.159]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-395-V4SGNizyO8mHMnEDtRWaUQ-1; Sun, 22 Dec 2024 13:55:06 -0500
X-MC-Unique: V4SGNizyO8mHMnEDtRWaUQ-1
X-Mimecast-MFC-AGG-ID: V4SGNizyO8mHMnEDtRWaUQ
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 82E5C1140084;
	Sun, 22 Dec 2024 13:55:06 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Sun, 22 Dec 2024 13:55:06 -0500
X-ME-Sender: <xms:imBoZ5foWl7ITlLXpoC-At99y02nVQFRQqUdayrc6rICR5fIN0jVEA>
    <xme:imBoZ3PO1n6c4JT72Z-NzOfxbDKquLDHVytU3S2H-uKMSyb9v5LHZ-lVvQXwbbQy3
    qMNEZJo8wNbHrJC3mQ>
X-ME-Received: <xmr:imBoZyiRVQIarXKkscsCMTuOqGvitrPSHWojBfiIcHnzPGnlDPihy2opu5C4sagEg5Q1IN-qq4J905INI64f1rtOAF-gzbRGtPs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtkedguddujecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    evufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegt
    hhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrh
    hnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftden
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimh
    gvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehsrghlthesphgrnhhigidrtghomhdprh
    gtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:imBoZy8qnKR-O7ca0gldPxqkI6HzYKzDiMhg2QS19afKHUrLYjQJEg>
    <xmx:imBoZ1v0-0WBiqYaHOU4NPskKxXO7-d0pEvCCj-MUvpQ5eBDx44edQ>
    <xmx:imBoZxFpm9hQAXBwvf1Hs_RfKebO-CZSkbPx0Kfbm5I-l0S5NDAcgA>
    <xmx:imBoZ8OT2ubYHgax7ZeCnuGZbHNED2x8VSxGnb7vDtsbvVpCnzCWWg>
    <xmx:imBoZ-4RMRWD8g9GXRpa-nwj1XNHFlfDOeSSBTNjuW0iGix3O1tl3XvK>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Dec 2024 13:55:05 -0500 (EST)
Date: Sun, 22 Dec 2024 10:55:04 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: blinux-list@redhat.com
Subject: Re: youtube issues
In-Reply-To: <Z2haInMLi9tm7Fjy@panix.com>
Message-ID: <fb97c1d4-80c4-9d6a-751c-2619f571fb76@hubert-humphrey.com>
References: <Z2hB3hnS-T8uW2DC@panix.com> <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi> <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com> <Z2haInMLi9tm7Fjy@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: BprJsAbFElbWKqP8SXUbTz6WZkSIDxJYmw4W5OGXaNs_1734893706
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rxyr-fy4L4zxX4tcm1TNM1ozueXv3N22zxajk91Oz-8_1734893709
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Thanks Rudy: I guess will need to investigate here. I also tried on Shellworld, 
but got a 429 error, "too many requests"
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

