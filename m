Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 19BC31981D0
	for <lists+blinux-list@lfdr.de>; Mon, 30 Mar 2020 19:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585587772;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xNDc+vTmM2FDQaKF0M4gDHRdpMKZ+lQji9HAuFnAwOU=;
	b=ACvVchMXGJ3xuu8GCzkZ8I37w5AuJ+BCO8rlELl9tFOmbFWEAaBtbb5y9EoQLtHrC3qINt
	9BNmUGNHMe+oUXEXz/cyfJxv2nRJzhlVWGisQpEWJi9GmKBYpfKZEaetbtfrjx5VYWIzjf
	UaxV4zM7TfmA6ODu97XnD7EuKIN15eo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-xEFE3cQ2P9O_NJd_rll5gw-1; Mon, 30 Mar 2020 13:02:24 -0400
X-MC-Unique: xEFE3cQ2P9O_NJd_rll5gw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C71C218B9FA5;
	Mon, 30 Mar 2020 17:02:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ECA2F96B73;
	Mon, 30 Mar 2020 17:02:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1205218089C8;
	Mon, 30 Mar 2020 17:02:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02UH27VI001483 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Mar 2020 13:02:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 25151D0175; Mon, 30 Mar 2020 17:02:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2155AD0174
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 17:02:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F714185A795
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 17:02:05 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-106-ouaxoF3KMr2acXHR41YmPA-1; Mon, 30 Mar 2020 13:02:02 -0400
X-MC-Unique: ouaxoF3KMr2acXHR41YmPA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48rdzZ2qBPz1gZJ
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 13:02:02 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48rdzZ1ZDtzcbc; Mon, 30 Mar 2020 13:02:02 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48rdzZ164HzcbW
	for <blinux-list@redhat.com>; Mon, 30 Mar 2020 13:02:02 -0400 (EDT)
Date: Mon, 30 Mar 2020 13:02:02 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: installing jenux
In-Reply-To: <6591e7c6-972c-6e91-6138-d3f5edcd7a24@gmail.com>
Message-ID: <alpine.NEB.2.21.2003301301520.14777@panix1.panix.com>
References: <alpine.NEB.2.21.2003271212120.25315@panix1.panix.com>
	<6591e7c6-972c-6e91-6138-d3f5edcd7a24@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02UH27VI001483
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso.sha512
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2020.02.03-x86_64.iso
sha512sum -c Jenux-2020.02.03-x86_64.iso.sha512
On Mon, 30 Mar 2020, Linux for blind general discussion wrote:

> Date: Mon, 30 Mar 2020 12:52:31
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: installing jenux
>
> can I please get the url to download the latest iso image of ginux?
>
> the download on your site times out
>
> Hank
>
>
> On 3/27/2020 9:20 AM, Linux for blind general discussion wrote:
> > During a jenux install jenux uses fenrir for a screen reader if
> > accessibility mode is enabled.  No boot parameters enables accessibility
> > mode.  During jenux install, much fast text will be spoken by the screen
> > reader unless insert-f4 is used to toggle speech off and on.  I usually
> > toggle speech off until I hear the computer beep and then I know jenux
> > installer needs some input.  Then I toggle speech back on and inspect the
> > screen and answer questions.  In the mate install path, there's no beep
> > before the system asks for the user name and password for the first time
> > and this is after all packages have been installed.  Those questions could
> > be moved ahead of package installation and answers stored in and retrieved
> > from variables but that's not now the case with this installer.  I got a
> > mate install with jenux and you log in on the console which is good with
> > fenrir then fenrir turns off and the mate environment comes up and orca
> > turns on.  I've done a base install with no difficulty earlier.  I will
> > try a gnome install next to see if that now works.  When these installs
> > fail it's usually because the developer is working on what fails to
> > download so when that happens maybe try another install later.  The base
> > install which is archlinux console uses fenrir to run.
> >
> >
> >
> > --
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://www.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

