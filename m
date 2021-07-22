Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 781293D277E
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 18:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626970995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Bp+AuHfGSf4CssY+/l8rh6LK7w1KnAdyT+j5cPQRI4=;
	b=Q7XlzUE+TEJRLw40e7Fyacn7iN8bfTNVMnEnoXYAKmTn498PqSexBjLfvhUeJ7vMBXtQxA
	6j3uSWfVBXVoF2MWkbNIUUTrYB+diKQVmlQfzuIQC+XDORVUZGYR50h976+W1F6jOqEEDz
	Vo+4zxWOE79gEPOvYPiQIK8fId8R0KE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-f2ijOHkwNFSA9PzStU6fcg-1; Thu, 22 Jul 2021 12:23:13 -0400
X-MC-Unique: f2ijOHkwNFSA9PzStU6fcg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 901E485EE9E;
	Thu, 22 Jul 2021 16:22:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6FD015D6D3;
	Thu, 22 Jul 2021 16:22:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6CD54BB7C;
	Thu, 22 Jul 2021 16:22:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MGMZMA029593 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 12:22:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5B110107286; Thu, 22 Jul 2021 16:22:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 55EEF10F030
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:22:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E8373802A5A
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 16:22:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-542-seNdf04_MQqs09coCsYGLA-1; Thu, 22 Jul 2021 12:22:29 -0400
X-MC-Unique: seNdf04_MQqs09coCsYGLA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVyQs07hWz45vH
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:22:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVyQr6QXqzcbc; Thu, 22 Jul 2021 12:22:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVyQr648NzcbW
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:22:28 -0400 (EDT)
Date: Thu, 22 Jul 2021 12:22:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archinstall and espeak-ng
In-Reply-To: <20210722140602.m3jk7hjrw74gix65@alex-pc>
Message-ID: <alpine.NEB.2.23.451.2107221221330.4527@panix1.panix.com>
References: <alpine.NEB.2.23.451.2107212115390.1346@panix1.panix.com>
	<20210722140602.m3jk7hjrw74gix65@alex-pc>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So, espeak-ng is a supplementary screen reader package not a replacement
package for espeakup.  That makes sense.


On Thu, 22 Jul 2021, Linux for blind general discussion wrote:

> On Wed, Jul 21, 2021 at 09:28:43PM -0400, Linux for blind general discussion wrote:
> > Though I can install a system using archinstall I have yet to get
> > espeak-ng to speak after first reboot.
> > spd-conf threw many errors when run didn't have directories and wouldn't
> > create them so speech-dispatcher could be started automatically along with
> > other errors.
>
> if you don't want to use gui, you don't need speech-dispatcher.
>
> > The first time I chose xorg for install type and I expect though that got
> > me a system it was speechless.
> > Then I tried minimal with no better luck.
> > One of the things I was told was that no audio server would be installed
> > even though alsa-utils and alsa-plugins were both installed.
> > The sound card does pop when the system comes up.
> > Two things on the system that wouldn't install were pcspkr and sg in the
> > kernel so no grub beep on the way up.  That's usually not a problem since
> > if I can find a sound file to play at boot up I can make that happen if
> > necessary.
>
> pc-speaker module are included in the arch kernel, no need to install it.
> moreover grub don't need pcspeaker module to beep at boot.
>
> > My extra packages line was:
> > lynx surfraw alsa-plugins-alsa-utils espeak-ng mlocate pulseaudio
> > speech-dispatcher
>
> to make system talk at boot you need to install and start espeakup.
> I recommend reading the installation instructions with accessibility options on
> the arch wiki [1]
>
> [1] https://wiki.archlinux.org/title/Install_Arch_Linux_with_accessibility_options
>
> --
> Sincerely, Alexander
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

