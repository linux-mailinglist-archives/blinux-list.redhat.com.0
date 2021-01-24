Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4E64B301938
	for <lists+blinux-list@lfdr.de>; Sun, 24 Jan 2021 03:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611456056;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j1HCcynrzyW7AMGgc3KuHCy+Hn1qwtzbsgbA3O7QHhM=;
	b=AJ9SZe3Qk5xOPiMePU93mdy/zbKOsFFfnoEe6ZLG9Ec1lIy5Nkt/ibk6uzGqlSH3OGJN4N
	4jDf3D5RoTg39Lhigd6rf+3Kx2RJGHaEFsJWU14UurmbtXKMS+KdLeuWZkog6AcGcc5/cc
	0iBPr7qODds5RqyxzLKMZHvslVhnrO8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-573-dJJrE4ZhMFOMJ2XLiI9fnw-1; Sat, 23 Jan 2021 21:40:53 -0500
X-MC-Unique: dJJrE4ZhMFOMJ2XLiI9fnw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEB5210054FF;
	Sun, 24 Jan 2021 02:40:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC5E35D9CC;
	Sun, 24 Jan 2021 02:40:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D63834A7C6;
	Sun, 24 Jan 2021 02:40:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10O2VNwh026163 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 23 Jan 2021 21:31:23 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 53B584E623; Sun, 24 Jan 2021 02:31:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D9FB4E3CA
	for <blinux-list@redhat.com>; Sun, 24 Jan 2021 02:31:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87A318001B8
	for <blinux-list@redhat.com>; Sun, 24 Jan 2021 02:31:20 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-569-WgkbC2EUPc-G12Yv17_dag-1; Sat, 23 Jan 2021 21:31:16 -0500
X-MC-Unique: WgkbC2EUPc-G12Yv17_dag-1
X-SimpleLogin-Client-IP: 2a04:3542:1000:910:8c7a:9cff:fe3c:20ac
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3542:1000:910:8c7a:9cff:fe3c:20ac])
	by mx2.simplelogin.co (Postfix) with ESMTP id E59815DDF9
	for <blinux-list@redhat.com>; Sun, 24 Jan 2021 02:25:05 +0000 (UTC)
In-Reply-To: <CAO2sX32cNAg1c4RSf8GVq_hSMPNNre1Rpz8U6LAjd4ty6EMuFA@mail.gmail.com>
References: <161139635710.6.15346525701550806542.3266624@slmail.me>
	<CAO2sX32cNAg1c4RSf8GVq_hSMPNNre1Rpz8U6LAjd4ty6EMuFA@mail.gmail.com>
Subject: Re: Is there an easy to use Equalizer for Ubuntu based Distros?
MIME-Version: 1.0
To: blinux-list@redhat.com
Cc: blinux-list@redhat.com
Message-ID: <161145510571.6.16283696956580322170.3279435@slmail.me>
Date: Sun, 24 Jan 2021 02:25:05 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 3279435
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Thanks for the detailed info re conf files and also Aptitude. 
You mentioned text editors and thats actually a question I've been meaning to ask this list but havn't got around to it.
What text editors do you guys like to use? 
I don't really want to use Visual Studio as my understanding is its developed by Microsoft and I'd much prefer an open source alternative. Besides I don't even know if Visual Studio would run on Linux anyways. 
I used to have Notepad++ on Windows, is it accessible on Linux?
And are there other text editors out there that are accessible and also beginner friendly?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

