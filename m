Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C9F4BC3C1
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 01:54:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645232083;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ONrtHByVUZb+R6owpZNq7la+8LXYDwes1zgHduWltZY=;
	b=QWVeU0hnMz6OXnW5Tr2GBAnQiHIawWSXAnbpVtWvlWnWaeuJmZ7jVjUEHaZMrEMOGwJwfr
	8qIzqvH/IZyy5UVPMWSZ1BImW3O5NFIPsJ/bfnSxmIm5T8erUXjgPSBS1AehZQla2gWM/h
	Qp9TxwrrXC2UXaJBe7SBJNMHSZ0WDfY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-464-jCbDuN2jO4Oz_pNuBhSxUg-1; Fri, 18 Feb 2022 19:54:39 -0500
X-MC-Unique: jCbDuN2jO4Oz_pNuBhSxUg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9CC39801ADA;
	Sat, 19 Feb 2022 00:54:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3809C7AB46;
	Sat, 19 Feb 2022 00:54:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EA3024BB7B;
	Sat, 19 Feb 2022 00:54:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21J0pvvj021844 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 19:51:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E2ACFC07F51; Sat, 19 Feb 2022 00:51:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE5BFC080BF
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 00:51:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C5273811E76
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 00:51:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-44-tlMdDo-kPgakTC4VRiRDDw-1; Fri, 18 Feb 2022 19:51:54 -0500
X-MC-Unique: tlMdDo-kPgakTC4VRiRDDw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K0qlG0tQ9z16Fd
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:51:54 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K0qlG0VpTzcbc; Fri, 18 Feb 2022 19:51:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K0qlF71RVzcbP
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 19:51:53 -0500 (EST)
Date: Fri, 18 Feb 2022 19:51:53 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mutt or Alpine
In-Reply-To: <20220218165833.6b951ab0@bigbox.attlocal.net>
Message-ID: <7fbdbde4-ef8e-c8c0-27af-6c882a5c5a73@panix.com>
References: <e65d0f59-7906-79ba-14d2-dca16d712667@gmail.com>
	<f54d231-df3b-411e-fff6-5d526ac1677c@brandt-slint.local>
	<20220218165833.6b951ab0@bigbox.attlocal.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Mutt comes with the fleacollar.sh script that gets much of the setup done
though it's a little weak on setting up gpg2.


On Fri, 18 Feb 2022, Linux for blind general discussion wrote:

> Tim here.  I've used both mutt/neomutt and alpine (and pine back in
> the day).
>
> The big advantage of mutt/neomutt is power/flexibility.  I've found
> that it's less of a mail-reader and more a toolkit for creating your
> custom mail-reader experience from the parts that it brings to the
> table.  And everything is configured using the ~/.muttrc file alone
> (no nice user-interface for tweaking settings) which can be daunting
> if you don't have a solid grasp of what's going on under the hood.
> It plays well with external tools like notmuch for indexing and your
> mailcap definitions for using external programs to open attachments,
> or using urlview/urlscan to search a message-body for URLs to open.
> It's still not great at multi-account, requiring a lot of manual care
> in setting it up (this is my biggest frustration in using it, and the
> main reason I don't use it more frequently).
>
> As far as *easier*, alpine wins pretty hands-down.  It has a
> settings-editing interface for configuring pretty much everything.
> Like Pico/Nano, it also keeps the list of commands along the bottom
> of the screen, making it more new-user friendly.  It has a concept of
> "roles" which I haven't explored recently, but it sounds like a way
> to manage multiple accounts better than mutt/neomutt does.
>
> -tim
>
>
>
> On February 18, 2022, Linux for blind general discussion wrote:
> > If you want to use an email client with Orca, stick to Thunderbird.
> >
> > I find Orca unwieldy in the terminal anyway.
> >
> > If, however, you wish to do so with Speakup or Fenrir, I personally
> > prefer Alpine.
> >
> > Why? Simple. I don't know Mutt at all.
> >
> > Warm regards,
> >
> > Brandt Steenkamp
> >
> > Sent from the Slint console using Alpine
> >
> > On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
> >
> > > Date: Fri, 18 Feb 2022 16:00:22 +0000
> > > From: Linux for blind general discussion <blinux-list@redhat.com>
> > > To: Linux for blind general discussion <blinux-list@redhat.com>
> > > Subject: Mutt or Alpine
> > >
> > > So I'm using Mutt, but...
> > >
> > > What does Mutt have over Alpine and vice versa, why would I use
> > > one over the other?
> > >
> > > Mutt seems faster to me, but Alpine seems more user friendly
> > > without making temporary files while composing a message (unles I
> > > can tell Mutt/Neomutt to delete those automatically
> > >
> > > So is there a consensus of which is the easier choice to use with
> > > Orca?
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
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

