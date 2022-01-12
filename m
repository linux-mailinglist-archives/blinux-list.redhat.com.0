Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C85E548C4B5
	for <lists+blinux-list@lfdr.de>; Wed, 12 Jan 2022 14:21:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641993708;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=45vxqZ402rC56VOuS8q7MHmEVcluC/f/kIQF+cfMYAk=;
	b=VqFkD2pvHgxyyXLqslb5MZ9K2S8QjeuYKIWTK4z7N0jCltfsAsdzB6IjLKexvbx8JlSCka
	svS5Xdpovz1OkaVGCSk1Q+Q6N2UpgHTKZO8jVk34hHSlIsS6dxOzwL+GAhagZdm7QZdEtK
	9+pD/K9sEnc9qNrzuOO5hVbLtTEceEo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-552-hjXgsgptNIaOFJg2bLn3dw-1; Wed, 12 Jan 2022 08:21:47 -0500
X-MC-Unique: hjXgsgptNIaOFJg2bLn3dw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEAE981CCB8;
	Wed, 12 Jan 2022 13:21:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBE387E915;
	Wed, 12 Jan 2022 13:21:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 814BB4BB7B;
	Wed, 12 Jan 2022 13:21:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20CDKQ3M012825 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 12 Jan 2022 08:20:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5743B1410F39; Wed, 12 Jan 2022 13:20:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4EC44140EBFD
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 13:20:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1CE5C28EA6FC
	for <blinux-list@redhat.com>; Wed, 12 Jan 2022 13:20:26 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-663-oQl5Q0TaPluVnAOcRlXX-Q-1; Wed, 12 Jan 2022 08:20:24 -0500
X-MC-Unique: oQl5Q0TaPluVnAOcRlXX-Q-1
Received: from email.seznam.cz
	by email-smtpc4a.ko.seznam.cz (email-smtpc4a.ko.seznam.cz
	[10.53.10.105]) id 5bb832784e2061225a52c364;
	Wed, 12 Jan 2022 14:20:23 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay30.ko.seznam.cz (Seznam SMTPD 1.3.136) with ESMTP;
	Wed, 12 Jan 2022 14:20:18 +0100 (CET)
Subject: Re: MPV problem
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4f8b44c7-7955-ceb2-491f-b3a6de4cdda8@seznam.cz>
	<ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
Message-ID: <030518a4-9ddf-fb4f-61d8-a578520c902e@seznam.cz>
Date: Wed, 12 Jan 2022 14:20:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <ff09d0ee-685d-97bc-4691-fb9ee4aa2fdf@gmail.com>
X-szn-frgn: <5c93c31e-9d37-479d-96f3-121958f6168e>
X-szn-frgc: <0>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

I don't know, what was the time. Is some way to see, what time is it 
when I am finishing?

Thanks, Vojta.

Dne 12. 01. 22 v 14:16 Linux for blind general discussion napsal(a):
> At what point in the file does this happen? Does it occur at a certain 
> point in time or at a percentage? I'm not reproducing the problem here, 
> mpv 0.34.0, ffmpeg 4.4.1, Fedora 35, running mpv by opening a movie file 
> in Caja. I successfully saved and quit mpv and reopened the same file at 
> random times up to 10 minutes into the movie, and it plays from my saved 
> position. Didn't try audio yet, but my guess is that it should work. Is 
> there a way for you to maybe get a newer version of mpv, perhaps a PPA 
> or similar? It's possible that may fix it.
> 
> ~Kyle
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

