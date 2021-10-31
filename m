Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 00CFA440C97
	for <lists+blinux-list@lfdr.de>; Sun, 31 Oct 2021 04:19:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635650342;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=clssTSNuVhMa5IkTmFTCb4AiB5RWp8pNAvLe+ocUQt4=;
	b=Or5k0sUFjQfenEmAA3NuUc0nM34/WdmUQi27afdSvPSCy3KKmxsK+D+0KPfTWjkHZSn7ys
	e6lXz9kglRlcShjFa+OgYeTYBnV/RLcgScrImfNxkTAMn8MtMazy+IcdgqGMfL1HMYVQ0L
	I2Pd/7WmmkdR3FhHU8Y7X/5D9/6aZks=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-KKYjjyV1ONyVsbykuMc3RA-1; Sat, 30 Oct 2021 23:18:58 -0400
X-MC-Unique: KKYjjyV1ONyVsbykuMc3RA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3784C362F8;
	Sun, 31 Oct 2021 03:18:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FB2F60936;
	Sun, 31 Oct 2021 03:18:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5EDDE4A703;
	Sun, 31 Oct 2021 03:18:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19V3IZ6P018357 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 23:18:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E3DDF2026D60; Sun, 31 Oct 2021 03:18:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF49F2026D48
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 03:18:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F1073185A79C
	for <blinux-list@redhat.com>; Sun, 31 Oct 2021 03:18:31 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-181-vwTkS3vqPj-voF03Ap1aOA-1; Sat, 30 Oct 2021 23:18:30 -0400
X-MC-Unique: vwTkS3vqPj-voF03Ap1aOA-1
Received: by mail-qt1-f181.google.com with SMTP id o12so2212366qtv.4
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 20:18:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=0QyjL1oOgoa7KTgzxg0VsPO4MVNHiD62GPmTBSZo4h0=;
	b=rOB19a4tbRByjJilqUWCqfw563djknRfCbZ8Qp6Ttsc9DNAwlVvwWW1JvRIgoIS43x
	4hv4RBn1u3EwPZgCFHoN+j5nn4B+T9xdhQdUo1KIoZ3XAuX7MY6aUgz9hvvHodbHiN5E
	+f/4t0i6URH6jGFFw4bN5KKDtYKrasX2FnQMUMOwjEcD78mWsIKIGZgxP3f0tGCcJkN2
	8emtzBQuMBA77bLJjcTCtr6XsUtWFASWzENXeiCXD5j/yIkJQtr1ucWTngm9OzjjoQ+W
	lJL269P06nbrdS9OwpUwuZKTrjqyKpIC6FRl38CQENiiEESodhyKsekakbuwSHZVI18r
	oNqg==
X-Gm-Message-State: AOAM530UAzcNYNDWIpiVr31uROg65/tPtWf6Nf/23oXwmp3MPTHcRdgG
	GWGs5EgdXiJ9W4Yobc91gDeyxKxPAfSu8g==
X-Google-Smtp-Source: ABdhPJy8wN79CNE1hqQnwiNZPT6w9JappXB/s3XjPCavmaWvAjyFpnhnv1LTy8/017eZRQM+kkuDFA==
X-Received: by 2002:ac8:5c8e:: with SMTP id r14mr22593542qta.4.1635650308907; 
	Sat, 30 Oct 2021 20:18:28 -0700 (PDT)
Received: from ?IPv6:2601:152:4000:330:3247:3d48:ad8d:5e40?
	([2601:152:4000:330:3247:3d48:ad8d:5e40])
	by smtp.gmail.com with ESMTPSA id b2sm7214641qtg.88.2021.10.30.20.18.28
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 30 Oct 2021 20:18:28 -0700 (PDT)
To: blinux-list@redhat.com
Subject: have any of you mannaged to successfully install linux alongside with
	windows?
Message-ID: <8e1506f5-960a-0c44-4008-087d87da5e7d@gmail.com>
Date: Sun, 31 Oct 2021 08:48:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello folks,

I have been playing with Linux mint and Accessible Coconut for over 24 
hours. I am getting to like this system. However, When I contemplated 
installing on my hard disk, I found the installation process a little 
confusing and scary. I always reverted back and aborted the installation 
to prevent an unintended damage to my windows operating system.

If any of you have successfully managed to install linux alongside with 
windows on the same hard disk, please advise me on how to go about it 
safely.

Regards,

Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

