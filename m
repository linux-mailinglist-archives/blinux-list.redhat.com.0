Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 75CAD3EBA7A
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 18:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628873880;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nBw6fTEXrQRta2hvjC86WkSuZibvc4Ex8ddDItCq7dY=;
	b=BRi8TOzpGVOgH/1B1KbWY35g3OWoSsCNaUfgUc78O6aRLLitkBJXdnC8bsjXwczOfAF3eo
	7URGrFEVQG+UNJB/03rkfjdDiMJ55lXKnGATsF02Wjber7gLJEI8GppS8gosCCmPCfO7ul
	GgkkyFylJ5Tg2yxR+rpxPCwUDGAAAlo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-465-YuZgXvWaPCG80uJi120IdA-1; Fri, 13 Aug 2021 12:57:58 -0400
X-MC-Unique: YuZgXvWaPCG80uJi120IdA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47FCE760C5;
	Fri, 13 Aug 2021 16:57:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90A7D5D6D5;
	Fri, 13 Aug 2021 16:57:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3DE164BB7C;
	Fri, 13 Aug 2021 16:57:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DGqXVH016474 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 12:52:33 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E5B8C20C17C3; Fri, 13 Aug 2021 16:52:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E0B8620C17C2
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 16:52:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B783800B28
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 16:52:30 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
	[209.85.218.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-527-GW3O2zSMObq8AeW4t2v5tg-1; Fri, 13 Aug 2021 12:52:27 -0400
X-MC-Unique: GW3O2zSMObq8AeW4t2v5tg-1
Received: by mail-ej1-f50.google.com with SMTP id bt14so3604121ejb.3
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 09:52:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=0a3ayRmq/zQQ8iZA7aiImLugjmi4iqdH4Xi+U2+Arow=;
	b=BXtYZAVa/DcY80E7Vg3j6dEeCEY8SxflSvrGRIWd51se/WFBnTTYQSxFXzF6InL7Ci
	YHRoXL35bIZMrUNsxDDIg87LnARSJjsGZdHeYrrBKFoZV2d+kHxYCAWzYVwpjOG7VxqQ
	r36VhsqI8eVHarC4/jsqDQ26po/qpleDzKaKaGUU3kIFGhkpku9VyYjz0DX+sFK9zdGg
	v7LgTP6hR+PZatNK7K+XCd73yBdrfe2ko3Vtf0YPM8QqJmNs7gXNFTlYOKGNbm/YncVc
	xqZrTo9bnFgmI876a59+GLPLDRn21/ihn9tslBrPnzZ9zWnPxPzSdU6VbWN/VYRUmnLG
	cwkw==
X-Gm-Message-State: AOAM53210Cr5sABYc8/VYG+bqVWfkksHaGKBtScfSz9DTdJJu/Md7eTa
	9QaD/JpaL+bbc/gX4wWOBRiSaofK7pkcXQ==
X-Google-Smtp-Source: ABdhPJxDP9p0Rcukg24x4sAn4M4No1vMSR4tbr/O2HiCFtDg7dO2oL4uj6KhU7csqmgAFDQMeRXAxA==
X-Received: by 2002:a17:906:d52:: with SMTP id
	r18mr3392680ejh.47.1628873546021; 
	Fri, 13 Aug 2021 09:52:26 -0700 (PDT)
Received: from [192.168.8.113] ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id f8sm1176925edy.57.2021.08.13.09.52.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 13 Aug 2021 09:52:25 -0700 (PDT)
Subject: Re: Changing Keyboard layout in Gnome
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a551801c-079e-9515-0e20-ed4e552bbb96@gmail.com>
	<20210813163907.wdlet72ewhmutadf@alex-pc>
Message-ID: <d591fc39-34db-3f63-ea1a-38cc51beab2a@gmail.com>
Date: Fri, 13 Aug 2021 18:52:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210813163907.wdlet72ewhmutadf@alex-pc>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


Not quite.


#localectl set-keymap


works in the console, but does nothing to desktop environment layouts.


Warm regards,


Brandt

On 8/13/21 4:39 PM, Linux for blind general discussion wrote:
> On Fri, Aug 13, 2021 at 03:54:11PM +0000, Linux for blind general discussion wrote:
>> Hi all,
>>
>>
>> I tried to install vanilla arch again, and was successful, but for some
>> reason Mate didn't want to install. I am now making do with Gnome, not my
>> favourite desktop, but anyway.
> can you tell me how you tried to install mate. and what the error was?
>
>> I am one-handed, and have taught myself Left-Handed Dvorak. I need to change
>> the layout in Gnome, otherwise I am as slow as can be. If anyone knows how
>> to do this either in the GUI using orca, or even better, which config file I
>> can go edit to do this, I would be really grateful.
> hello Brandt. you can change keyboard layout with localectl[1] command.
>
> [1]: https://man.archlinux.org/man/localectl.1
>
>> Warm regards from a cold Johannesburg,
>>
>> Brandt Steenkamp
>>
>> Sent from my Arch powered ice heater!
> --
> Sincerely, Alexander
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

