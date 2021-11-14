Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEDC44F5D4
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 01:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636851277;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=z4XimXncvxAdlWxYd6Yod03O5LNoAMNXAyUTTJfn5Oo=;
	b=KjVWXWb+Ly8CwqAkhzWcc5GqOxHFAZlAXT5oeJhUyKDywUvrJCvtKMJWUd/OEZIXgmb1io
	6Tmd53WZQ9Ctb6DwvuopNwDY3ZFazow3k1AMj3BImsrvquPeylw20Cw9IVxPrYuFA7K5Y4
	wcP+tqos1ZbMPzppAmrNBKDdw87jwd8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-563-dH7GZBVcPv6lAMsdgQI7Pg-1; Sat, 13 Nov 2021 19:54:33 -0500
X-MC-Unique: dH7GZBVcPv6lAMsdgQI7Pg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7D9701030C20;
	Sun, 14 Nov 2021 00:54:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C641860862;
	Sun, 14 Nov 2021 00:54:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C9304E58F;
	Sun, 14 Nov 2021 00:54:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AE0s6Fc009306 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 19:54:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B9C2D404727E; Sun, 14 Nov 2021 00:54:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4C5A404727D
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 00:54:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 355C6801212
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 00:54:06 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-375-FcLeF1XKPiu2KB20cc5pSw-1; Sat, 13 Nov 2021 19:54:04 -0500
X-MC-Unique: FcLeF1XKPiu2KB20cc5pSw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 09CF1621C33; Sun, 14 Nov 2021 00:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 048AF621C06
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 19:54:03 -0500 (EST)
Date: Sat, 13 Nov 2021 19:54:02 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
In-Reply-To: <CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2111131952300.2138967@server2.shellworld.net>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<8a83ad83-7d3c-c5f5-4bb5-e1c8d657c804@gmail.com>
	<YZAAhqsubBVL2pNl@panix.com>
	<CAGPwheC9=RwFv18uyCTDPz3BLzFuzYbWkN=PCOQ2H6PNRGgLiA@mail.gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

using pine right now to create this email,  and recommend it very much 
indeed.
Alpine is still under development, and many stand by it as well.



On Sat, 13 Nov 2021, Linux for blind general discussion wrote:

> I agree.  If you are going to use a terminal client, Alpine works pretty
> good.  At least it did when I used it a long time ago.  If I recall
> correctly, with Mutt you need to create a configure file by hand before you
> can do anything with it.  At least pine creates a default file and if you
> want to change it, you can go into the menu to do that.
>
>
>
> On Nov 13, 2021 at 1:59 PM, Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> The Mutt email client should come with a warning label:
>
>
> CAUTION: FOR EXTREME POWER USERS ONLY!
>
>
> I'm sure if you like emacspeak, you'll probably love Mutt, as I gave up
> on EMACS as a whole after 5 minutes and gave up on Mutt after about 2
> weeks. But someone who is using Thunderbird as the thread starter has
> said should steer clear of Mutt and avoid it like the untamed, mangy,
> flea-bitten dog that it is.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
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

