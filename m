Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 85F3B2B321F
	for <lists+blinux-list@lfdr.de>; Sun, 15 Nov 2020 05:20:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605414015;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vsgoC3ZknhUNuQ+kQtqNACgHE+fLwB44Lzb64M/4mAw=;
	b=DMYnx521zXGIENzLFs46bW7yKis2AdgKf5zCk88rRUl/y1ONpOQMH8P9qVzkxsac8O8Z8L
	F9UiZkKTM2PPqCZKs99fQKG9P3Sfu5cdZ9/CyGLC98mTeYYPoM0RYy7bT173Fe17XeLjSB
	cR9sGIjiOg9pte9CTaJfCC08mY6E7k4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-358-ImjHoiKEMJWDFNtE_md8Yg-1; Sat, 14 Nov 2020 23:20:13 -0500
X-MC-Unique: ImjHoiKEMJWDFNtE_md8Yg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7BB621868412;
	Sun, 15 Nov 2020 04:20:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E3D35C1D7;
	Sun, 15 Nov 2020 04:20:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 66E5958102;
	Sun, 15 Nov 2020 04:19:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AF4JojX013055 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 14 Nov 2020 23:19:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1102563536; Sun, 15 Nov 2020 04:19:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0ACF663799
	for <blinux-list@redhat.com>; Sun, 15 Nov 2020 04:19:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D39A6800296
	for <blinux-list@redhat.com>; Sun, 15 Nov 2020 04:19:47 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-560-V_UkBmE3NgK14QYjOHTPbQ-1; Sat, 14 Nov 2020 23:19:45 -0500
X-MC-Unique: V_UkBmE3NgK14QYjOHTPbQ-1
Received: by mail-pl1-f182.google.com with SMTP id 35so2310345ple.12
	for <blinux-list@redhat.com>; Sat, 14 Nov 2020 20:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=uocQbKVtw9SPS1iiiV9cEhnHrtkVwACHBCJApEid8jg=;
	b=NJFboARfEjkKEPPqyu7CFGEaKHq9lBf02Zn3LCnyVYwybzcE0Ww9zHhEwNcBUkUE0G
	vMWSp9kXF+3mzAB9+nkexAAA1Ta3gGG079sEqeJiWVxgeEWdPBhBMbbOxOJdQMwaqrf4
	1wc3p7KeEAz3AFTzSCKt1leQ+jc+4dkP6BVtn9mWe4gWh26E0yrau875O90LQEnGgxvl
	UsGL7DA/XmLavXZL5xkmQhV6/bT2YB3OxhSDha7KEz4c/dtvrGg5D6/yybYZS0GhUUxF
	69gLdAQFZni5AcOoxievVgF5+ZFmBeRx/UrVqpS1YpPcK3mNjq5ZpcAgNn9PW+ge4nLU
	XIFQ==
X-Gm-Message-State: AOAM5318b72JfDkejRbSXqajNnIaMcnNdRiDpGe7Kk8JZrunpLE7q02z
	5+AvSKoY8ezmBhbctTKKlrfxi1XpIOpLmA==
X-Google-Smtp-Source: ABdhPJyZtoYoHc5neador9s7QIKZCBFUP/n/d8u4NnmWZbiCwexZeOfwymD8CmC2ocQ1FwTeu36nMQ==
X-Received: by 2002:a17:902:a70c:b029:d7:eba5:7874 with SMTP id
	w12-20020a170902a70cb02900d7eba57874mr8528698plq.9.1605413984297;
	Sat, 14 Nov 2020 20:19:44 -0800 (PST)
Received: from [192.168.0.3] (174-18-113-236.tcso.qwest.net. [174.18.113.236])
	by smtp.gmail.com with ESMTPSA id
	w10sm12407780pgj.91.2020.11.14.20.19.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 14 Nov 2020 20:19:43 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: latest iso of jenux?
Message-ID: <fea4d0e7-5caf-f5b7-cf0a-5f3b313acb3e@gmail.com>
Date: Sat, 14 Nov 2020 21:19:40 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.3
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello can I please get the iso to the latest jenux?

Hank


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

