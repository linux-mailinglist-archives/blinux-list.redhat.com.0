Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 37A06410761
	for <lists+blinux-list@lfdr.de>; Sat, 18 Sep 2021 17:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631979916;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cWL2oA4vydUxbMIgB5V7FFSD80NMekbN6Iy0UuLpXZE=;
	b=EzL+GkqcBiVxV3ZaUSDLmHWK0JIOn5KZj/qUbP1ok4aFFFmsfewf+V+07eilXxSxPwZjsy
	J9wYdIzleXpl2P8Khmqls3NLDgzxFY96dTbU+9gUjyp9DP4OKNCMmJkM7VzFwQsZIU3Ty1
	GY8WVtdxfSMHcs53vg2s1WIcaxqErrY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-SAcMlu3xPK2yhvo3xHsHtg-1; Sat, 18 Sep 2021 11:45:14 -0400
X-MC-Unique: SAcMlu3xPK2yhvo3xHsHtg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C462A1005E4D;
	Sat, 18 Sep 2021 15:45:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C4986C8F6;
	Sat, 18 Sep 2021 15:45:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AADB34E590;
	Sat, 18 Sep 2021 15:44:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18IFi4gg032437 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 11:44:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1A7982164DE0; Sat, 18 Sep 2021 15:44:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 157BC2164DD9
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 15:44:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CE05185A794
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 15:44:01 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-26-VISUwgTQNzGk9qzoerME6A-1; Sat, 18 Sep 2021 11:43:59 -0400
X-MC-Unique: VISUwgTQNzGk9qzoerME6A-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest
	SHA256) (No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id D85A9FA657
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 11:43:58 -0400 (EDT)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.rednote.net D85A9FA657
Received: (from janina@localhost)
	by opera.rednote.net (8.16.1/8.16.1/Submit) id 18IFhwBh015728
	for blinux-list@redhat.com; Sat, 18 Sep 2021 11:43:58 -0400
Date: Sat, 18 Sep 2021 11:43:58 -0400
To: blinux-list@redhat.com
Subject: rhvoice broken on Arch
Message-ID: <YUYJPmtUN850ISXK@rednote.net>
References: <YUXl/70G69mzJqvV@rednote.net>
MIME-Version: 1.0
In-Reply-To: <YUXl/70G69mzJqvV@rednote.net>
X-Operating-System: Linux opera.rednote.net 5.13.16-200.fc34.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear All:

As is my usual practice, I did a full -Syu upgrade of my two Arch Linux
systems this morning.

rhvoice is one package that was new this week. It's not working with
Speech-Dispatcher. When I do a Alt+F2 and type 'orca -r' I hear the
dummy driver audio message.

I've reset for espeak-ng in my /etc/Speech-Dispatcher/speechd.conf, and
Orca is happy. Yes, I was previously not loading that model (nor Voxin).

Sorry, Alexander!

Best,

Janina

Linux for blind general discussion writes:
> Hi, All:
> 
> I thought I should forward my response to Kirk Reiser below to the
> blinux list, as we've discussed this here previously.
> 
> I've no idea whether or not Kirk's problem with Debian is the same. I
> can only confirm that Espeakup-0.90 and alsa-lib-1.2.5 are still
> nonfunctional for me with Arch.
> 
> Here's my email to Kirk on the Speakup list ...
> 
> 
> Hi, Kirk:
> 
> I'm on Arch, not Debian, but I've had broken Espeakup ever since
> alsa-lib-1.2.5 showed up. Since then Espeakup has been upversioned to
> 0.90, but this has not fixed things for me, though apparently it has for
> Alexander now maintaning Espeakup.
> 
> I currently have two functional Linux machines, both fully upgraded as
> of just about half an hour ago except as described below.
> 
> The newer hardware will run by hand with the command: 'espeakup -d', but
> it's highly brittle and prone to crash the system so that a three finger
> salute is needed.
> 
> If I want console access on this 2020 era box, I have to turn to fenrir,
> which I'm just not as comfortable with--but that's another story.
> 
> My older machine is prevented by my /etc/pacman.conf from updating
> alsa-lib and espeakup, and it runs just fine. 
> 
> So, my suggestion is back off to the latest alsa-lib-1.2.4, and the
> latest espeakup-0.8 you have, and you should be fine until someone
> figures out what's really going on.
> 
> For anyone running Arch you want the following in your /etc/pacman.conf:
> 
> IgnorePkg   =espeakup
> IgnorePkg   =alsa-lib
> 
> If you've already updated your Arch beyond these versions, you can
> downgrade. You'll find a cache of previous versions in:
> 
> /var/cache/pacman/pkg/
> Just cd on over there as root and check what you have with a command
> like:
> 
> ls -1 alsa-lib* espeakup*
> 
> You can then downversion with pacman like this:
> 
> pacman -U ./[filename]
> 
> where [filename] is the full name you got from ls. I recommend using the
> Speakup clipboard to get the command right.
> 
> Best,
> 
> Janina
> 
> 
> Kirk Reiser writes:
> > Hi folks: Does anyone have espeakup running on debian sid with
> > libasound2 1.2.5? After I upgraded a few days ago I lost my speech
> > output. I have built espeakup and espeak-ng from the current repo on
> > them with no joy either.
> > 
> > Curious minds and all that type thing.
> > 
> >   Kirk
> > 
> 
> -- 
> 
> Janina Sajka
> https://linkedin.com/in/jsajka
> 
> Linux Foundation Fellow
> Executive Chair, Accessibility Workgroup:	http://a11y.org
> 
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

-- 

Janina Sajka
https://linkedin.com/in/jsajka

Linux Foundation Fellow
Executive Chair, Accessibility Workgroup:	http://a11y.org

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

