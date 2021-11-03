Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FB64442A3
	for <lists+blinux-list@lfdr.de>; Wed,  3 Nov 2021 14:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635947382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eZ2HUJGFyxQHQVajZDRgkqRXi8MhL4A+5Sqt0Ojeu08=;
	b=jCCGh5R3S3OCzPTLxzuJq+SgLOq5jAjZ2nlmtdP7nOEMfm2+zyAu5LzsxjWklN6uHTcbD6
	NYHvYOl4TbQvBHc/CXRoYKupxcBy814QcjONkYsGovh++3GlSLeWuxIb7XapgBq4WiHh7v
	hPoGOlqzR4nyeQzlWwIwdSQxbxh2hE4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-426-3o6tElIzPiWmVdlLxYAJiw-1; Wed, 03 Nov 2021 09:49:40 -0400
X-MC-Unique: 3o6tElIzPiWmVdlLxYAJiw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7731A10A8E00;
	Wed,  3 Nov 2021 13:49:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3BE2619EF9;
	Wed,  3 Nov 2021 13:49:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2F3A24EA2A;
	Wed,  3 Nov 2021 13:49:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A3Dn6db029715 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Nov 2021 09:49:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7A1F24010FF7; Wed,  3 Nov 2021 13:49:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7506040CFD07
	for <blinux-list@redhat.com>; Wed,  3 Nov 2021 13:49:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5AEC718A6534
	for <blinux-list@redhat.com>; Wed,  3 Nov 2021 13:49:06 +0000 (UTC)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
	[209.85.219.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-252-46t6om3GPDes18aq3oB_OQ-1; Wed, 03 Nov 2021 09:49:04 -0400
X-MC-Unique: 46t6om3GPDes18aq3oB_OQ-1
Received: by mail-yb1-f169.google.com with SMTP id o12so6603931ybk.1
	for <blinux-list@redhat.com>; Wed, 03 Nov 2021 06:49:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=p7AIk5aWGpNG7DihTcXXuA6X4SHmFJxfs6R3b7q+CmY=;
	b=5+asm17lFt+K2M/xQNC6YqfK+HFPd+qt/1u6LtMALObCb1OFGp84qwocYvowofkycQ
	6FkzpQMdQ3GZxi2p2iZUG6DQzaF4ogB8w2ZfBRR+uj63F+MAKi0W3hnzUCrwkABqzSBO
	gg7rYtX83IhojaFcaxjLYoZaJZEc7oadWYPZ5yxLIE2WpB2Gp2b0rRsRpVwLwI1lkZ9R
	zEJ6fuxDpMyta47QO9R9/wtHJgLKUAm+JoI5EVsD3GufCD7niYMLkA7Oiec6YiItD7N/
	p1XUGdxJsJY72Y9Jgq7Hr6qEw7dK1xSUXsI8/iDW4SiJYyR7tRI2iMeh5vbaBkGD6xoZ
	tLPA==
X-Gm-Message-State: AOAM532Pd5jh9FcODVAolt80eXZlRMnnzpl4y88AsUQLaU7xyjOEObeU
	8rtqfkaV8F2ZhnkThb/qHsxdvlKHuzkumzQ7uGpcubMNGOM=
X-Google-Smtp-Source: ABdhPJzvJXPDGzgeZTf+ngMfFDpQmI45S68pTIDTyhPJFJL7+A5ve4kQr8kh2j9bulFwYFa8J5wZ60uA3Zm69zPzz3Q=
X-Received: by 2002:a25:2a89:: with SMTP id
	q131mr12154501ybq.436.1635947343125; 
	Wed, 03 Nov 2021 06:49:03 -0700 (PDT)
MIME-Version: 1.0
References: <E5949DF0-363D-4D79-9E4A-5CB468223B5C@icloud.com>
	<1f2e65f8-3d25-a02f-39d3-59e80f4270af@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<936cb6cb-f5da-20f3-be49-5c788d24caaa@gmail.com>
	<CAGJxbF6OOu6AygAWQm1+mi9SCAsNshWYSTcooNHzG+n7PQiXPA@mail.gmail.com>
	<36bd3345-96bb-1017-ea91-515a51d27b23@gmail.com>
	<CAGJxbF5-71mrqr8EgJjRnbFHQCUPYTvFw8meCeViu1TTKCnHHw@mail.gmail.com>
	<8749162f-769e-3979-268e-8b3a836ba2da@gmail.com>
In-Reply-To: <8749162f-769e-3979-268e-8b3a836ba2da@gmail.com>
Date: Wed, 3 Nov 2021 08:48:51 -0500
Message-ID: <CAGJxbF5F2OT7WapWcSY7diV41_jvQ5NBWf_fZdCo3LK-zotrMg@mail.gmail.com>
Subject: Re: FYI - The Yggdrasil Screen Reader Project
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, I agree with this. But this isn't my project, so the opinions of
Orca's lesser ability are solely that of the person programming Igdrasyl.
Devin Prater
r.d.t.prater@gmail.com




On Tue, Nov 2, 2021 at 9:41 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> The choice isn't what bothers me ... I love choice, having the freedom
> to choose. It's the trash talk that so clearly detracts from the
> entirety of the concept. Why is this so hard to understand? This is not
> a competitive game, it's not my team is better than your team, your team
> sucks and mine is better, your choice is the devil and mine is the one
> true god. It can't be this way. The choice is between free and open
> source options, and it is even possible to choose both, since they are
> each better suited to different workflows for different people, and it
> is possible that my personal workflow could benefit from having both
> options available at different times. Leave the trash talk in the boxing
> ring, where there can be only one winner. If both concepts can win, then
> both should try to be as good as they themselves can be instead of
> trying to make the other look bad in order to give a false sense of a 1
> or 0, true or false, a or b choice that simply doesn't exist since it is
> perfectly logical to choose all of the above.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

