Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 226C7489FD1
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jan 2022 20:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641841579;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nWl3v7Ej951h76XGog8FTEjB3zCMwDqyTgdC075jrJE=;
	b=QXg89UM54QlmPRSyznZSSaSAu4Uei5Yt6S8WR54HIlhJm6lFqgT3Red8b580IU+a8au9u9
	MP5yrMc+YmCF6+GfPPPepP4yRtVBSlBYk0GIrnni37O+AWH3tURGkzbFoJT1rt0KeXK0MM
	GeFcQsvhfM4T4fm3SVwncnbguxP/ziM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-aXt7XxkjN0yhO472BVYRAA-1; Mon, 10 Jan 2022 14:06:17 -0500
X-MC-Unique: aXt7XxkjN0yhO472BVYRAA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31DA21018727;
	Mon, 10 Jan 2022 19:06:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F79C5C232;
	Mon, 10 Jan 2022 19:06:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 596B84BB7C;
	Mon, 10 Jan 2022 19:06:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20AJ521R001708 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 10 Jan 2022 14:05:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4FEFD400F3FD; Mon, 10 Jan 2022 19:05:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4BFEA400E117
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 19:05:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 19DC63804084
	for <blinux-list@redhat.com>; Mon, 10 Jan 2022 19:05:02 +0000 (UTC)
Received: from mxd1.seznam.cz (mxd1.seznam.cz [77.75.78.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-439-JhkhGK1cMRGH8K-t8N72Yw-1; Mon, 10 Jan 2022 14:05:00 -0500
X-MC-Unique: JhkhGK1cMRGH8K-t8N72Yw-1
Received: from email.seznam.cz
	by email-smtpc9a.ko.seznam.cz (email-smtpc9a.ko.seznam.cz
	[10.53.11.15]) id 73503e4266c86d1872bacf5e;
	Mon, 10 Jan 2022 20:04:59 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay27.ko.seznam.cz (Seznam SMTPD 1.3.135) with ESMTP;
	Mon, 10 Jan 2022 20:04:55 +0100 (CET)
Subject: Re: Voxin in Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <324d87f3-44a0-e226-be6d-ee7a57d76755@seznam.cz>
	<CAGJxbF5orGAfvJTV9r3VKnKqoEHcMMDvkZX8Z4f_xgwY-Gte4A@mail.gmail.com>
Message-ID: <85691fd7-5a56-9b95-4612-655e2a781281@seznam.cz>
Date: Mon, 10 Jan 2022 20:04:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAGJxbF5orGAfvJTV9r3VKnKqoEHcMMDvkZX8Z4f_xgwY-Gte4A@mail.gmail.com>
X-szn-frgn: <7e658048-f16e-4911-8ed5-a038c1d292a5>
X-szn-frgc: <0>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

and what about new Speech-dispatcher and Pipevire? Someone wrote in some 
list, Voxin doesn't work in Arch for him.

Vojta.

Dne 10. 01. 22 v 19:57 Linux for blind general discussion napsal(a):
> It should work as of like a year ago when Voxin's creator made it work
> better with distro updates, less dependent on a specific distro version
> number.
> Devin Prater
> r.d.t.prater@gmail.com
> 
> 
> 
> 
> On Mon, Jan 10, 2022 at 12:54 PM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> 
>> Hello,
>>
>> is Voxin usable now in Arch or is needed a new version of it?
>>
>> Thanks a lot.
>>
>> Best regards
>>
>> Vojta.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

