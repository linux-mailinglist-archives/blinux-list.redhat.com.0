Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 47E8520387F
	for <lists+blinux-list@lfdr.de>; Mon, 22 Jun 2020 15:55:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592834109;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1YH4aonbMW8xLssBte4cW3UZhFnHg6yrYCBk2StR7hU=;
	b=TpWZKSDkdnp6R0E45DWfoIPfZR69p9HY7J6iVwT3puB7g5WKVGrTNoJ5BgcSFj50f7iVZV
	Ne6SKh1Mhm4wxc7JvpIkqS616IU07kQFQWEgDS0GsSIH5EIkV6D/serdb2jdcS0hWYaLGo
	6fZetx+crcX+pnE3DvIpiBWDj1PwQaY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-450-9aGjMH0mMXC0auvVlqK7Ow-1; Mon, 22 Jun 2020 09:55:02 -0400
X-MC-Unique: 9aGjMH0mMXC0auvVlqK7Ow-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 71D3218585B2;
	Mon, 22 Jun 2020 13:54:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60BE65D9E2;
	Mon, 22 Jun 2020 13:54:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B932833A0;
	Mon, 22 Jun 2020 13:54:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05MDskKd008012 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Jun 2020 09:54:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EAE9B7D29D; Mon, 22 Jun 2020 13:54:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E689E49C36
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 13:54:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6BE20800FC2
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 13:54:43 +0000 (UTC)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
	[209.85.222.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-480-smIoNLcuO52sxNoYDAUGGw-1; Mon, 22 Jun 2020 09:54:41 -0400
X-MC-Unique: smIoNLcuO52sxNoYDAUGGw-1
Received: by mail-qk1-f181.google.com with SMTP id e11so6232811qkm.3
	for <blinux-list@redhat.com>; Mon, 22 Jun 2020 06:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yOfVGR4W/ONMZF1pbqO8CamTM3oX8NeMPoVnL0GzNAY=;
	b=VR/uISlzjCDxPInoz5GhXrBd/5HVBydZG7UpyExZtynMI3Hn0a8FNtTOZAnhgtXDWt
	hHzQMQ8/d8fWjZgdsmBejjlzuTrQmcq1KahXiBbd4Ixsjeo5ZqdKKoAoppRBPhpGowul
	V5KoKDllqRAU4NCG9TbZ6TcerFSEQpEBp66sLddXcvZToSA8SNSr4hHOvmHBRqiODyqJ
	o/z3hXSFmjU4eN24NpeKAc6ddb6U14BILaidLwA5vCgYTGoqjv1idd89gu9pcQHI78Aa
	eBk85hNwfNCOlNnnht2v60tYs2mszd8aA1zLSRptAHOFmHF+bemEvnY3liw/RFN4AESc
	nI1A==
X-Gm-Message-State: AOAM532ojB9d3OpqZso2Kay0fOlq+efJxI/bW/VMuDsIXqZT1ip4JxXK
	NIUoBjmtg5CBt8xcp6IqVxTQXgRtbj8GS2rXxUI/5De5
X-Google-Smtp-Source: ABdhPJzLUzjkLR5/bB7GBx4dIZgj7dzLJ7mMNGV4l8kCH3wzi599ncRStXf2AZftQ3nhOz5lr/09HGmD8cTRURca46w=
X-Received: by 2002:a05:620a:4e5:: with SMTP id
	b5mr15519987qkh.341.1592834080300; 
	Mon, 22 Jun 2020 06:54:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ea4a:0:0:0:0:0 with HTTP; Mon, 22 Jun 2020 06:54:39
	-0700 (PDT)
In-Reply-To: <0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
	<F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
	<020601d64807$b2b22a80$18167f80$@gmail.com>
	<D32CF46C-F003-4E5C-B518-B78451F8909A@gmail.com>
	<84E95FBD-9BD7-4D68-A1AB-4C63B4526038@pipkrokodil.se>
	<EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<0BA842DF-6DEA-4352-A635-B447ECB597E2@gmail.com>
Date: Mon, 22 Jun 2020 13:54:39 +0000
Message-ID: <CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
Subject: Re: Prospects for an accessible and open version of Android?
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

No piece of sufficiently complex software is perfect(SBL is my
favorite console screen reader and I wish it was packaged for as many
distros as espeakup and Fenrir are, but it does have this annoying
habit that when programs have an updating progress statement at the
bottom of their output, SBL starts over reading the line whenever it
updates instead of finishing the read it started, and where this
progress moves quickly(e.g. the program executing on many small
inputs), it often never gets to reading the important part of the
progress statement), and often, which flaws one is willing to put up
with are just as important as which features one values most when
selecting between two pieces of software that do similar jobs.

That said, I'm curious what the person who said "issues is an overused
word" or something to that effect meant, especially with how they
agreed with the person they were quoting just replacing "issues" with
"problems". I realize this is probably an argument of definitions, but
I've always thought of these words as synonyms and unlike words like
"affordable", "inexpensive", and "cheap" where there is the same
denotation but quite different connotation, I consider "problem" and
"issue" to be the same in both denotation and connotation.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

