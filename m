Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 618413BE81C
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 14:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625661545;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DDpxeYXVd7oQcpSMvQ/PuOMLlDyfVwE86sRosVkY3qc=;
	b=fhvCnTtrWPV0hK16GQyPN+98S4kwnDJkP4+jWetjSGerZWJ5+5aOw2jzwdSEPDD29h5qhN
	iImlTacuZhbjhF++w7+gOKuclXw1GON+OXPqaLRLjMuepcBBYTKAZiad4KgxkC6r8Yrb1c
	e3gv/TeiFm09QR5oZCv2oyfLKp5spOQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-392-40SEmYy7Oi-h4TrM3i9haQ-1; Wed, 07 Jul 2021 08:39:03 -0400
X-MC-Unique: 40SEmYy7Oi-h4TrM3i9haQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 805381018729;
	Wed,  7 Jul 2021 12:38:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9417060854;
	Wed,  7 Jul 2021 12:38:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 503201832EAB;
	Wed,  7 Jul 2021 12:38:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167CbAUc011725 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 08:37:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9EB9E112D419; Wed,  7 Jul 2021 12:37:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9951510EE97D
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 12:37:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B47E1802E5E
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 12:37:07 +0000 (UTC)
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-455-fG9sv_z3MT-t1IxsvhNcfg-1; Wed, 07 Jul 2021 08:37:05 -0400
X-MC-Unique: fG9sv_z3MT-t1IxsvhNcfg-1
Received: by mail-io1-f49.google.com with SMTP id q2so3080457iot.11
	for <blinux-list@redhat.com>; Wed, 07 Jul 2021 05:37:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=kgWb/rAjR/yMa14ohPKr7h1X9E947+xxGs2ZR7TWrO8=;
	b=Sg+Wq8xotBjxlAnYp3yap1RklDJ+veLoV4OvHjcwWcf5cDd0yJ40nc4kxaNX413diK
	ZlQQBlv2OrIpRlrOjJ/+HEivYfqhTmDaW2XNNdB7vzsZt3AEBRrDpU552zSCMwdzXXiB
	V66gfsB4TFfWLdAXrjw5I0LZ5BB8mfK4QSXGcpuHTfpsvh0wHv/eMMvl6Ci8qIkhgsV9
	4xSuCJAG1wlNQKv808Fwlk54YVM1csDmX7O7EyAs+JgIF4DfVy6iE/89SVl5qY+yQDoA
	8Cosah6Zye+CUqIqPnjMWiv/srop97vlZxzDJarILKkg1d8YbH77tVaRYV7wmlE8DHYR
	8zOw==
X-Gm-Message-State: AOAM5327bOAQEIEddelC3ObHLLkeqZCI6xUV6e20IsaCoDl+4NdZe3wR
	VPWsq2MceE1HDFqEFM8m99XwnNifEyWkrw==
X-Google-Smtp-Source: ABdhPJwm2Cchi4rAp23NeZMwWutf6i0A0t2A7x5tSdwxWuuGWNltRpl97zMzYiLlsIfHG1yXoDZIzg==
X-Received: by 2002:a5d:87d0:: with SMTP id q16mr19922912ios.109.1625661424871;
	Wed, 07 Jul 2021 05:37:04 -0700 (PDT)
Received: from ?IPv6:2600:6c44:f3f:71f1:18c4:bfc8:cff0:9e03?
	([2600:6c44:f3f:71f1:18c4:bfc8:cff0:9e03])
	by smtp.gmail.com with ESMTPSA id k3sm1671888ioc.49.2021.07.07.05.37.04
	for <blinux-list@redhat.com>
	(version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
	Wed, 07 Jul 2021 05:37:04 -0700 (PDT)
Subject: Starting linux again
Message-Id: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
Date: Wed, 7 Jul 2021 07:37:03 -0500
To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167CbAUc011725
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I've been very busy the last few years and have been using the terminal on my Mac for a lot of the things I used to do in linux. Now I would like to get a laptop for linux again. I mostly want it for command-line use rather than for the gui though I suppose I may end up expanding to that at some point. I mostly used debian when I was using linux with a few excursions into arch. I am totally blind and use speech and braille but the more I can use braille, the happier I am. I used thinkpads a lot and also converted old Apple machines but I don't have a spare Apple computer right now and probably would go for Lenovo. Can somebody tell me which dists are now the best for installing linux, especially knowing that I want to use the command line a lot? If I get a Lenovo with linux on it, am I probably going to want to reinstall anyway and how hard is that nowadays? Obviously this email is prompted a lot by the thread about getting a laptop for linux. It really feels funny writing about this
  as if I was a complete novice when I used to install and set up systems all the time but I guess one has to restart somewhere.

The only problem I had with my Lenovos, and this was after years of use, was having the fan quit. Some of this was just the age of the Lenovos but it seemed to me that it was becoming harder to know how to set up the system so the fan worked right where at the beginning of my use of linux I never had to pay attention to fan settings. It may of course be that it was mostly the age of the laptops - I got years of use out of them - but I'm still a bit hesitant because of that.

I know this email covers a lot of territory - I'm basicly thinking out loud - so just respond to whatever you know and can address.

Thanks for any suggestions.

Thanks.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

