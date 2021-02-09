Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 81E36315A44
	for <lists+blinux-list@lfdr.de>; Wed, 10 Feb 2021 00:50:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612914657;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FD3jZlnxee7en2WErc9q/Qt7B6mujcyzQpQfgbUesSo=;
	b=LnA3CT7c5O9HxPW4AFAB8PT5aZ1TZvqyYvg3g0fxLADR7tDZmdQMUTx+Ix4yR+MYKWyfRF
	uelXzs6cAj4zPfgaqVSkpDR8xnTpU2QpsbTgdBsrJb+RgHtbe1picA+cObf0DtPWT5phfI
	yrEn0cjAEjqtldcZJ4lnqtToZj7k7xY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-513-vNf-I8zTO3-4O9vBqnBBZA-1; Tue, 09 Feb 2021 18:50:55 -0500
X-MC-Unique: vNf-I8zTO3-4O9vBqnBBZA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A95C31009618;
	Tue,  9 Feb 2021 23:50:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF6875D745;
	Tue,  9 Feb 2021 23:50:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A264A18095CB;
	Tue,  9 Feb 2021 23:50:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 119NoikR005763 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Feb 2021 18:50:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1B19D2026D11; Tue,  9 Feb 2021 23:50:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 167B32026D49
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 23:50:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B995480231B
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 23:50:41 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-375-tihdShdeNiGyYyG-WiQxGg-1; Tue, 09 Feb 2021 18:50:39 -0500
X-MC-Unique: tihdShdeNiGyYyG-WiQxGg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Db05C0C0wzf20
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 18:50:39 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Db05C28M7zcbc; Tue,  9 Feb 2021 18:50:39 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Db05C1vrDzcbV
	for <blinux-list@redhat.com>; Tue,  9 Feb 2021 18:50:39 -0500 (EST)
Date: Tue, 9 Feb 2021 18:50:39 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: simple Ubintu question?
In-Reply-To: <Pine.LNX.4.64.2102091827530.24393@server2.shellworld.net>
Message-ID: <alpine.NEB.2.23.451.2102091850210.1378@panix1.panix.com>
References: <Pine.LNX.4.64.2102091827530.24393@server2.shellworld.net>
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

It's whatever sound card ubuntu finds.



On Tue, 9 Feb 2021, Linux for blind general discussion wrote:

> Hi all,
> On another list an individual indicated that the desktop installation of 
> Ubuntu allows for speech with a keystroke at the start.
> If this is correct, what is the synthesizer in use?
> thanks
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

