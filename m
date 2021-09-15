Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1A5F840C2CA
	for <lists+blinux-list@lfdr.de>; Wed, 15 Sep 2021 11:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631698247;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=77MU5G8/AhtwCOezC3GkM/I40L8VJztcP8SfQZG921g=;
	b=ZuUo6whBQMvDce+qA54qULZo76l5plJ9CwBmyuh25krllSOWPA8NA0rH1McUPMpcU+GU9V
	mFpali5Yt+hlfOBAcKZ2L/2zqARcGvfpkVjPCU2CqTZhxBI4BbMYnmaOWBRcfJ5w9I8NxM
	VcRMqRTrophOSuPz1enfgQBPbFV1yJ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-pwpumEI2PIm9w_GodNvaQg-1; Wed, 15 Sep 2021 05:30:45 -0400
X-MC-Unique: pwpumEI2PIm9w_GodNvaQg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 750861023F4D;
	Wed, 15 Sep 2021 09:30:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE9805D6A8;
	Wed, 15 Sep 2021 09:30:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E67EC1803B30;
	Wed, 15 Sep 2021 09:30:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18F9NZ4e018053 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 15 Sep 2021 05:23:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 01632D9286; Wed, 15 Sep 2021 09:23:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0782DA67B
	for <blinux-list@redhat.com>; Wed, 15 Sep 2021 09:23:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27C0A101A529
	for <blinux-list@redhat.com>; Wed, 15 Sep 2021 09:23:32 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-58-yBIHq7vcM221wgCnDzQ40A-1; Wed, 15 Sep 2021 05:23:29 -0400
X-MC-Unique: yBIHq7vcM221wgCnDzQ40A-1
Received: from [192.168.116.128] (unknown [87.70.24.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 0C6D52FE7506
	for <blinux-list@redhat.com>; Wed, 15 Sep 2021 09:23:27 +0000 (UTC)
Date: Wed, 15 Sep 2021 12:23:24 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Persistent device naming, alsa
In-Reply-To: <20210914.174836.561.5@[192.168.1.100]>
Message-ID: <alpine.DEB.2.11.2109151205100.36580@debian.work>
References: <20210914.174836.561.5@[192.168.1.100]>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Tue, 14 Sep 2021, Linux for blind general discussion wrote:

> I have a USB audio device that I use for system sounds via pulse, and speech.
> In my default.pa, I have
> set-default-sink alsa_output.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.analog-stereo
> I also have onboard audio, to which my surround speakers are connected.
> For my mpv, I can use this line in ~/.config/mpv/mpv.conf:
> audio-device=pulse/alsa_output.pci-0000_00_1f.3.analog-stereo
> That's the onboard card.
> I also use pianobar, which uses libao, to produce its audio. The problem is that
> dev=hw:0
> changes on each boot. I need a way to specify a device by it's name somewhere, so that I can call it in application, even if it's hw ID changes.
> What can I do there?

You can set an option for the ALSA modules for your cards to specify the 
card number, so that it doesn't change.

Put the following in a file in /etc/modprobe.d ending in .conf (e.g. 
/etc/modprobe.d/alsa.conf):

options snd-usb-audio index=0

You may need to set the other one to 1 as it will likely be detected 
first.

There is a good discussion of setting default soundcards and the various 
ways it can be done at 
https://wiki.archlinux.org/title/Advanced_Linux_Sound_Architecture#Set_the_default_sound_card

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

