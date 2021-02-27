Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A1006326F7A
	for <lists+blinux-list@lfdr.de>; Sat, 27 Feb 2021 23:55:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614466514;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Zq+EQ8NEitZWjo7PTES166ARZHOyhHSZ26+nYySgmUo=;
	b=E/zaa1OlOlZNUs1CEc6luZsau2940fF0GVrZeoZ95ix7P9dWcBQ4qsQG5V9zIkMXLYd835
	w/1QEMzDZRB4EOLBG597BO4YWxQqIwOl1IAZkSpJ0vvJQg1NlbmIrLp2Wm5BP8LEXqG0io
	VseFbSucXT8jL9Ap2Q94jrWKA+3v2IA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-w6Eh3_O1OyuDBGOkuiEyqg-1; Sat, 27 Feb 2021 17:55:12 -0500
X-MC-Unique: w6Eh3_O1OyuDBGOkuiEyqg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86702185A0CE;
	Sat, 27 Feb 2021 22:55:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4836A67CC4;
	Sat, 27 Feb 2021 22:55:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9098418095C9;
	Sat, 27 Feb 2021 22:55:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11RMt4ni019959 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 17:55:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 80FDF2166B2D; Sat, 27 Feb 2021 22:55:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7BA562166B27
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:55:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5720485A59D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 22:55:02 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-513-kRFnINFSPUuBgyP-fjP0jQ-1; Sat, 27 Feb 2021 17:54:59 -0500
X-MC-Unique: kRFnINFSPUuBgyP-fjP0jQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 9F99E621C09; Sat, 27 Feb 2021 22:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 9C15862021D
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 17:54:58 -0500 (EST)
Date: Sat, 27 Feb 2021 17:54:58 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Running Android Voices in Linux?
In-Reply-To: <Pine.LNX.4.64.2102271750020.2939073@server2.shellworld.net>
Message-ID: <Pine.LNX.4.64.2102271754020.2939382@server2.shellworld.net>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<161444979750.8.5402375494901459390.4266338@simplelogin.co>
	<161446448778.8.10629460359382025123.4270314@slmail.me>
	<73c85e2-c3b5-dc82-93ac-8ec1ec176d63@hubert-humphrey.com>
	<Pine.LNX.4.64.2102271750020.2939073@server2.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

for example, you could send them to me at shellworld, and I can mail them 
to whom ever desires them?
Both my main account, and my website are hosted  here.
Kare



On Sat, 27 Feb 2021, Linux for blind general discussion wrote:

> Chime,
> Can I help with  sharing these files?
> karen
>
>
>
> On Sat, 27 Feb 2021, Linux for blind general discussion wrote:
>
>>  Well, SL, I would be happy to send you
>>  ivona-voices.tgz
>>  but since this list blocks real e-mail addresses, otherwise an entire list
>>  would receive it. So, please write directly
>>  chime at hubert dash humphrey dot com
>>  Replace some words with symbols. If I still had my web-site hosted on
>>  shellworld, I could just give you a direct link, but now my site is
>>  through fastmail, need to setup something through webdav so I can upload
>>  items in an ftp interface.
>>  Chime
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
>> 
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

