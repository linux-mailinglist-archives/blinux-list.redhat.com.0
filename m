Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED589497457
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 19:36:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642962997;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zfYdAoOs0Yt9+s7xC9fAPCgQ/FXXDZtNfPMFa6qr5yo=;
	b=Vav4mBLmx6xX4gOa6qrwRuCOL4mzXotmZ+W4szdzhUUhkx6T5wwzefTph3WR2eWvjEbwli
	YR4ilKSJuU/Mfa0mVTcO2ea2s+cAIwnL8LI3IxM1AKjoAnH947L1TTy7EfpMNysaIMNg7G
	mzk2rmOysaEWhDlcpjrgzRqHTsELlf4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-586-uO12OZZ_PNiXeJCs8z3TYg-1; Sun, 23 Jan 2022 13:36:34 -0500
X-MC-Unique: uO12OZZ_PNiXeJCs8z3TYg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6B7E981424C;
	Sun, 23 Jan 2022 18:36:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDC9585F0F;
	Sun, 23 Jan 2022 18:36:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46CDD4BB7C;
	Sun, 23 Jan 2022 18:36:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NIYrYw024321 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 13:34:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CE7D1401DBD; Sun, 23 Jan 2022 18:34:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7E93401E2A
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 18:34:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D8B238030BB
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 18:34:53 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-500-uUbDPwzKOxGTqEy69AHpHg-1; Sun, 23 Jan 2022 13:34:51 -0500
X-MC-Unique: uUbDPwzKOxGTqEy69AHpHg-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 5F5D06201A2; Sun, 23 Jan 2022 18:34:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 5E7DB62019C
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 13:34:50 -0500 (EST)
Date: Sun, 23 Jan 2022 13:34:50 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
In-Reply-To: <54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
Message-ID: <Pine.LNX.4.64.2201231331180.1558360@server2.shellworld.net>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
	<54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

There is no such thing as an out of the box accessible product for 
absolutely everyone.
A better question for this thread would be favorite laptop that could run 
what you  need, rather than generalizing.
And do not get me started on what feels like elitist  technology 
privilege...why buy a machine  with a preinstalled system when I can just 
do it myself?
That is individualized knowledge hardly transferable to  the general 
public.



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

