Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A43C948FB25
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 06:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642312500;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RuKb2lGfGtV/f9ZlQxX9VjF3lRB8BLoBxoYNtNjxlao=;
	b=NCd9sZLdikEHFW1bqOimGslBu3VOGDoRjk+aABb7YYzVMBnlcuLXMPbd8oVek/1TapyVlo
	wwm2Sww9X6FbTGWUZzma7tAv87YVq1AzIjvPSTGclOBIo2zix7P+9yx6m8vVu+4IHu83SK
	7UNRe9IRrL57YWNcON91FI5yX4HXP9c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-dzFom5l7OKabX7Yhv8vKzw-1; Sun, 16 Jan 2022 00:54:57 -0500
X-MC-Unique: dzFom5l7OKabX7Yhv8vKzw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0029310066FE;
	Sun, 16 Jan 2022 05:54:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECEED1053B39;
	Sun, 16 Jan 2022 05:54:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 44AC118095C9;
	Sun, 16 Jan 2022 05:54:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G5sYrE025010 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 00:54:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D7C56492CA7; Sun, 16 Jan 2022 05:54:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3929492C3B
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 05:54:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B9B9F85A5B5
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 05:54:34 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-489-jyiV6sDRNpWDePTQqcyw7A-1; Sun, 16 Jan 2022 00:54:32 -0500
X-MC-Unique: jyiV6sDRNpWDePTQqcyw7A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jc4480gB0z3lVb
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 00:54:32 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jc4476kNGzcbc; Sun, 16 Jan 2022 00:54:31 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jc4476MGJzcbC
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 00:54:31 -0500 (EST)
Date: Sun, 16 Jan 2022 00:54:31 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No Orca in Fedora
In-Reply-To: <B0B90163-0798-4BFA-97E5-D970C2674C7A@icloud.com>
Message-ID: <b6b5161e-627c-718e-48ce-ec5a43592af9@panix.com>
References: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
	<ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
	<B0B90163-0798-4BFA-97E5-D970C2674C7A@icloud.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I need to learn a bit more about kickstart file syntax, but once done
maybe I could roll one of these for all the Fedoras without orca on them
and share it on a web site.  It's possible to use a url with a kickstart
file on it and install a system that way too.  I did this with ubuntu
several years ago.


On Sat, 15 Jan 2022, Linux for blind general discussion wrote:

> OK thanks,
> I?ll just delete the Fedora VM. Its not worth the hassle.
>
>
> > On Jan 15, 2022, at 10:32 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > It won't.  Very few flavors of Fedora have orca in them.
> > fedora-workstation I think is gnome has orca but so far as I now know,
> > that's the only spin with orca in it.
> > How to get around this would be to have a kickstart file made for a
> > fedora-workstation spin install.
> > Once that kickstart file is made, you'll have to understand kickstart file
> > syntax and the post-install command.
> > You'd want to put a post-install command in that installs orca and all of
> > its dependencies and then use the kickstart file you modified to install
> > your desired spin.
> >
> >
> > On Sat, 15 Jan 2022, Linux for blind general discussion wrote:
> >
> >> Hi,
> >> I downloaded Fedora-Cinnamon-Live-x86_64-35-1.2
> >> Super+Alt+S did not start Orca, so I pressed alt+F2 and typed orca and hit enter, but got nothing.
> >> So I then pressed alt+ctrl+T and typed orca in the terminal. I used my phone to read the screen to get orca command not found.
> >> Whats going on?
> >> Thanks,
> >> Rob
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

