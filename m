Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9CED8410DF6
	for <lists+blinux-list@lfdr.de>; Mon, 20 Sep 2021 02:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632096833;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R11JMUjKKf2jedINTleQrdw40frwnd3+leH1WNovMcY=;
	b=NgV4f7rstNq7m1P2Tn0Ud4sEeCaypKS4ytPUnTDZq4085JvoSWSvOlNI5E0xgZkDE3Gvna
	4z+tPpMcfdgqbr2AUu9+Q3GsKrPbEDWD5HmWba6Kpd6GNJ3ovZSoMXw0Rb/RD7ocwkhhJr
	JGiUwWs+Nm4Q92jPvMnfMQifRc9WDD8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-tLc5HYgLP7itDo2MpAsZtA-1; Sun, 19 Sep 2021 20:13:52 -0400
X-MC-Unique: tLc5HYgLP7itDo2MpAsZtA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 292531808304;
	Mon, 20 Sep 2021 00:13:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A271A100238C;
	Mon, 20 Sep 2021 00:13:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DFEE21800B9E;
	Mon, 20 Sep 2021 00:13:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18K06GdA011686 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 19 Sep 2021 20:06:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DFC865015B; Mon, 20 Sep 2021 00:06:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DAA234C82F
	for <blinux-list@redhat.com>; Mon, 20 Sep 2021 00:06:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46F21101CC60
	for <blinux-list@redhat.com>; Mon, 20 Sep 2021 00:06:13 +0000 (UTC)
Received: from gateway6.unifiedlayer.com (gateway6.unifiedlayer.com
	[66.147.246.201]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-IwhcHPCOObWFgS1MPdJvPA-1; Sun, 19 Sep 2021 20:06:10 -0400
X-MC-Unique: IwhcHPCOObWFgS1MPdJvPA-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway6.unifiedlayer.com (Postfix) with ESMTP id 8E86A200AAC73
	for <blinux-list@redhat.com>; Sun, 19 Sep 2021 18:45:04 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id S6UamaIEOv5IUS6UamNFbn; Sun, 19 Sep 2021 18:45:04 -0500
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:10396 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mS6Ua-002mFy-9a
	for blinux-list@redhat.com; Sun, 19 Sep 2021 18:45:04 -0500
Date: Sun, 19 Sep 2021 18:45:01 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to unmute pulseaudio from command line?
Message-ID: <20210919184501.37be62a1@bigbox.attlocal.net>
In-Reply-To: <A3A4EA2D-6149-4523-8D02-F26520A3A009@gmail.com>
References: <A3A4EA2D-6149-4523-8D02-F26520A3A009@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mS6Ua-002mFy-9a
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:10396
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  You might try

  pactl set-sink-mute @DEFAULT_SINK@ true

to mute, and

  pactl set-sink-mute @DEFAULT_SINK@ false

to unmute, or

  pactl set-sink-mute @DEFAULT_SINK@ to toggle

If you have multiple audio-devices, you might have to change that
"@DEFAULT_SINK@" to the particular device ID such as "0" which should
be listed if you

  pactl list sinks

Hope this helps,

-Tim

On September 19, 2021, Linux for blind general discussion wrote:
> Hi!
> 
> I accidentally muted the sound on a new installation of Ubuntu Mate
> 21.10, and cannot get the thing talking again.  I don't think
> amixer is the tool I need.  
> 
> Thanks,
> 
> Dave 
> 
> Sent from my iPhone
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

