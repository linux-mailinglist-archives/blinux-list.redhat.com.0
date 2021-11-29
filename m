Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF2B461B7D
	for <lists+blinux-list@lfdr.de>; Mon, 29 Nov 2021 17:02:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638201743;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0fv+ZE12mE5TRts/UKBSN61tYwCddzXWBk8RdAOTVa8=;
	b=eOgXoV5ErZTrMLQdjJziXUl+VyKy+BUc9pr1N1fwJBhPye06DEXMt1/izC9b0xXqvZ+HOT
	/ohDwiUpt03x3T2ddkFowXwVP9e1VZ9biX8VQK2b+PCZRIqdHkSocnk2L2/nr0qWgngrAh
	ZdZn0EKL+yhlav7r90WdiUoLYFtLmgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-106-HuDbfIu3NPKh9l1kyuaA0A-1; Mon, 29 Nov 2021 11:02:19 -0500
X-MC-Unique: HuDbfIu3NPKh9l1kyuaA0A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D11583DEE1;
	Mon, 29 Nov 2021 16:02:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E351E60BF4;
	Mon, 29 Nov 2021 16:02:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D17F51809C89;
	Mon, 29 Nov 2021 16:02:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ATG26bN013775 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Nov 2021 11:02:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A19654047279; Mon, 29 Nov 2021 16:02:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D7BE4047272
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 16:02:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83EC710665A5
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 16:02:06 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-553-LXJOhmv5Mpif-UheF8VPsQ-1; Mon, 29 Nov 2021 11:01:59 -0500
X-MC-Unique: LXJOhmv5Mpif-UheF8VPsQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J2qqC2yqTz3llf
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:01:59 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J2qqC2llrzcbc; Mon, 29 Nov 2021 11:01:59 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J2qqC2LdkzcbP
	for <blinux-list@redhat.com>; Mon, 29 Nov 2021 11:01:59 -0500 (EST)
Date: Mon, 29 Nov 2021 11:01:59 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: --force-renderer-accessibility not working lately
In-Reply-To: <CAGJxbF5RHXvEaiKZ_fJ8ymX9LNu=FdFukvA591Ov4JKq3O+NXw@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111291059420.27900@panix1.panix.com>
References: <230ecdb2-c49f-75f1-1501-1989c4257a4b@gmail.com>
	<4535e52f-a043-b8fa-696c-9908f73a1523@gmail.com>
	<4295d4fd-03f6-1a8a-42a6-1ad99b495fee@gmail.com>
	<CAGJxbF5RHXvEaiKZ_fJ8ymX9LNu=FdFukvA591Ov4JKq3O+NXw@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

also remember silicone chips are like batteries.  While in use like
batteries those wear out.  In the wear out process, bad spots in the chips
get uncovered and burnt through.  This is why an error may appear
temporarily then disappear for no known reason.


On Mon, 29 Nov 2021, Linux for blind general discussion wrote:

> if you have a .profile file, put it in there instead, see if that works.
> Devin Prater
> r.d.t.prater@gmail.com
>
>
>
>
> On Mon, Nov 29, 2021 at 9:33 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > Hi,
> >
> >
> > I have it set in ~/.bashrc and still no go.
> >
> >
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent from the Fedora machine, using Thunderbird
> >
> > On 2021/11/29 17:25, Linux for blind general discussion wrote:
> > > Do you have the right environment variables set? In my .bashrc I have
> > >
> > >
> > > export ACCESSIBILITY_ENABLED=1
> > >
> > >
> > > In it. That makes Chromium based things work on Arch/Ubuntu for me
> > >
> > > On 11/29/21 15:13, Linux for blind general discussion wrote:
> > >> Hi all,
> > >>
> > >>
> > >> I have tried this in both Slint and Fedora, and I've not had any luck
> > >> making the --force-renderer-accessibility flag work with either
> > >> Google-Chrome or Skype, both applications for which this flag use to
> > >> work very well in the past.
> > >>
> > >>
> > >> Am I missing something, or am I just out of luck here.
> > >>
> > >>
> > >> Unfortunately, I actually need this to work, otherwise, I'll just
> > >> have to use the MacBook to do my job.
> > >>
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

