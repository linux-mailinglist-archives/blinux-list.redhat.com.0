Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 769B8315ADA
	for <lists+blinux-list@lfdr.de>; Wed, 10 Feb 2021 01:17:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612916262;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wq66lrBy5+0RD2w/IZnkakrFwXCbuwf/7371kcWZ+wg=;
	b=DS+ypRQ3B1SAVAi3KT9yfZokB0yvIl2sVFGNVE9NvQuXHZXCMNMVVPF0A5IXjvkB4lljxI
	R3KLHntvFP6pYmkBw+s5c2yZ4ngN4O6As3oeOhrZPyitKn47Sk4CG8HHsN2HgeHVOY5i8y
	4oDXdouX8iXS6bsag3ZYaOXS01VDI6Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-599-qcmfMsxHMwmvI6u6sUDEIA-1; Tue, 09 Feb 2021 19:17:39 -0500
X-MC-Unique: qcmfMsxHMwmvI6u6sUDEIA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1CE95801965;
	Wed, 10 Feb 2021 00:17:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F3E4C5D745;
	Wed, 10 Feb 2021 00:17:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 54A404E58E;
	Wed, 10 Feb 2021 00:17:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11A0HUUh010288 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Feb 2021 19:17:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D83071134CD2; Wed, 10 Feb 2021 00:17:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3D381134CC8
	for <blinux-list@redhat.com>; Wed, 10 Feb 2021 00:17:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 663C6801233
	for <blinux-list@redhat.com>; Wed, 10 Feb 2021 00:17:27 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-40-N6p8bAjrMMio4uRXoBb7zg-1; Tue, 09 Feb 2021 19:17:25 -0500
X-MC-Unique: N6p8bAjrMMio4uRXoBb7zg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 68717621C75; Wed, 10 Feb 2021 00:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 67A0C620222
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 19:17:24 -0500 (EST)
Date: Tue, 9 Feb 2021 19:17:24 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple Ubintu question?
In-Reply-To: <CAO2sX33i8aRFCVssjX-LvVeprgUnXHiFhT8T6ruGJtWuQy+TTg@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2102091917010.25258@server2.shellworld.net>
References: <Pine.LNX.4.64.2102091827530.24393@server2.shellworld.net>
	<alpine.NEB.2.23.451.2102091850210.1378@panix1.panix.com>
	<CAO2sX33i8aRFCVssjX-LvVeprgUnXHiFhT8T6ruGJtWuQy+TTg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

..and there is my answer.
Thanks.



On Wed, 10 Feb 2021, Linux for blind general discussion wrote:

> I'm pretty sure most distros default to espeak or espeak-ng for
> handling text-to-speech. Also, regardless of the TTS used on the back
> end, Orca uses Speech Dispatcher as a go between between itself and
> the TTS.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

