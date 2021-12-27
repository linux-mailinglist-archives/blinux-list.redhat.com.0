Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EAB4804A9
	for <lists+blinux-list@lfdr.de>; Mon, 27 Dec 2021 21:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640638283;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ElOLyVFa8bD0hiEnMixzD7nwzMJgkSQSOIp8tja27wQ=;
	b=CBXtWzFWAdg4k1pxW7mMEvhdpeUn5xkrPtEoJVp68W5ihuwNQNWhvc1ClWh0Rxu7Bap0vE
	k9zpbBP1CzTWPdPthnBsp5BQ9HFlAA9anexd96C90ViLQ8o7PiFZ2hIkjZhS2cfSWwyrPG
	7GJCk2bmBlWZdWBtvcGtt4IC7spbLyE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-77-0LXFU_KRPiqYDkVRWP-fDg-1; Mon, 27 Dec 2021 15:51:20 -0500
X-MC-Unique: 0LXFU_KRPiqYDkVRWP-fDg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B367381CCB9;
	Mon, 27 Dec 2021 20:51:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38C035BE1C;
	Mon, 27 Dec 2021 20:51:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4E1794BB7B;
	Mon, 27 Dec 2021 20:51:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BRKp9LM004186 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 27 Dec 2021 15:51:09 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7F6364010E9C; Mon, 27 Dec 2021 20:51:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79DB040CFD07
	for <blinux-list@redhat.com>; Mon, 27 Dec 2021 20:51:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6467085A5A8
	for <blinux-list@redhat.com>; Mon, 27 Dec 2021 20:51:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-245-gaiuBQIoPrWOTjryD7w9Mw-1;
	Mon, 27 Dec 2021 15:51:07 -0500
X-MC-Unique: gaiuBQIoPrWOTjryD7w9Mw-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 10E10A38E1
	for <blinux-list@redhat.com>; Mon, 27 Dec 2021 20:50:58 +0100 (CET)
Subject: Re: what is the best virtualiser solution for running windows on
	ubuntu 18.04
To: blinux-list@redhat.com
References: <25034.9845.997655.909319@gargle.gargle.HOWL>
Message-ID: <454d8aa2-a22b-81ab-834d-40442ef7bb40@slint.fr>
Date: Mon, 27 Dec 2021 22:51:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <25034.9845.997655.909319@gargle.gargle.HOWL>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use Qemu and recommend it.

Cheers,
Didier

On 27/12/2021 21:47, Linux for blind general discussion wrote:
> I still need to run Windows apps every so often so am looking for the
> best virtualiser to run a Windows version. Sound seems to be the
> problem. My organisations preferred solution of virtualbox is way too
> choppy to run  NVDA usably. The machine is a 2019 lenovo laptop with 8
> processors and 16gb. I'm running ubuntu 18.04 currently at kernal
> 5.4.0.
> thanks in advance
> Peter
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

