Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5364C5FE7
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 00:26:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646004398;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=16jTPbdOOS7t2j5Ia1JIQXQOfNV8lZ+EukT2ahOh0DQ=;
	b=gibont+ifRSZLzq+R/jiSghQjfGbaT2WapQe/58/h0x3hPYtHGd1N07wko7aM9sF/KZ4wc
	TZltO4oUj7hQBu85TLapBQbYmR5LEEIcoNEWCip5Il1YGquKFaR+8x22uQAEoZOaPg+SAJ
	3wudLgJvee4uAemZipGkBKJ9q+qgRbc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-412-qutViR4lMZSp2q0ifDvl1Q-1; Sun, 27 Feb 2022 18:26:35 -0500
X-MC-Unique: qutViR4lMZSp2q0ifDvl1Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 534E41800D50;
	Sun, 27 Feb 2022 23:26:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 608175DBA4;
	Sun, 27 Feb 2022 23:26:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 36DC91809C98;
	Sun, 27 Feb 2022 23:26:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21RNQNOF018053 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 18:26:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7385D400E123; Sun, 27 Feb 2022 23:26:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6EE7D4010A16
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:26:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 567C485A5A8
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:26:23 +0000 (UTC)
Received: from ams1.kyle.tk (kyle.tk [45.148.122.133]) by relay.mimecast.com
	with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-197-4DJOckSoMluNNKE5ILXRaA-1; Sun, 27 Feb 2022 18:26:21 -0500
X-MC-Unique: 4DJOckSoMluNNKE5ILXRaA-1
Received: from localhost (localhost [127.0.0.1])
	by ams1.kyle.tk (Postfix) with ESMTP id BCEEC1BBEEE
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:26:18 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at ams1.kyle.tk
Received: from ams1.kyle.tk ([127.0.0.1])
	by localhost (ams1.kyle.tk [127.0.0.1]) (amavisd-new, port 10026)
	with LMTP id kF4cH8OXytL4 for <blinux-list@redhat.com>;
	Sun, 27 Feb 2022 23:26:10 +0000 (UTC)
Received: from [IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d]
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com
	[IPv6:2603:6080:6302:e002:e826:5227:4681:6e2d])
	(Authenticated sender: kyle@free2.ml)
	by ams1.kyle.tk (Postfix) with ESMTPSA id 303F71BB092
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 23:26:09 +0000 (UTC)
Message-ID: <576cde22-17c2-56d9-6ca4-0887d397fc18@free2.ml>
Date: Sun, 27 Feb 2022 18:26:05 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Use alexa on linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <34339ff7-af34-775-fd30-fd75f6878d4@gmail.com>
	<CAGJxbF6DEJG5_SEtveQhe8Ruv_oCZZ2-dXkyJ0UM19ydPa7aXg@mail.gmail.com>
In-Reply-To: <CAGJxbF6DEJG5_SEtveQhe8Ruv_oCZZ2-dXkyJ0UM19ydPa7aXg@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

This, unfortunately, is an old article.


By unfortunately, I take it you mean that the hopes and changes expected 
in the article have not been realized. Sad really, since Alexa really is 
a good app, and it would be nice to be able to run it on the desktop, 
since it does allow muting the mic fairly easily, and it already 
interfaces with my music services and my thermostat. I would like to get 
that going through Home Assistant or similar, but it seems to require a 
masters in computer science just to get it going, and I can't seem to 
get Mycroft working with home automation skills ... I don't think they 
exist yet. I guess it is still a bit too new for that. I get errors when 
trying to interface Mycroft with music services as well. It does pretty 
nice stuff with the weather and timers and alarms though.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

