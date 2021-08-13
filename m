Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id D2E623EBAFC
	for <lists+blinux-list@lfdr.de>; Fri, 13 Aug 2021 19:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628874229;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6x1TCWQ4qnR6EMFBpByEwVOzzGWufkPnQFFLh8RAWU8=;
	b=YwqU5cgIVFNhTWxYYd2D+LK7ntv8vZHCxOzbjOa8oYFKs8k46S+GoqBEnFz2vfvc2fv8FK
	hpZTiKfP6nOrrGqP0/pLfbg0ELfO/NCATl9Ad7maleX5N2AJnsmRVSOf2Ao1dZsyabAXIF
	4ZLfdBrSc/r/r08E2BpAWoK2Rd9gb8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-N_ktLdD2PzW6SzHVIh6rmg-1; Fri, 13 Aug 2021 13:03:47 -0400
X-MC-Unique: N_ktLdD2PzW6SzHVIh6rmg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 58D1C801AEB;
	Fri, 13 Aug 2021 17:03:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A36B60C04;
	Fri, 13 Aug 2021 17:03:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 641274BB7B;
	Fri, 13 Aug 2021 17:03:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17DH3TeT017818 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Aug 2021 13:03:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5912520ACF8A; Fri, 13 Aug 2021 17:03:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53E9C20ACF76
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 17:03:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42089866DF5
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 17:03:26 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-470-fu6sgKNiOIiXYnX_nrsheQ-1; Fri, 13 Aug 2021 13:03:23 -0400
X-MC-Unique: fu6sgKNiOIiXYnX_nrsheQ-1
Received: by mail-ed1-f52.google.com with SMTP id i6so16413869edu.1
	for <blinux-list@redhat.com>; Fri, 13 Aug 2021 10:03:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=Gdt0CsTtAQB91W8jiP+Uw66GGtf8ZuNGKwKRV2w2j+o=;
	b=kZ4LVGRG6s0oPLSil8HAKHbD0qjxlg90caKD93gUJxN0M2b/IZg4/uWMMGEiO2IquE
	qxOU/SKi7u/9flcggN84qMOJWawhk/2jqhZEYJVQ3abedn+Ic8zdXl/uvWw+5C/Hy9Hs
	WGWOSoJDxRueZzTlSamPXp8KYiUMkLE8kS3sxdiaAZ4hIzhg0n+KpTQ6+KUk+jF9oUAl
	RpXRb+JW/1iSqlKbBk0AhjLc/EX+3M/3Ld4xruMO+0Gm9Q9GwY9sACMXrfnUiIYzDXkK
	1dfh1a9JwPbF+UnYw9OPqodBKGw/QwPkcTWQoMJgm+OBePmNmxdtzZ7md2gv5keTy37s
	iyGA==
X-Gm-Message-State: AOAM531QCmnhQOCiYjBcDbp0h2Xc3jJyfOp3bLULPJzpG/ODadUrfIyk
	cZhS/TNIWikB5FIyMZHtUovXtHD3D3hm6w==
X-Google-Smtp-Source: ABdhPJxS10oMp6ckPQL3XdztEJkKMEwUsW0nUuby3We/w4Ga+BUvH2nNhvRWM7lS8vlRTXioUvVkQA==
X-Received: by 2002:a50:da0e:: with SMTP id z14mr4409148edj.73.1628874201903; 
	Fri, 13 Aug 2021 10:03:21 -0700 (PDT)
Received: from [192.168.8.113] ([197.185.106.61])
	by smtp.gmail.com with ESMTPSA id u2sm1165310edd.82.2021.08.13.10.03.20
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 13 Aug 2021 10:03:21 -0700 (PDT)
Subject: Re: Changing Keyboard layout in Gnome
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a551801c-079e-9515-0e20-ed4e552bbb96@gmail.com>
	<20210813163907.wdlet72ewhmutadf@alex-pc>
Message-ID: <2b19d652-7205-ef77-f95f-5e74fd4246a6@gmail.com>
Date: Fri, 13 Aug 2021 19:03:17 +0200
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Appologies,


I see you can set the keymap with *set-x11-keymap, however, it takes 
dvorak-l as invalid, which is really odd, since that is the keymap on my 
console.*

*
*

*Regards,*

*
*

*Brandt
*

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

