Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EC538461B17
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 16:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638200185;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JLfUslHGCorzziF1PL62H2KVilRPaAhUNEHEDc6oqCo=;
	b=HrEZ8BKKpgbVIqlQvYqhvBrE6tytEmLuazB8dY5FSKZ9iZGKobkXHVQw0L6VUamK+XsVi5
	FkE/4jILHLKgXIQ46147OGZZXtY4p1t8tnyC3Frx6Lk4mJLeSFxga+Iqli3SCvxMY6ZB23
	PYeOg7GrMlbBb9CHbvEMDOO6AIQP5LI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-374-vM_3ynzrPEafByTskRSJbw-1; Mon, 29 Nov 2021 10:36:23 -0500
X-MC-Unique: vM_3ynzrPEafByTskRSJbw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ABC9710168C7;
	Mon, 29 Nov 2021 15:36:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 073B8694BF;
	Mon, 29 Nov 2021 15:36:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44CA41809C89;
	Mon, 29 Nov 2021 15:36:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATFaDWQ011620 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 10:36:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0B22F492C3B; Mon, 29 Nov 2021 15:36:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 067FE492C38
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:36:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE1EF8022F4
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 15:36:12 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
	[209.85.219.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-180-rwzOc3oAPkStLXcsXwqH6w-1; Mon, 29 Nov 2021 10:36:10 -0500
X-MC-Unique: rwzOc3oAPkStLXcsXwqH6w-1
Received: by mail-yb1-f174.google.com with SMTP id d10so10547133ybn.0
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 07:36:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=JlHqRc/g6I5CVoUeMa9eAW6W68VH6z6Di8BsrRvftj4=;
	b=XqAFfHjvfSA5UGXhM0nL0lKSqOWiCSNLF/6WigUF0NDAwQyJZq7qrbpdW0fYvcZDji
	i3P/4RT/uOQbH2Hegzf9cVF8AKZuWG+nKPcVa59bIR+aMKsVHStYCwJXqIvnjPBLkjjv
	BdkQJocGl6HPE8sA12t/v0hIUrZEZrG+7v2DYZc+1nzo84UwIMJlV+hECLaURe99Blpp
	RsfSSI8wMzRnAami0knQ9GrAi8WtEmpcogytmsAyDjwsu9NQ0fEzW+KV0nDGfjlWDkvd
	j+Z4cYDXnBm+HzSIJ8M7X6lEEkZi8QzVR+V9tl0OO1f/duxjk5Dft9F5fxrwfoaIk3bf
	W2pQ==
X-Gm-Message-State: AOAM532J+mrEfgA5szLIOfypipO46NVut6w2/A07uUmKG74WPwHnHqn1
	H4BDAI0NG7BG1UYZLtlCybbTJJRRG+E7dsd9tmf9xa/t3dg=
X-Google-Smtp-Source: ABdhPJxMdK2Oha49WDzP3Y5prrW/ky7tpV2hX2grvNwUvDlo5BwWdhjGzEi8A2EMRF9qEEuqKVAtxgw2SZtUjt3idAQ=
X-Received: by 2002:a25:518a:: with SMTP id f132mr7697384ybb.749.1638200169726;
	Mon, 29 Nov 2021 07:36:09 -0800 (PST)
MIME-Version: 1.0
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
	<4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
	<4295d4fd-03f6-1a8a-42a6-1ad99b495fee@gmail.com>
In-Reply-To: <4295d4fd-03f6-1a8a-42a6-1ad99b495fee@gmail.com>
Date: Mon, 29 Nov 2021 09:35:56 -0600
Message-ID: <CAGJxbF5RHXvEaiKZ_fJ8ymX9LNu=FdFukvA591Ov4JKq3O+NXw@mail.gmail.com>
Subject: Re: --force-renderer-accessibility not working lately
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

if you have a .profile file, put it in there instead, see if that works.
Devin Prater
r.d.t.prater@gmail.com




On Mon, Nov 29, 2021 at 9:33 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Hi,
>
>
> I have it set in ~/.bashrc and still no go.
>
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Fedora machine, using Thunderbird
>
> On 2021/11/29 17:25, Linux for blind general discussion wrote:
> > Do you have the right environment variables set? In my .bashrc I have
> >
> >
> > export ACCESSIBILITY_ENABLED=1
> >
> >
> > In it. That makes Chromium based things work on Arch/Ubuntu for me
> >
> > On 11/29/21 15:13, Linux for blind general discussion wrote:
> >> Hi all,
> >>
> >>
> >> I have tried this in both Slint and Fedora, and I've not had any luck
> >> making the --force-renderer-accessibility flag work with either
> >> Google-Chrome or Skype, both applications for which this flag use to
> >> work very well in the past.
> >>
> >>
> >> Am I missing something, or am I just out of luck here.
> >>
> >>
> >> Unfortunately, I actually need this to work, otherwise, I'll just
> >> have to use the MacBook to do my job.
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

