Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 651F6365EA9
	for <lists+blinux-list@lfdr.de>; Tue, 20 Apr 2021 19:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618939973;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ko9qw3eGNJVH9ux1r65MKYCjVefuAPjpnbWu7A1Prwk=;
	b=Ozl7CS1/wnd1SnPyjpEihHXt7AREPLwPWijEu+jlh2oPAw6/Q1mVgmpHlQLy9TGillDsII
	B9sLgiHERMSoQUJPaRLVx3oqjvHwh8cT4+uXVCUJspSwrZWylapkB5gib2x3/+0pcc7Ese
	VNZpNcyO55/KRC4cuyZ1C//5Wxba5+4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-MUc-I7auPICDesmoks2r7w-1; Tue, 20 Apr 2021 13:32:51 -0400
X-MC-Unique: MUc-I7auPICDesmoks2r7w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52CDB10054F6;
	Tue, 20 Apr 2021 17:32:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF0B05D6AB;
	Tue, 20 Apr 2021 17:32:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 042FE1806D16;
	Tue, 20 Apr 2021 17:32:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13KHWcZP024855 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 20 Apr 2021 13:32:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C4A199D496; Tue, 20 Apr 2021 17:32:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEB7DBE5D1
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:32:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BACA10334A3
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:32:36 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-492-2IbL4fWQOqKXXJgC85Ae9w-1; Tue, 20 Apr 2021 13:32:33 -0400
X-MC-Unique: 2IbL4fWQOqKXXJgC85Ae9w-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	121842978CB1_7F0F5EB
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:29:02 +0000 (GMT)
Received: from pta-gwia2.csir.co.za (pta-gwia2.csir.co.za [146.64.54.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTPS id
	C71B12976506_7F0F5DF
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 17:29:01 +0000 (GMT)
Received: from marge.meraka.csir.co.za ([146.64.28.1])
	by pta-gwia2.csir.co.za with ESMTP (NOT encrypted);
	Tue, 20 Apr 2021 19:29:00 +0200
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 51C3826D9F
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 19:29:00 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id YE9nty9zJN_u for <blinux-list@redhat.com>;
	Tue, 20 Apr 2021 19:29:00 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Tue, 20 Apr 2021 19:29:00 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1lYuBH-0006xY-Ti
	for blinux-list@redhat.com; Tue, 20 Apr 2021 19:28:59 +0200
Date: Tue, 20 Apr 2021 19:28:59 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Using Sox to volume Level
In-Reply-To: <20210420.165240.599.3@[0.0.0.0]>
Message-ID: <alpine.DEB.2.21.1.2104201924220.26713@willempc.meraka.csir.co.za>
References: <20210420.165240.599.3@[0.0.0.0]>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
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

for f in *.mp3;do sox "$f" tmp.mp3 norm&&cp tmp.mp3 "$f";done
Regards, Willem

On Tue, 20 Apr 2021, Linux for blind general discussion wrote:

> I have a playlist which I want to have all at the same volume; some tracks are loud and some are so quiet I have to crank. Not conducive for a smooth listening experience. What can I pass to sox to have this directory of files leveled?
> for f in *.mp3;do sox --insert-fun-options-here "$f";done
> Like that.
>
>
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

