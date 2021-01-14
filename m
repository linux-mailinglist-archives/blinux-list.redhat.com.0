Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3262C2F5ABF
	for <lists+blinux-list@lfdr.de>; Thu, 14 Jan 2021 07:32:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1610605920;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/M6wpikAeBXH8cB9/nVcxNU3/ec+T76cwL/K11qKH1A=;
	b=USKWAUAyQmzqwaCz1qExdC+Edxg3V5QDiH+7Ai2HMPdyHheb48/1z0aaNWk3fj0jU1hJH/
	+H7cYbZwvIdU9sYcI/ItS2x+39593ahu/7m/NXkh53bc7TDgYggIflsaWFB8zeRYT7peBE
	/AQwkFvpSAONzf82mowL6VMqBv3+v0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-128-LNjBFZAGPcSidWpMmt2qlA-1; Thu, 14 Jan 2021 01:31:58 -0500
X-MC-Unique: LNjBFZAGPcSidWpMmt2qlA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E34B1007460;
	Thu, 14 Jan 2021 06:31:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A6A3100164C;
	Thu, 14 Jan 2021 06:31:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5140318095C7;
	Thu, 14 Jan 2021 06:31:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10E6Vc7b011111 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 14 Jan 2021 01:31:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 27A98DA670; Thu, 14 Jan 2021 06:31:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2261CD93DD
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 06:31:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 48EA18039DD
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 06:31:35 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-560-H1xYqvqfNeGNYjnyOzwaHQ-1; Thu, 14 Jan 2021 01:31:32 -0500
X-MC-Unique: H1xYqvqfNeGNYjnyOzwaHQ-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.9] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id 77AFE3F123
	for <blinux-list@redhat.com>; Thu, 14 Jan 2021 06:23:10 +0000 (UTC)
In-Reply-To: <4bb728eb-8b8d-82da-086a-3754a49a7581@gmail.com>
References: <161043867227.6.1989062734879827020.2997508@slmail.me>
	<87k0sia0xp.fsf@yahoo.com>
	<4bb728eb-8b8d-82da-086a-3754a49a7581@gmail.com>
Subject: Re: Is this a glitch with Orca and Libre Office?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161060539038.6.5866262636022055744.3043201@slmail.me>
Date: Thu, 14 Jan 2021 06:23:10 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3043201
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Someone here on the list said that the glitch of Orca jumping around while reading a document, is a bug in LibreOffice Fresh, but not in LibreOffice Still.
So I've tried searching how to get LibreOffice Still but not really finding Still in particular. Its just LibreOffice 6 or 7 etc.
Whoever found a version of LibreOffice that does not jump around with Orca, could you please tell me what that version is?
Better yet, is there a command to install it directly from the terminal?
Any other suggestions for word processors would be appreciated. I do not need something with all the latest features to rival MS Office.
I just want something that I can actually read and write long documents without Orca jumping all over the place, and something that I can save files as .rtf
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

