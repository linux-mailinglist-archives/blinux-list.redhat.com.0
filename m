Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4225E250C67
	for <lists+blinux-list@lfdr.de>; Tue, 25 Aug 2020 01:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598312017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3q4N666elZ8DgxN8vhby/03JJOEGDk7MVs1VLmH3IeA=;
	b=MVNtSsBKCi4ixxcoZhsG2KVAVMQLAD1bwn/mlInSJPNhicnNAESIEwphPNiUEDhNMGQiWE
	4311ZtJqiHLrLQCz7uSKEjTdkWRzYrqznIJZ59xGFusg2+1SCd9jDdZcxFLX95iYOY8MM8
	iRjZnUAtFimHeFWTCeiURPPIbpDVWc8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-315-Winnn6LjM6S5MyXB6u4rkA-1; Mon, 24 Aug 2020 19:33:35 -0400
X-MC-Unique: Winnn6LjM6S5MyXB6u4rkA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 75CE881F01A;
	Mon, 24 Aug 2020 23:33:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FE4E5B680;
	Mon, 24 Aug 2020 23:33:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC7246690B;
	Mon, 24 Aug 2020 23:33:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07ONG59s024934 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Aug 2020 19:16:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 41C35946BE; Mon, 24 Aug 2020 23:16:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C77A951A6
	for <blinux-list@redhat.com>; Mon, 24 Aug 2020 23:16:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5422E8EE641
	for <blinux-list@redhat.com>; Mon, 24 Aug 2020 23:16:03 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-533-jhHXGPtlM5CY86zBxGuPBQ-1; Mon, 24 Aug 2020 19:16:00 -0400
X-MC-Unique: jhHXGPtlM5CY86zBxGuPBQ-1
X-SimpleLogin-Client-IP: 172.17.0.4
Received: from [172.17.0.4] (unknown [172.17.0.4])
	by mx1.simplelogin.co (Postfix) with ESMTP id E71043F1EC
	for <blinux-list@redhat.com>; Mon, 24 Aug 2020 23:15:58 +0000 (UTC)
Date: Tue, 25 Aug 2020 01:15:57 +0200 (CEST)
Message-ID: <MFXkQo8--3-2@tutanota.com>
In-Reply-To: <266d7ec5-ac14-247e-7b1b-e7e780a47932@gmail.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
	<f03d577f-f905-d7cc-78db-d7e125fe1cde@slint.fr>
	<alpine.NEB.2.23.451.2008231319160.21497@panix1.panix.com>
	<266d7ec5-ac14-247e-7b1b-e7e780a47932@gmail.com>
Subject: Re: Accessible Distros for a beginner?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
Thanks everyone for helping answer my questions re Slint and Stormux and Debian.
I think I'll either start with a Slint laptop setup or a Stormux Raspberry Pi setup and just have to do some more reading and research to determine what system I want to begin with.
Great to know that Stormux will run Firefox and LibreOffice if I decide to start with the Raspberry Pi. I'll be comparing my options for a while to decide if I want to start with a laptop or a Raspberry Pi.
A question re braille displays. Do any of you happen to use an Optelec Braille Voyager 40 cell unit with your Linux setup?
I don't think I see it listed on the BRLTTY list but just thought I'd ask if any of you have tried an Optelec Braille Voyager with Linux? If you don't know, I'll just give it a try once I have a setup and see if it works. If not, I may start looking around for one that is compatible with the BRLTTY list of supported displays. But it would be great if an Optelec Braille Voyager would work.
Thanks for all your helpful suggestions so far :)
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

