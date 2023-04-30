Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1DB6F27FB
	for <lists+blinux-list@lfdr.de>; Sun, 30 Apr 2023 09:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682841345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Hmm+8XVtGQWS+MG4HqvATIwyaCKTTxT7Dyrv4axmv/o=;
	b=f5Cy0BgxwySJExbchnnSvgLXXPtTMWA4k/LQvyDF7wsLHCbtkl8sdoR6w7JGSVkaXXQDDS
	WhpNGWGRIo5NV4v3Z98L7NhndvWtiYg4o+6pynpxeqHLRvAhtgn41Z3Vq33YEBw68+3lpR
	+DRmAZMsoRphfsXEWGz7TP5LpJd9XsU=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-378-m2hnTsJCPfGeKoa5LSWh9g-1; Sun, 30 Apr 2023 03:55:43 -0400
X-MC-Unique: m2hnTsJCPfGeKoa5LSWh9g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14C6885C1A0;
	Sun, 30 Apr 2023 07:55:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E5657406AA66;
	Sun, 30 Apr 2023 07:55:32 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 35B381946A45;
	Sun, 30 Apr 2023 07:55:32 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 29 Apr 2023 21:52:57 -1000
To: blinux-list@redhat.com
Subject: Re: deb.multimedia.org bad vlc dependency
References: <mailman.142.1682813505.290936.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.142.1682813505.290936.blinux-list@redhat.com>
Message-ID: <mailman.234.1682841331.290942.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jude,

I don't know what you mean by "audio multimedia stack". I'm
running daedalus, which is bookworm minus systemd.(*1)  For
nearly everything audio-related I use only ALSA, avoiding
pulseaudio, piperwire. These are huge projects. 

There can be glitches in the debian testing distribution.
Sometimes waiting a few days and doing apt-get update;
apt-get upgrade will solve them.

I recall postings on the debian-user mailing list to the
effect that deb.multimedia.org is an independent effort, 
not associated with debian and those packages are not maintained
by the debian team. I haven't heard they offer any
advantages over the packages from debian.org.

Asking on the debian-user mailing list would likely get an 
authoritative response. 

cheery greetings,

Joel

1. See http://devuan.org


> I'm using debian bookworm for now and the upgrade from bullseye broke all
> audio multimedia packages.  Having installed deb.multimedia.org's bookworm
> packages results are no better.
> The mpv package also failed with a strange runtime error I've never found
> before.
> 
> 
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

-- 
Joel Roth

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

