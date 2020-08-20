Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id D835324C89A
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 01:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597966299;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TW3pvfr/qBvOK0HAb3KGohV9sAMnl5hU3NCj2jAzY1w=;
	b=ArZAy8GPjRU4tvwEoZwDcaFE+lXrR0ChJHF/6667gQRyp18Qd2/su/N32Za8FyjALiIOro
	t9GXHZ42DsEMZ9JS04+WjnrYR4/KnR2ESjoszP5kLiwb0NYr0dknxNcgqlB6O1nCMQbC0c
	4Z8UZxkFF6uPHiAZMqMXQtp0adWu03s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-heHa7dh2NxeZm95H4z-8lQ-1; Thu, 20 Aug 2020 19:31:37 -0400
X-MC-Unique: heHa7dh2NxeZm95H4z-8lQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC0041DE03;
	Thu, 20 Aug 2020 23:31:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E906669C9D;
	Thu, 20 Aug 2020 23:31:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8C0F8183D021;
	Thu, 20 Aug 2020 23:31:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KNVPRf000863 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 19:31:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7BA54F5187; Thu, 20 Aug 2020 23:31:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 76B1AF5196
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 23:31:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 358AD901843
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 23:31:23 +0000 (UTC)
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
	[209.85.222.195]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-485-yYOcDljAMq-BxXe8yhoqyw-1; Thu, 20 Aug 2020 19:31:20 -0400
X-MC-Unique: yYOcDljAMq-BxXe8yhoqyw-1
Received: by mail-qk1-f195.google.com with SMTP id d14so3073231qke.13
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:31:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=VU7EGcr/RCGzj5aXdFPzVCkWEmjtDgEYNFJ7IWkpGUI=;
	b=cfFfG6zCDVDDoFkyMtag3kGabWjL9bvI77yoU2xPx/NVAt3voQBIoPcgajY346ZC3v
	a08dMComSfCIKBXceagoKnu4qbeqJMjlTP1iaOTFTQpZGvbBGeDm9TcCoNMIzMyecAoF
	g5AIvkApzk8wxSJawQjSFYRadi+l7TJdMdx1bLNwZytUrKwP5FabQ8kKuusSsp/ADqFv
	l5kA+sREAuQLMtRRbsbMr9lKjNxtXfY4T4qYAXXwVLdHsXeME7CbkX2VrPULqYpgn2yZ
	/hqpaJjgXoz+xqdLwmoZAyphYWWTV+2anFCRB5PmLiUpLanRTud/YUXdlpEwxMxBDFJg
	P0pg==
X-Gm-Message-State: AOAM530K5UjLTElbE3L5Fo0SmfHl5SwJNoYVUlITL+DXbknoSTyMXCTS
	+/xbC7Sz03G5cXsZcDgI3ObzkCxiN4oSf5zEmUopw02DRHk=
X-Google-Smtp-Source: ABdhPJz3XsuTltg3NcqZ2eqsVb/g4CyLJi07r3F4aNwul8aKKbAFwje11tDWjEsdl9vy+f6ycQK8VrrvI5uxgHVs0Mk=
X-Received: by 2002:a05:620a:15e8:: with SMTP id
	p8mr357612qkm.182.1597966280136; 
	Thu, 20 Aug 2020 16:31:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Thu, 20 Aug 2020 16:31:19
	-0700 (PDT)
In-Reply-To: <e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
Date: Thu, 20 Aug 2020 23:31:19 +0000
Message-ID: <CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I remembered I had the following page bookmarked:

http://www.openblinux.de/en/index.php?page=download

Which seems to have the URL for a git repository for SBL.

admittedly, I'm not sure this really helps much...

Turns out that I do have a copy of some version of SBL's source
sitting in my programming folder... skimming some of the files in the
debian directory, it sounds like someone might have tried packaging
versiong 3.3.something for Debian circa 2008 as some of the files in
there mention dates around that time and there's what seems to be
skeletons of the kind of metadata stored in /var/lib/dpkg/status for
software installed on Debian-based systems and displayed by apt
frontends such as aptitude.

My system is running SBL 3.5.1+1knoppix1 or something like that and is
based on Knoppix 8.5.x or 8.6.x while I think the latest version of
Knoppix is 9.something, but only available with acertain issue of the
German Linux Magazine.

Considering that Knoppix is debian based and that I get the impression
its a one man distro, I wonder if Klaus Knopper could provide any
insight on how to build SBL for vanilla Debian and its other
derivatives, but I have no idea how to contact the man.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

