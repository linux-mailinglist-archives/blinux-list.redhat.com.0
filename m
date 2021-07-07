Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3D5BD3BE92C
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 16:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625666412;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=STdZ34b1HeTsYiwHq26yXpdF9TliSqr7U+FT/3zcA/s=;
	b=GcBy7JMssIbW7OhexvZtWl1Uh8lTHu3AfcZTW1tylBolDDODjz0f/xfDw0uJqF9nIccoi2
	b/k2N8q/8z4tobmHatVWuuXnBjOJuIVi4auZX/DjFxS0RPoVZAGA5tOmenG3NH8FM82fWl
	guRVP8J+hQQf0qyTHu4F46yqMcNaMzk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-126-2O7lQ_UOOxGqURzR1qbXyw-1; Wed, 07 Jul 2021 10:00:10 -0400
X-MC-Unique: 2O7lQ_UOOxGqURzR1qbXyw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB8F680414C;
	Wed,  7 Jul 2021 14:00:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0B5D60BD9;
	Wed,  7 Jul 2021 14:00:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C60881809C99;
	Wed,  7 Jul 2021 14:00:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167Dxxf0021882 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 09:59:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0BFF5100913C; Wed,  7 Jul 2021 13:59:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 07AAD100915D
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:59:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A026518A0160
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:59:56 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-281--kLHG-yiOcWrQIZjvqhs8Q-1; Wed, 07 Jul 2021 09:59:54 -0400
X-MC-Unique: -kLHG-yiOcWrQIZjvqhs8Q-1
Received: by mail-qt1-f175.google.com with SMTP id v10so2078396qto.1
	for <blinux-list@redhat.com>; Wed, 07 Jul 2021 06:59:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=yWqQcN+ZsI/bb3IdVtzRjvpFVqYmRjITQxm+zUpKKHI=;
	b=lZmKJrJPQfGeMtV7g83Rc7MHhU4CEiSpHrJWqMDvxagD5LmnOmq35/rI1Taxb5hY8e
	CHuRAgmHcd2PW+lIeca/9fc3k+6rp0PQLaW652x1xueGD36MTk+6W+y1eADqU6blOqdR
	oc7QQKvGCcxeKURTAN4gWmkAFid+WcX4AIZO902+9fjTiTbL/3YPQ0shhtOU+EHNPW2I
	OzHmo3bs6z/L0ItL2LponC3dd7YEsmFr6/ggrqxa1lksm0dQGuOScFKo89iqLfGEDOcs
	08A/7FOHJvlRsiC2SYtq4EDqkWh0UpQ09r89tYr2l2BEhxGw1RK5gN47yWNxchEshW0q
	HKUQ==
X-Gm-Message-State: AOAM5309WpITlj2ffdTuXxH0EyDquF8S5c2qyTlgvsvGUSh9Rj7A4pF5
	iguYIqfdj0doZyYd4Y6fOqDJj3gY4BWVHqD/2dx8adNNb/U=
X-Google-Smtp-Source: ABdhPJwwHuG+i1U9kVTfugNlZdeAGO5+2fAk79w8FH1p7NWKwGPKcZIr6qX7lpPR/lWjmeFp+PEA6txwTIfDPQbpYeM=
X-Received: by 2002:ac8:5210:: with SMTP id r16mr5890085qtn.6.1625666393969;
	Wed, 07 Jul 2021 06:59:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e084:0:0:0:0:0 with HTTP;
	Wed, 7 Jul 2021 06:59:53 -0700 (PDT)
In-Reply-To: <CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
Date: Wed, 7 Jul 2021 13:59:53 +0000
Message-ID: <CAO2sX32rpBVPz5K2ScXB55V8Ki5jWZH21xMwVFPN2tPHi4EOxQ@mail.gmail.com>
Subject: Re: Starting linux again
To: blinux-list@redhat.com
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

Regarding Debian, while it's true that Debian Stable tends to get
rather outdated by the middle of a Debian development cycle, using
Debian Backports or Debian Testing mostly resolves this issue and in
my experience, Debian Testing is at least as stable as the typical
short term support release of distros that have them.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

