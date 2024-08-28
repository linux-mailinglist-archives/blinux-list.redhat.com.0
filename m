Return-Path: <blinux-list+bncBC3NDNGRUAMRBXNQXW3AMGQEWTGGCZI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EC5962E1B
	for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 19:03:27 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6c15405f51dsf85715076d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 Aug 2024 10:03:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724864606; cv=pass;
        d=google.com; s=arc-20240605;
        b=NAhJFf32K+IUnxPzn6YyuU0eoSUWyXk7OX0r8SzYlFAmE01hMGuhKc9kOCylgO37PG
         E72Q/HG+a9je/uhVxAb5ChyEPkKqIfFA1JPHo7XswKKkk8xVBhuMvytgQR9ZbKC/dCmt
         AzlSdcsnhgurKjIf+RdEnta8+xCRVLRH7OUnuwozLrKUpG0NnFZZBCqg8g6sVhhVawN8
         cVzZngWyELPpYZrs/HHoTpseo6Fw9ZOHLrNRsB+LC7j7lRdyKHO20ZwVC7eEOVBKrlc9
         qxRP/jHnC5d0KxeXebaxxbccD0h2dD0uRfexoDQK22B5me+QJAb+dV7G7f9hBgkrYkq6
         wtbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=KqPbO+N+57gnPymStGtGDEGc6Vld0u4FBBEkhd3Bh+Y=;
        fh=T5KlVula0w5ylMVbldqSKq2wFAATOwFaCRK2hYxu+lg=;
        b=f6vhbWF5/Mp/Ye7PITq2wFFqk0h5ZuV1iqt/DPwSDRDQC8CKi+yPw+HOQDpz5phShd
         eixMvBNUPrI+kmDpKGf65klgkMtJpV2aCHEc3+000wLYubhmw0D/jXT8GOC6ll3yi5LK
         loUshLDeb5nu3pR0xRe0Wq0u9FBB+DOu7XfHk8dB/fWWnlJrei7PWzCXJUSWuB6o8F6H
         avjqwMWSbE4/ojTmnEp4kHkRiqEsw/6C5InlN9LTiG0Bu0CfTUtkYdjO5BXczpGIrLSl
         poXw2D9SGLRNSLlcGJNbEwtbEQCMdyveHMFBmg8DmUmlCJt1Y8+FczUbNqeKlNN7/ToH
         TH+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.153 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724864606; x=1725469406;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KqPbO+N+57gnPymStGtGDEGc6Vld0u4FBBEkhd3Bh+Y=;
        b=dbgiOj6+/AzHwJqOBuFcDOdQnSsi2Fzr24amH1Q11C5Ln85N9JjTid8eVCEoBTKi9X
         xLGhkm47wMHl7wzbO8XwXhPLefBGdekuyGw8DWHvEcA9Q1+wBlTW0+wv6rca17LARjAU
         sVmkN8Rb0fhcx6TzAPWK551M90X8NYWmz0TqHc46GxKYi8VzAdhVhhsgDjxF2QXAwmYZ
         0nb14KROECWXV78f8JectBXdeFf3jKm68daYo48u8oq5ksg5vsAiCcSbwyEmLxx9ayR+
         CanEYimd7Xbqevz7Y1F3ZrFg/UwaNpu/PUmJ1vnS9qLhdVSosKUBCzlPqPADaMHM/QMG
         NlPw==
X-Forwarded-Encrypted: i=2; AJvYcCViuLvPN9HkTcTyjLsRqrWgMvfVMngFSz1Q8TMX2Y/+sVsOy+VgaPAEWU23c/ZN0H3nAfN8mQ==@lfdr.de
X-Gm-Message-State: AOJu0YwW3Zx4YBD6yDP6jeOo1E9c5GUJ36l+3t2M3BpADA8QYnROOOQQ
	NNpzFsuc5Qp8tkVCk33MRGG/Y+1Q9insLFAEj5luKrIv62YRxMApuH1asZZZT30=
X-Google-Smtp-Source: AGHT+IEmcQot1y9vT57RLdBhs+wBDEj97GwIlVDMjN4YhuOVdJE5uhdNXWN8i/GZuPHleDQ3HHJ3hg==
X-Received: by 2002:a05:6214:4388:b0:6bf:65db:270b with SMTP id 6a1803df08f44-6c33e611a5dmr1404036d6.22.1724864606043;
        Wed, 28 Aug 2024 10:03:26 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5092:b0:6bd:6d6b:9a13 with SMTP id
 6a1803df08f44-6c33e09c42cls906336d6.2.-pod-prod-06-us; Wed, 28 Aug 2024
 10:03:24 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVUQgMPKl5WYFdvA88kEjlaDLAd6lbQ9XXaYmMNFMtu38crlf6/O0K+mP7C6M4rzfunXv+vtgbLR0GWIQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:4587:b0:6bf:75da:de1e with SMTP id 6a1803df08f44-6c33e622d51mr1356956d6.25.1724864604699;
        Wed, 28 Aug 2024 10:03:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724864604; cv=none;
        d=google.com; s=arc-20160816;
        b=wxBrZDU715GYJXQJb+5SSqjrbCH53E+sKzsQyrRTTJpd7cxdnO9vKSoUlZtcbLYA85
         cZPKN3dOOOD9TL+qBXm9VmZU/pzuWNjcrWh+J4dHKqA/mv9u6KTPzdw6rg+kaG8jOZgs
         8SFJ03rVXjDj2Td1TY+24mBskN60ZMEnM/hzuwqyWHPQVcJ0MQOm7M8maNZo/SusSbS9
         lkojC4KJ++KTe54n/s/10Tix7OemfqepdpA3gxfk5UCAPqh0Ob7lNf1HHR8d8NUiW6sR
         O70QCtc6jjSkPInGcTLzGD0QxcNl1657Yy55GU7sak7mtPI19Wzmou/Dj6e74grf4D/X
         +FEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=Gw94uhlkXi8nAn5xWKAU5IIb0BvIqzWELXI90oIWDIk=;
        fh=egCYbaVhLEDbDgD7NHRJ3aPzFufLHmM1Hfl4V7AEd/g=;
        b=aUx1ogBs9SUTkYMuKiHPk2mwI1PYgZjbvoITSYiTgB//xQjW6sOf6BetYbvBnk0Me8
         eda5MoB+f2j1hSd3Nn1GOqruSM6ch/gpkx9GuBK4sInLyHw6NSGvktYgfyWcFSURLajb
         CC1ReBZ+R3y2WzXWIi+x17aeu7Of4lG+3UvzbQZ6UW/LGXTKtkA7AkzbVCFBFSVMxs8q
         7KfOJORvrMLKKlNaxHfcuFnFsihfAtMy834ZKndpgmEOuORJ999PLpC5lNhCxk8udlqW
         oJ6Cy6N4a6PnTlXlCdvP7c5slrlAFuRP0Hw/w0oSYARynU+/t/CoeIjKbUOmPnB/QKkM
         yZCw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.153 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6c162dd9383si160572206d6.376.2024.08.28.10.03.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 10:03:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.153 as permitted sender) client-ip=103.168.172.153;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-627-VMBNPvNPPSGYV1OAp5m3kg-1; Wed,
 28 Aug 2024 13:03:22 -0400
X-MC-Unique: VMBNPvNPPSGYV1OAp5m3kg-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EB3881955BF7
	for <blinux-list@gapps.redhat.com>; Wed, 28 Aug 2024 17:03:21 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id E64843002242; Wed, 28 Aug 2024 17:03:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E36883001FF9
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 17:03:21 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 582CF1955BEF
	for <blinux-list@redhat.com>; Wed, 28 Aug 2024 17:03:21 +0000 (UTC)
Received: from fhigh2-smtp.messagingengine.com
 (fhigh2-smtp.messagingengine.com [103.168.172.153]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-62-I7M7E3fkMSWUXYyfnzCFJw-1; Wed, 28 Aug 2024 13:03:17 -0400
X-MC-Unique: I7M7E3fkMSWUXYyfnzCFJw-1
Received: from phl-compute-08.internal (phl-compute-08.nyi.internal [10.202.2.48])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 829E511518E8;
	Wed, 28 Aug 2024 13:03:17 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Wed, 28 Aug 2024 13:03:17 -0400
X-ME-Sender: <xms:VVjPZvU79GAlU6Eb09DIUnJ7LGGhcPXtE9g-w_0xSZSVrLUIn81uWQ>
    <xme:VVjPZnnBrbn4BsZFOcwkqgFJ9NkeHXYfJjmDWkKK9VxUlwMuKs_gY4HqMWnlUOSgv
    BtgNkH2aPJf6uK0LLI>
X-ME-Received: <xmr:VVjPZrZuumsNSUarSjoPP6Snt3TJ1LhS5vJ_Htbw3uXMIJhQP-WNoBDKTAo65ytiNFZ2-igZXQErfqqFPC18VllUrXGBckv4e-0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudefvddguddtiecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvf
    evufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgvucfjrghrthcuoegt
    hhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenucggtffrrghtthgvrh
    hnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeffffefffeludeftden
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimh
    gvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhm
    ohguvgepshhmthhpohhuthdprhgtphhtthhopehkhihlvgesghhmgidrihhtpdhrtghpth
    htohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:VVjPZqUThIayFKQR5pSj4VpxcjPrMOA2xgyQH0dMOseNa2HGxV8QVw>
    <xmx:VVjPZplfQl7ZK25t4XrZ22Y9G7Tvipj8OqTO4nSK_jE8jvMbcBMayw>
    <xmx:VVjPZnfGGBT6PnMBC3nZFLHBjO9yokdqdv5c715GqGTUBz4lNdDC6A>
    <xmx:VVjPZjH8LGvmedTcxp7MIBD2gWR_93O0v75WzJ-ClgHnGQidkuOnaA>
    <xmx:VVjPZuxm1vQ2ykUC03U_qFe56EW18dG-f8mC-wkVqFJL7O-d3lEXhkpE>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 28 Aug 2024 13:03:16 -0400 (EDT)
Date: Wed, 28 Aug 2024 10:03:15 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Kyle <kyle@gmx.it>
cc: blinux-list@redhat.com
Subject: Re: Grants for developing accessible software
In-Reply-To: <3f7732c9-1f9a-4b95-b2bb-005f1870ede7@gmx.it>
Message-ID: <844570fb-df7d-81ed-cfbb-57f2e98102a7@hubert-humphrey.com>
References: <20240826195903.wwlxwqjipjjxnc7k@sprite> <b7d0dc90-b882-46c4-b089-fe861f0175a7@gmx.it> <8f39b1ff-64ee-4d51-bc0a-ee991f3b14db@gmail.com> <78c726c8-e793-4eac-99d5-ffdf2d80a1bf@gmx.it> <7d7001bb-d756-7e48-28fe-80bf65998770@hubert-humphrey.com>
 <3f7732c9-1f9a-4b95-b2bb-005f1870ede7@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.153 as permitted
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

Thank You Kyle: When I looked in Debian, they only had 2 Python related 
packages, so at least I also grabbed a source-code from your helpful link. 
Thanks again
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

