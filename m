Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 002263F9D3A
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 19:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630084001;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ToONWeKxNj8gxogWIAPpJOC4hys5+vlewL2OllBYw48=;
	b=QSufBOV/N5vmNE0FZdU1lEUv3Ky7qEYft1SY+JECaBQtAwS9mtmNUctQhIe7V5+r66HE+5
	r7Vla9lhWpRAARoTw/mGqNRWxDWoYLL16KQkzkClS5LJph2tiYPwEdwDiKGTCLbB1EZ81L
	d3KvcDR6n0JreJLoUqocSbvHuEizzO0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-ioRIsW9gMQ6qysYNSPatUQ-1; Fri, 27 Aug 2021 13:06:39 -0400
X-MC-Unique: ioRIsW9gMQ6qysYNSPatUQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE560802923;
	Fri, 27 Aug 2021 17:06:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C438F60622;
	Fri, 27 Aug 2021 17:06:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8415B4BB7C;
	Fri, 27 Aug 2021 17:06:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RH6QxT007680 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 13:06:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2F67E20B6655; Fri, 27 Aug 2021 17:06:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2ADBF20BEAB0
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:06:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49D14811E81
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 17:06:23 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-336-JxM9iuOJNMuWRZA7zPlaVg-1; Fri, 27 Aug 2021 13:06:20 -0400
X-MC-Unique: JxM9iuOJNMuWRZA7zPlaVg-1
Received: from [192.168.116.128] (unknown [87.70.98.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 1C0BB2C5A85C
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 16:58:35 +0000 (UTC)
Date: Fri, 27 Aug 2021 19:58:34 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Update on speech/media sounds
In-Reply-To: <20210827.164855.951.1@[192.168.1.100]>
Message-ID: <alpine.DEB.2.11.2108271954080.61306@debian.work>
References: <20210827.164855.951.1@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On Fri, 27 Aug 2021, Linux for blind general discussion wrote:

> I wrote an email here earlier asking about setting a USB card for speech and having my media playback come through the onboard sound card. There does not really seem to be a reliable way of doing this without pulse.

Apologies, I don't think I saw the original question.

I've not needed to use Pulse.

Assuming you are using speakup with espeak and espeakup, you can use the 
ALSA_CARD environment variable to tell espeakup where to play audio.

Debian takes this one step further by having it definable in 
/etc/default/espeakup

Here's what it says:

# To choose audio output on another sound card, uncomment this and set as
# appropriate (either a card number or a card name as seen in CARD= alsa
# output).
#
# export ALSA_CARD=0

I have used this successfully on a multi-card machine, though not with 
USB.

Note that I've also had issues using some USB cards which do not support 
the sampling rate that espeak expects to use.

HTH,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

