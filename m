Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCA345E0E6
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 20:15:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637867721;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GytdU533tq8ln5KVekCSAm9XTiSSBihcfn2ArqnFXiM=;
	b=All1nL4CtZ1etj46G6XRuofuurKtPo8oWZa2rtVBNjWkCDPhM34ZD7NZ5I7GysAZBXzLBU
	jYCDEbpQ3uxMr4eaG1gEnjKzRTBY4fR7aQ2+iUgsMUDGiuM0FeVutNGDINdHJqgtvNRPTt
	tdFEM/q/2dyFEoomGV/NCwix5p4LHjA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-573-XGhPWeTHN1GMTqXdhR7N5Q-1; Thu, 25 Nov 2021 14:15:17 -0500
X-MC-Unique: XGhPWeTHN1GMTqXdhR7N5Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3A55C801B22;
	Thu, 25 Nov 2021 19:15:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86EC45D9CA;
	Thu, 25 Nov 2021 19:15:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 84C121809C89;
	Thu, 25 Nov 2021 19:15:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APJBCBN029684 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 14:11:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8D5D7404727A; Thu, 25 Nov 2021 19:11:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 894254047272
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:11:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74A15185A7BA
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:11:12 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-558-eZNnxqyWNa6gPdVDd9Wn5w-1; Thu, 25 Nov 2021 14:11:10 -0500
X-MC-Unique: eZNnxqyWNa6gPdVDd9Wn5w-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 9F02D620C59; Thu, 25 Nov 2021 19:11:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 9E66C620210
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:11:08 -0500 (EST)
Date: Thu, 25 Nov 2021 14:11:08 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2111251408550.4138651@server2.shellworld.net>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

chime,
Does your setup have a copy of pandoc?
Not sure about doing these in a batch, but pandoc which is here at 
shellworld will convert epub files to at least .Html, and I would be 
surprised if text is not an option.
Kare



On Thu, 25 Nov 2021, Linux for blind general discussion wrote:

> We interrupt these Fedora discussions to bring you a separate subject.
> I have several, maybe 18 ebooks in an epub format, from BookShare-and-Usenet. 
> In looking around, an only tool I can find is "ebook-convert" part of a 
> Calibre package to convert these. However, following cryptic instructions in 
> its man-page, as well as what I see in duckduckgo, I am getting no where. Are 
> their other better tools I need to grab in a Debian SID console? In addition, 
> I really would like to convert all of these at once, in a batch. Thanks so 
> much in advance for any-and-all guidance. We now resume our regularly 
> scheduled programming
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

