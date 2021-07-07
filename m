Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 836443BE881
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 15:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625662921;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wAMCcIjIgPt7VUEqaxixUfhMybmHBKt5K6wibCBsqwo=;
	b=cjNr2rus2xUV1Dzz5ToXsDBzNlYPdOlZMRXG6eyoJYrk6loZtLcidNycq/DMDV5EPoETuj
	f2ocSQqJ5HFdc3XmNJRsCQze3uAgBgp9p8X9yMI4bI8hCR0WEyR0OQnSACURlMOzKuvuqW
	JMD8kBj0xmLBhOdxgfuiSTNVOgJflVE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-2O1gZ1zfMRybJafuTCWsNg-1; Wed, 07 Jul 2021 09:01:59 -0400
X-MC-Unique: 2O1gZ1zfMRybJafuTCWsNg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 206AC8015F5;
	Wed,  7 Jul 2021 13:01:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C58CF5D6A8;
	Wed,  7 Jul 2021 13:01:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D597D1832EAD;
	Wed,  7 Jul 2021 13:01:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167D1Rlx014307 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 09:01:27 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 167C620296A5; Wed,  7 Jul 2021 13:01:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 115132029F6C
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:01:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7B419802E5E
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 13:01:23 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP id us-mta-361-8egzqSojMWCIAwtYa3GrKQ-1;
	Wed, 07 Jul 2021 09:01:21 -0400
X-MC-Unique: 8egzqSojMWCIAwtYa3GrKQ-1
Received: from [192.168.1.140] (pc19f8990.dip0.t-ipconnect.de
	[193.159.137.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest
	SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPSA id 8F0972AD924
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 14:51:53 +0200 (CEST)
Subject: Re: Starting linux again
To: blinux-list@redhat.com
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
Message-ID: <d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
Date: Wed, 7 Jul 2021 14:51:48 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from base64 to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 167D1Rlx014307
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

Hi,

I'd still use Debian because IMHO it is the best distro regarding 
accessiblity support, easy and uncomplicated installation for a blind 
user with braille and speech, e.g. I am using Debian for more then 20 
years now and I not missed anything. I am also working in the console 
most of the time.

Cheers,

   Schoepp


Am 07.07.2021 um 14:37 schrieb Linux for blind general discussion:
> I've been very busy the last few years and have been using the terminal on my Mac for a lot of the things I used to do in linux. Now I would like to get a laptop for linux again. I mostly want it for command-line use rather than for the gui though I suppose I may end up expanding to that at some point. I mostly used debian when I was using linux with a few excursions into arch. I am totally blind and use speech and braille but the more I can use braille, the happier I am. I used thinkpads a lot and also converted old Apple machines but I don't have a spare Apple computer right now and probably would go for Lenovo. Can somebody tell me which dists are now the best for installing linux, especially knowing that I want to use the command line a lot? If I get a Lenovo with linux on it, am I probably going to want to reinstall anyway and how hard is that nowadays? Obviously this email is prompted a lot by the thread about getting a laptop for linux. It really feels funny writing about th
 is
>    as if I was a complete novice when I used to install and set up systems all the time but I guess one has to restart somewhere.
> 
> The only problem I had with my Lenovos, and this was after years of use, was having the fan quit. Some of this was just the age of the Lenovos but it seemed to me that it was becoming harder to know how to set up the system so the fan worked right where at the beginning of my use of linux I never had to pay attention to fan settings. It may of course be that it was mostly the age of the laptops - I got years of use out of them - but I'm still a bit hesitant because of that.
> 
> I know this email covers a lot of territory - I'm basicly thinking out loud - so just respond to whatever you know and can address.
> 
> Thanks for any suggestions.
> 
> Thanks.
> 
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

