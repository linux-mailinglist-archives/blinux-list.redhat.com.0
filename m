Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CCE6E4961A1
	for <lists+blinux-list@lfdr.de>; Fri, 21 Jan 2022 15:57:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642777047;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mEkMANipoOIRa2mNSBP6o02midVUPcvcvY56Z6Ly9zg=;
	b=AxIm4vm5GHBmzMYB/JLFfZ/2QrMbyV9fkl5ZPZaCtz1ZNvl334c5kPGGxwRZAcP9qwDQZU
	HFbdDBPMfRpPEAhRHBEzvxC8QqF4+dtqHwHUa7nbChoVmEVUB9jsXpEnD0S+zfPrmvsqTe
	yUu125psb1VUxpLDIqDfCKvDa+RdzIg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-583-3FuH_P7bN3SoqnodavgDuw-1; Fri, 21 Jan 2022 09:57:24 -0500
X-MC-Unique: 3FuH_P7bN3SoqnodavgDuw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC17783DD20;
	Fri, 21 Jan 2022 14:57:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6247C70D45;
	Fri, 21 Jan 2022 14:57:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3AD7F1806D1C;
	Fri, 21 Jan 2022 14:57:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20LEhjtg020417 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Jan 2022 09:43:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 507EE492D53; Fri, 21 Jan 2022 14:43:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C976492CAB
	for <blinux-list@redhat.com>; Fri, 21 Jan 2022 14:43:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F07353C11C73
	for <blinux-list@redhat.com>; Fri, 21 Jan 2022 14:43:44 +0000 (UTC)
Received: from smtp.outgoing.loopia.se (smtp.outgoing.loopia.se
	[93.188.3.37]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-338-pe1isSMbP4-WenJ9tCklnA-1; Fri, 21 Jan 2022 09:43:39 -0500
X-MC-Unique: pe1isSMbP4-WenJ9tCklnA-1
Received: from s807.loopia.se (localhost [127.0.0.1])
	by s807.loopia.se (Postfix) with ESMTP id 563C62F183F2
	for <blinux-list@redhat.com>; Fri, 21 Jan 2022 15:43:37 +0100 (CET)
Received: from s934.loopia.se (unknown [172.22.191.6])
	by s807.loopia.se (Postfix) with ESMTP id 479532E28D23
	for <blinux-list@redhat.com>; Fri, 21 Jan 2022 15:43:37 +0100 (CET)
Received: from s475.loopia.se (unknown [172.22.191.5])
	by s934.loopia.se (Postfix) with ESMTP id 462F17DC4E0
	for <blinux-list@redhat.com>; Fri, 21 Jan 2022 15:43:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at amavis.loopia.se
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
	tests=[ALL_TRUSTED=-1] autolearn=disabled
Received: from s645.loopia.se ([172.22.191.5])
	by s475.loopia.se (s475.loopia.se [172.22.190.15]) (amavisd-new,
	port 10024) with LMTP id DAmWnPdj5hXH for <blinux-list@redhat.com>;
	Fri, 21 Jan 2022 15:43:36 +0100 (CET)
X-Loopia-Auth: user
X-Loopia-User: anders@pipkrokodil.se
X-Loopia-Originating-IP: 146.70.21.45
Received: from smtpclient.apple (unknown [146.70.21.45])
	(Authenticated sender: anders@pipkrokodil.se)
	by s645.loopia.se (Postfix) with ESMTPSA id C33BF157B930
	for <blinux-list@redhat.com>; Fri, 21 Jan 2022 15:43:36 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: cell phone industry practices
Date: Fri, 21 Jan 2022 15:43:36 +0100
References: <63f587bb-c045-5b27-4252-26d68fd14c7@panix.com>
	<CAGJxbF7Cx=ZJLCkB=_2k=tquOKidY6O5U8WB0UTgQ-nMqnLH8A@mail.gmail.com>
	<4888dc7a-f32c-25ca-61c4-4c719e6fb255@panix.com>
To: blinux-list@redhat.com
In-Reply-To: <4888dc7a-f32c-25ca-61c4-4c719e6fb255@panix.com>
Message-Id: <942C6757-E1FC-489C-B0E8-53C8E9C99C66@pipkrokodil.se>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20LEhjtg020417
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!
I saw some  old Nokia communicator if you remember that model which had both android  and a dual boot with some linux bistro.
That phone is quite steep though and has a query keyboard.
/A

> 21 jan. 2022 kl. 00:00 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> 
> I think we'll have to keep an eye on mobian and see where that heads in
> the future.
> 
> 
> On Thu, 20 Jan 2022, Linux for blind general discussion wrote:
> 
>> Of course not.
>> Devin Prater
>> r.d.t.prater@gmail.com
>> 
>> 
>> 
>> 
>> On Wed, Jan 19, 2022 at 5:43 PM Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>> 
>>> Does anyone know of any cell phone ready Linux operating system that comes
>>> with an accessible desktop environment that has active support
>>> I'm curious about this as a result of cell phone industry practices.
>>> Specifically, no last security update date and no operating system update
>>> date is on packaging or listed on any of the cell phone screens.  This
>>> means if your phone is compromised once these two dates have passed it's
>>> time to throw your phone in the trash since even if you do a factory
>>> reset, the phone can be easily compromised again.
>>> Even if anything like this is available it will be a challenge to find
>>> competent technical support to replace the operating system on the phone
>>> and hook it up with the Linux provider's package repositories.
>>> 
>>> ?
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

