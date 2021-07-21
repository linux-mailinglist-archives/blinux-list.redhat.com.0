Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 250F03D16A5
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 20:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626893389;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BOSClLubJZZFk5PmkQt4iwtOOszGOMvl84mkgjfrDKM=;
	b=EI3UIDiu8I1Yihhi+t4Ae7N48szmpNPphqrfksJ8ricZh+x60FJzWxw/E4fN3ZT7xmV9GA
	TRj8jcrFeA4drJZoSpmzFF3Vo8zmK5v+fRfGvyEIjXPkCvPu7tmlf2mCdQEMeHudhy4t+t
	zIYI7o0N80eezCX++fTpvEtRsLwsEBI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-TO9spPhoNxeieu4O36Y7Lg-1; Wed, 21 Jul 2021 14:49:47 -0400
X-MC-Unique: TO9spPhoNxeieu4O36Y7Lg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 634AA802929;
	Wed, 21 Jul 2021 18:49:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A1DA95C1BB;
	Wed, 21 Jul 2021 18:49:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F35BD1819AC9;
	Wed, 21 Jul 2021 18:49:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LInPNG010432 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 14:49:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 91A25112D439; Wed, 21 Jul 2021 18:49:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D87E10D16B8
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 18:49:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A5A9866DF8
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 18:49:21 +0000 (UTC)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-202-RwJ_5FJwONK3VqC-38fhRw-1; Wed, 21 Jul 2021 14:49:18 -0400
X-MC-Unique: RwJ_5FJwONK3VqC-38fhRw-1
Received: by mail-io1-f45.google.com with SMTP id u7so3510074ion.3
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 11:49:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=b16vn5snbT0nZjJqiCycaBZgEn4Dn5wUGW8HlSBzuTg=;
	b=kaP+gWh6KY7y1X1SGy/BqjMW5ATJ3BvHRrUvdgvb68UKAku3a4MQxuO1vyjVfykliR
	Khszy8bagdHZ9TyUD4sZJVcOEmAEA3TEu+BHhXy20mLh5A2l2z6BPJSCSKjfsfqabRTq
	D1yFJE6qNKpq6/i+m3UhgcldFbiZHfQqNmblzmKSblICebyxB6W2Ho4URVXdmYsmWUxB
	UA2YKLHB1bNJub/xz1QlBpk1HD9xFOBh6ZFZlc4B2EedgrDziFMQDORLkHD1CeGb5WfY
	7/Opdt/+7ub83Ox9Cu0zF6EHrS8rAlB4vyUuRHUftFN9z5KWbeuAowtobCstcqfIBatd
	4TUQ==
X-Gm-Message-State: AOAM533WmFnWvDw/BCg2sHJvgGaSRmUW8gUSa6S906Ml8i9v3+E/Mirr
	XREukvbIbaePPPpPoj08MSz/yme/8bfuzvL/YvR3YcpV
X-Google-Smtp-Source: ABdhPJz6hchpnNTt6pqWB1BYlF817VRk03AO0o2mm5L1B0MDDAzQDNcXu0owJT9HXuhg1EiLs0xWtZsnjwWtXD6Wpm8=
X-Received: by 2002:a5e:9306:: with SMTP id k6mr28938314iom.157.1626893357826; 
	Wed, 21 Jul 2021 11:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
In-Reply-To: <16cb9466-0a59-0cb0-3b1f-854c02ae7f63@gmail.com>
Date: Wed, 21 Jul 2021 13:49:06 -0500
Message-ID: <CAGJxbF7H0Y=r8beqN8BGoYS=7cV-6LOr8av+ytRfbD+tXaDmBw@mail.gmail.com>
Subject: Re: Solus and Chromium breaking
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

When Chromium stuff breaks like that, hit Insert + H, then F2 to bring up a
GTK dialog. Doesn't matter, just close it. Something breaks with focus when
stuff like that happens.
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Jul 21, 2021 at 12:03 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> So, grabbed Solus 4.3 and ran into a few weird oddities with Mate.
> Nothing insanely deal breaking, bar one or two things...
>
>
> 1. For some reaso, the Mate DE doesn't have the orca shortcut set. This
> isn't really an issue since alt+f2 and Orca takes care of it.
>
>
> However...
>
>
> 2. Chromium doesn't seem to respect flags set. And it breaks the
> installed system to the point where it's locked up when quitting a
> Chromium app
>
>
>
> 3. After upgrading, Firefox lost the browse/focus mde messages
>
>
> So is it just me using Solus 4.3 here and anyone got any ideas, and no
> 'use another distro' is not a valid answer. I've already suffered one
> borked system due to Ubuntu being inane today and the terminal suddenly
> not being a thing mid version upgrade, so...
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

