Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C87193F9D3E
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 19:07:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630084019;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Tzhc3VgQjlJbf9eJ2DnBm7cgfXoKyn1+fMH+7G7DUNY=;
	b=LUL5f/Z/sZ4O71GmMDVol3kYU7eUkwr/s/XPd3OSNWbSeS//2iioCC0V7tflNroAX2N87D
	P0Sf1kG0VV8VXZMWlKmzoavektOFm/8ciJH0r8pL3ILZ0+Nni7+PKqAgAtRzxaTj/g+W0c
	+Dt5BWVXtA+fklr/lcfBN4CjIU6NPJY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-374-uMtqZFwtPYaw8GKmoPVqIg-1; Fri, 27 Aug 2021 13:06:58 -0400
X-MC-Unique: uMtqZFwtPYaw8GKmoPVqIg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6514F185302C;
	Fri, 27 Aug 2021 17:06:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EAC96608B;
	Fri, 27 Aug 2021 17:06:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 007DB181A0F2;
	Fri, 27 Aug 2021 17:06:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RH6oHZ007713 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 13:06:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CC6AC21623B9; Fri, 27 Aug 2021 17:06:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C683821623BA
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:06:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C1423858F1C
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:06:47 +0000 (UTC)
Received: from mail.opopanax.net (mail.opopanax.net [66.172.33.24]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-597-H0TAzAMlNPy8Rd_66_8plw-1; Fri, 27 Aug 2021 13:06:43 -0400
X-MC-Unique: H0TAzAMlNPy8Rd_66_8plw-1
Received: from mail.opopanax.net (localhost [127.0.0.1])
	by mail.opopanax.net (Postfix) with ESMTP id 4Gx5jG4bh1z8tQW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:06:42 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail
Received: from mail.opopanax.net ([127.0.0.1])
	by mail.opopanax.net (mail.opopanax.net [127.0.0.1]) (amavisd-new,
	port 10026) with ESMTP id WCnE7YlFO7z9 for <blinux-list@redhat.com>;
	Fri, 27 Aug 2021 17:06:41 +0000 (UTC)
Received: from [192.168.1.100] (208-107-97-40-dynamic.midco.net
	[208.107.97.40])
	by mail.opopanax.net (Postfix) with ESMTPSA id 4Gx5jF4gcyz8tQY
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:06:41 +0000 (UTC)
Message-ID: <20210827.170646.675.2@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: Re: Update on speech/media sounds
Date: Fri, 27 Aug 2021 12:06:46 -0500
MIME-Version: 1.0
In-Reply-To: <20210827.164855.951.1@[192.168.1.100]>
References: <20210827.164855.951.1@[192.168.1.100]>
User-Agent: POP Peeper Pro (5.1.2.0)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17RH6oHZ007713
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I should add that I ran this command to get the default-sink directive:
pacmd list-sinks | grep -e 'name:' -e 'index:'
        name: <alsa_output.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.analog-stereo>
Upon looking further, I see espeakup.service doesn't call pulseaudio. So pulse wasn't running. That would be why I did not get speech output where I expected it. It does  not appear pulseaudio has a systemd unit:
Failed to enable unit: Unit file pulseaudio.service does not exist.
It looks like applications are supposed to call it directly. Which makes sense.
I'll edit the espeakup.service unit to call pulseaudio and see if that fixes the problem.
----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Fri, 27 Aug 2021 11:48:55 -0500
Subject: Update on speech/media sounds

> I wrote an email here earlier asking about setting a USB card for speech and having my media playback come through the onboard sound card. There does not really seem to be a reliable way of doing this without pulse.
> 
> So I installed pulse and ran Crhys's configure-pulse.sh script. I then edited /etc/pulse/default.pa with:
> 
> set-default-sink alsa_output.usb-C-Media_Electronics_Inc._USB_Audio_Device-00.analog-stereo
> 
> This did not work; speakup still came through the speakers connected to my onboard card.
> What else do I need to do?
> 
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

