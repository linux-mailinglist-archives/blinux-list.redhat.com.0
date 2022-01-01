Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD9E48284E
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641064947;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uOykyHBQ+J3ySf30gizqPNcjps7rGn/dheFvMtiVz7o=;
	b=FXKsqYpYfMbbsSLax7AGHYRS8PHnbjQ6I+576h7n+cd54slI451H5J0E/OgsdR8TEGOLUd
	1FXGBNl1Ffd0DiFQX4kKPrVGoshy2DMUMj32F00xaxQAtho1EDOr27K4vgNc28Ums8Mu7Q
	6LjCpdtKY7PgzF98W/S+GqNStn36zq8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-sCTOQ9rCOnuTVfoBGT8JJw-1; Sat, 01 Jan 2022 14:22:22 -0500
X-MC-Unique: sCTOQ9rCOnuTVfoBGT8JJw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C79CC1006AA3;
	Sat,  1 Jan 2022 19:22:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 842B5100164A;
	Sat,  1 Jan 2022 19:22:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0A1124BB7C;
	Sat,  1 Jan 2022 19:22:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201JME2c014935 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:22:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1A8C22026D65; Sat,  1 Jan 2022 19:22:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 15E972026D46
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:22:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 240E485A5A8
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:22:11 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-629-dvAE1ELPMzKHy3TFnAPUBg-1; Sat, 01 Jan 2022 14:22:09 -0500
X-MC-Unique: dvAE1ELPMzKHy3TFnAPUBg-1
Received: from email.seznam.cz
	by email-smtpc23a.ng.seznam.cz (email-smtpc23a.ng.seznam.cz
	[10.23.18.30]) id 5171a06c44e9f336509b5170;
	Sat, 01 Jan 2022 20:22:08 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay15.ng.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Sat, 01 Jan 2022 20:22:04 +0100 (CET)
Subject: Re: Recovering shift deleted data
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
	<963111a5-9514-068d-db29-c0883322600a@gmail.com>
Message-ID: <27d3f316-bcd0-3ea4-1277-ab5d1318153c@seznam.cz>
Date: Sat, 1 Jan 2022 20:22:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <963111a5-9514-068d-db29-c0883322600a@gmail.com>
X-szn-frgn: <true>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Helo Dave,

I don't have warnings off, I was so quick on my machine, my fauld.

Vojta.

Dne 01. 01. 22 v 20:17 Linux for blind general discussion napsal(a):
> I think, since you used "shift+delete", they're gone for good. You must 
> have those warnings turned off?
> 
> 
> -Dave
> 
> 
> 
> On 1/1/22 2:07 PM, Linux for blind general discussion wrote:
>> is some way to recovery shift deleted items?
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

