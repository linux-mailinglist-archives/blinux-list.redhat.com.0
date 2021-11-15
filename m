Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BA544FCB5
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 02:20:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636939256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MhGRxdvHA7/gpbEHsuOD7jGHKKN51M1LwcSSJvvi+wA=;
	b=SsJkszGAnIFY0VWm2HgB72yjFmmwyrZnlwOY6klImyJCd+GzFI3cXf8tF7vZVGdSLT4lKu
	hVf93mU31P66niGkDm+vNcca8UJ2fW9B6EeglWXgoM+5/DtXvNO+oyVH/SwQpA7iGAmsLF
	NfMHfTI/Q8YZub2ypAZOBsYs2HTVXh0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-82-gu90eerBPyW72JI-xv-g7w-1; Sun, 14 Nov 2021 20:20:52 -0500
X-MC-Unique: gu90eerBPyW72JI-xv-g7w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 196A39F92B;
	Mon, 15 Nov 2021 01:20:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A55942B0B2;
	Mon, 15 Nov 2021 01:20:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A692818199EE;
	Mon, 15 Nov 2021 01:20:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF1Kigp013289 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 20:20:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 25E8A404727A; Mon, 15 Nov 2021 01:20:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21F0D4047272
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 01:20:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 087788022F4
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 01:20:44 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-435-mh6-Cn9JN-WkZlxZcpSpYA-1; Sun, 14 Nov 2021 20:20:42 -0500
X-MC-Unique: mh6-Cn9JN-WkZlxZcpSpYA-1
Received: by mail-qt1-f172.google.com with SMTP id q14so14128098qtx.10
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 17:20:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=A3IObnojYO+1bIfnJnh8UShlf042PXh57h/xxI5rm9A=;
	b=uL26egireCn0ocNdavHyiFI5nPi+BJd5fB/SKM2MW18ccZegOfpTDDhPnkpHGuIotk
	OyciSjerG2IgA5ZyZ2zcQdy7bEiEiU0knwW0Q3xwc0U/MQsnS3T54YUEb2RslKjCOT6V
	65wdTfEIdueRdyosYsHG8KYw6yrIBPFMLDyr2rdpxbGzbpW3tQCkn1MXjkJN8lhKUwl6
	hlNQGIlt3YX0R/L6DMO9LKEVNrIShZZyNpHTP2ii+UAZO15spDGUFI/NFkP4bGCu8nr3
	AuW7r055zvYZvTzC2lH/4dwOwgOUidIqioltykLMJfEJrWOhNC0TEGI20F0wsU5uR7yz
	NnTA==
X-Gm-Message-State: AOAM531eoEsUWaD+0F6zvHgNizn7fGxq0jKT8j8/JUBFRP8ltS1BBk6w
	95n3/aIQGgdQChtOSdwSsBQYe6MCLvMRxoRQ
X-Google-Smtp-Source: ABdhPJwOuu8mWBWBXoJotWNqMT+TR6O1+whwEHh3wisLZZw+jEztBxoIzTiRxfVFKzC2LnYbYqrXUA==
X-Received: by 2002:ac8:1e9e:: with SMTP id c30mr36018329qtm.238.1636939241472;
	Sun, 14 Nov 2021 17:20:41 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id 73sm5934464qkm.94.2021.11.14.17.20.40
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 17:20:41 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
	<558dba49-93ef-a0e7-7f3c-47c13d868af0@gmail.com>
Message-ID: <0bb088db-00fa-fa89-a0f1-8b259328d48a@gmail.com>
Date: Sun, 14 Nov 2021 20:20:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <558dba49-93ef-a0e7-7f3c-47c13d868af0@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

thanks Kyle. I will do what you did and get these things out of my screen.

Cheers,

Ibrahim


On 11/14/21 8:00 PM, Linux for blind general discussion wrote:
> Why do they make it so complicated? Wouldn't it be easier if we are 
> put on an editable screen where we can just move from field to field 
> with the tab key or the arrow keys? and at the end submit or save?
>
>
> I wish I knew the answer to that question. Over the years, I have come 
> to the conclusion that desktops and their applications tend toward 
> consistency, whereas text/terminal applications seem to thrive on 
> inconsistency and trying to be as different as possible from one another.
>
>
>> I will play with it and see if I could figure it out. If I could hide 
>> the chat and the calendar from thunderbird I would not try any other 
>> email applications.
>
>
> I don't have chat on my Thunderbird, but I did change edit -> 
> Preferences -> Chat -> when Thunderbird starts so that it now says 
> Keep my chat accounts offline. I also disabled the Today Pane and the 
> Message Pane in the view menu the first time I opened Thunderbird, 
> although I no longer see any "Today Pane" setting in View -> Layout in 
> Thunderbird 91, but I don't see it on my message window either.
>
> ~Kyle
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

