Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2DE450DAC
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 19:00:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636999215;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZcNyaC8sXq+Sco21N31p0ikju+A2NE4VaZv74uk1wIo=;
	b=JnGFPipkWkDZR8d+7bHdAdTHKp/M3QzxF/lonYBlmkz4Dk+214MSqLWEM1iJQDb5E2Jdu9
	hYC2b8Hu0gTWHuOMr229gmPMzT2iEhoiceanA44YBA6rac6VZN1H9/T/dvuxXyu3+pPnZa
	kRAN78DnKWdhtb7Ruaf51NH7t9p70pw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-571--F-nUVwbOiuWqlnclhcBAQ-1; Mon, 15 Nov 2021 13:00:11 -0500
X-MC-Unique: -F-nUVwbOiuWqlnclhcBAQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1631E87D548;
	Mon, 15 Nov 2021 18:00:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FDF75DEFB;
	Mon, 15 Nov 2021 18:00:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9633C181A1D1;
	Mon, 15 Nov 2021 18:00:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AFHxvT1004780 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 12:59:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3193740CFD11; Mon, 15 Nov 2021 17:59:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C9D940CFD07
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 17:59:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13CDF803D77
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 17:59:57 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-56-DYB4YD2nNGmUeOuESTUBYQ-1; Mon, 15 Nov 2021 12:59:55 -0500
X-MC-Unique: DYB4YD2nNGmUeOuESTUBYQ-1
Received: by mail-qt1-f182.google.com with SMTP id j17so16428236qtx.2
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 09:59:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=56cvqw/rLRnVEIwKTdVcgaCZO22kTAlT42WeFalTLZs=;
	b=zFUOIC6eBGImj/kn+rBWjdAglePpyhwvWur3N/qQ7og1Zq9irAAR+fvD88ORG9FV9E
	VBLCo/lt62PWzcTXJk0/BEEDCWO2ruWGkBPvt7X/bR73rWXQg0s68fSDtvE45aPqGgAG
	S0Tcq5e1qBqE75axr+aM1rRbLn6Xt4bVJubKVoq+xKqBTpXZ1O3LHODn6GklfuWNm/y4
	YVKURQ8m6GhY0gk8LWNSGHuTztifwmeBhoexnlb+HfsBhaMrbemY0p2vJN01pW/Ts1Lb
	DZteBEs0KCHHoFBMSNIm29J//CDeO7tnIzZ+Hf2EHei/oZPc2QSbE/PAlmjurCN3VNLU
	qMjQ==
X-Gm-Message-State: AOAM531xAqB0lFaz552+QlHA1k7xsarodLuqbu8tiVBXj6szAKbIjJZD
	GpyWMYA6qdNxMKfMC002O9gSPlUX4DfCiw==
X-Google-Smtp-Source: ABdhPJzsMANcByPhcBLYBcXGVypbnCZ5Yd8pN3PNTeW9NU0mZ5xSdW8+FUS2EGuYGZvRtfpqAZqovA==
X-Received: by 2002:a05:622a:1a1c:: with SMTP id
	f28mr946323qtb.308.1636999194497; 
	Mon, 15 Nov 2021 09:59:54 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id r4sm7503127qtu.21.2021.11.15.09.59.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 15 Nov 2021 09:59:54 -0800 (PST)
Date: Mon, 15 Nov 2021 12:59:53 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Gui vs. cli software
Message-ID: <d5a6f4b2-a8ed-da3f-37bc-4c948b6f1a97@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


The topic of using gui vs. cli came up recently.  My view is the cli allows much more individual control over software functions.  The gui is
oftn limited to what the developer decides is best for you as to function and individual control.  The gui was originally sold as an easier
way to use computers; which meant in practice the developer trying to guess how users might want to use it at the cost of greater individual
control.

Menu driven cli software is the obvious middle ground for ease of learning and using programs, which could easily use mouse input.  The
developer could have a default setup for ease of beginner use.  But it was at the time not the new sexy flash bang eye candy which graphics
allowed.


 -- ent- XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

