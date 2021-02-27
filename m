Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 027E6326F77
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614466257;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0OXzr/h5NyTVZtj3WIXnCKTkonv8gbJNCsX7jY0mbOI=;
	b=SVXoAeg6A/4s92zQEk4Fw9vbQmj/kDcFw4fzTTSot0LbSEbnYVaIQSYSLr4Efe5V/+Nwrb
	c0lAYJ2zDpp4yITeCHU7AxGHkuwKsL2raZsd2wj6iD3mCcfqgPzZYQVZfvOLXYZ/OMMnqm
	M7midGUx4f82WzWHjM7lWaeG9FQ/Td8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-362-F7yyNuA9Ohq_SYoKiuzciA-1; Sat, 27 Feb 2021 17:50:55 -0500
X-MC-Unique: F7yyNuA9Ohq_SYoKiuzciA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77033185A0CE;
	Sat, 27 Feb 2021 22:50:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14E276A8FF;
	Sat, 27 Feb 2021 22:50:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 97D194EEF6;
	Sat, 27 Feb 2021 22:50:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMoj9B019694 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:50:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C6FAA112D170; Sat, 27 Feb 2021 22:50:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C3106112D165
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:50:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 41040800883
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:50:42 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-cKfj5IB0P42M0pqxjcIFzQ-1; Sat, 27 Feb 2021 17:50:39 -0500
X-MC-Unique: cKfj5IB0P42M0pqxjcIFzQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 7D26B621C09; Sat, 27 Feb 2021 22:50:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 7C6CF62021D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:50:38 -0500 (EST)
Date: Sat, 27 Feb 2021 17:50:38 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <73c85e2-c3b5-dc82-93ac-8ec1ec176d63@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2102271750020.2939073@server2.shellworld.net>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
	<161446448778.8.10629460359382025123.4270314@slmail.me>
	<73c85e2-c3b5-dc82-93ac-8ec1ec176d63@hubert-humphrey.com>
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

Chime,
Can I help with  sharing these files?
karen



On Sat, 27 Feb 2021, Linux for blind general discussion wrote:

> Well, SL, I would be happy to send you
> ivona-voices.tgz
> but since this list blocks real e-mail addresses, otherwise an entire list 
> would receive it. So, please write directly
> chime at hubert dash humphrey dot com
> Replace some words with symbols. If I still had my web-site hosted on 
> shellworld, I could just give you a direct link, but now my site is through 
> fastmail, need to setup something through webdav so I can upload items in an 
> ftp interface.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

