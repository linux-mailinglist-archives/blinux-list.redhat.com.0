Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 1D9F41190DD
	for <lists+blinux-list@lfdr.de>; Tue, 10 Dec 2019 20:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576006825;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KS4nMaqLduN0q64N/V6K2bqHAlWECvFlxpOMxHNfOVo=;
	b=JF/3IxsqTKxS54F+v3FZZGJQfdGiHc6w2ZooLYkI85QfEQcYhLGZHN2dEAB+L7Jy7fVGpy
	lrx7obrg+LGP79D/zziLxcF28s2s1VjdrDul/bvrgk/KT3L9MM5OGt2xlxpZ4cza9Ldz4B
	cHMzAbR2CQ+GeZf1SkwNBFfSWv15a6Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-OVPlB8WdM7OMEWHZX9OPhQ-1; Tue, 10 Dec 2019 14:40:21 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 888EADB62;
	Tue, 10 Dec 2019 19:40:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15B5C5C1B0;
	Tue, 10 Dec 2019 19:40:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 35F6818089C8;
	Tue, 10 Dec 2019 19:40:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBAJeBso009675 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Dec 2019 14:40:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 29C931015022; Tue, 10 Dec 2019 19:40:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2219610CD7C3
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:40:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06EBB8F09A8
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 19:40:09 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
	[209.85.208.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-410-78XbdYX4O9Gzo7iycej-9A-1; Tue, 10 Dec 2019 14:40:06 -0500
Received: by mail-lj1-f181.google.com with SMTP id j6so21274959lja.2
	for <blinux-list@redhat.com>; Tue, 10 Dec 2019 11:40:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
	:references:user-agent:mime-version;
	bh=gVNJ6Y/v1TE0SDo/XrYvwYJ4OeNDEZ2gO0qtO+kmzmM=;
	b=b9mgzGp/J9IViediUSZbsULx179Ix9WoMHtOwD9Jcqqr7Za6tO8XgH0b+86FaNEGxq
	0I+NqSDq9bDdRySAtvf99MQsw+G5iKE5/8t+x+Ik/Ha9V8Mxi6s54gYdzkEuuk09yroD
	dLoBiS1CnKLTOI7S4XZKXW0T1ntJkyAgs3Nc1YmH5OjLUKaBRPQzT+TT9/79f7LnNoSg
	+HhsVe1YRBDJp5XmRe5bYSFv0eINSkRscg7yJ83uTants0FOvPaaZetb127cEmPyocBd
	0+XLS2PmzeAXLGCsvrkLNQluDtG585jX422xmfmK7LrFrk4A1zD50+EwvZ921QlK8n4M
	bdpA==
X-Gm-Message-State: APjAAAUbvZV5BMN+IS5iPZefZbNHh1oBLfL3tBmN7UxBIPpqw7kMENi7
	5MSmKoZAzOz5k12Y1R/Alm4QG0+K
X-Google-Smtp-Source: APXvYqwmwsbZ10fsBpWps86JIvukKZvYnaA3toFvNoE6TR/fjlBECT+boYwQ9npu4dSw14k/j3ZX5Q==
X-Received: by 2002:a2e:9f52:: with SMTP id v18mr18954383ljk.30.1576006805163; 
	Tue, 10 Dec 2019 11:40:05 -0800 (PST)
Received: from [192.168.1.143] (81-229-120-213-no70.tbcn.telia.com.
	[81.229.120.213]) by smtp.gmail.com with ESMTPSA id
	u24sm2250433ljo.77.2019.12.10.11.40.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 10 Dec 2019 11:40:04 -0800 (PST)
Date: Tue, 10 Dec 2019 20:40:04 +0100 (CET)
X-X-Sender: tobvin@Owner.localdomain
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google high security and linux command line email programs
In-Reply-To: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
Message-ID: <alpine.DEB.2.21.1912102034360.16@Owner.localdomain>
References: <alpine.NEB.2.21.1912101420310.6447@panix1.panix.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-MC-Unique: 78XbdYX4O9Gzo7iycej-9A-1
X-MC-Unique: OVPlB8WdM7OMEWHZX9OPhQ-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBAJeBso009675
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
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi,
I'm writing this e-mail in Alpine from my gmail adress using an in-app 
password. No problems whatsoever. You're prompted for the password at the 
start of the session, as well as the first time you send an e-mail during 
that session.

No idea if Google actually detects my client, or what would happen if I 
selected another program.

hth,
Tobias


On Tue, 10 Dec 2019, Linux for blind general discussion wrote:

> Has anyone here gone high security with google and generated an
> app-password for their command line email apps?  If so, which apps?
> I have and can use a few different apps but really want to know what
> google will be limiting me to with two-factor authentication and an
> app-password before I enable two-factor authentication.  If there's no
> apps this can be done with, no point enabling two-factor authentication
> and trying to generate an app password for any of these.  When google
> security is after users to enable higher security and google recognizes
> linux devices have been and are likely to continue being used on an
> account those messages ought to include a list of apps that will work in
> linux.
>
>
>
> --
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

