Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F8944FCA3
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 02:00:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636938032;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dS1dOyHf42jOWLi2nMEROA1zPstmdh98l/71YeWLNCY=;
	b=V7Nm/PmbGRPZ7VXI+KCQwoUsgkk5fyykqVacj2ZM9I+tbDAitpp4/WSQSI7BvIKsg+iCJW
	tOIUFtsTnxxUdh/j7vteYOfghAfKFLwQlNddc1XMBHZ8HigJYhFFebhgp2htMw/LrMdRfn
	4VUd3tuzYguC/uXw2xVLZlAWdDsRtgM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-VDOwE6kLMoSGGzO07iQ5HA-1; Sun, 14 Nov 2021 20:00:29 -0500
X-MC-Unique: VDOwE6kLMoSGGzO07iQ5HA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9EFAA8799EB;
	Mon, 15 Nov 2021 01:00:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 12D9C19EF9;
	Mon, 15 Nov 2021 01:00:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9AFAA4E58F;
	Mon, 15 Nov 2021 01:00:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AF10GZ1012356 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 20:00:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 50DFC4047272; Mon, 15 Nov 2021 01:00:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D438404727A
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 01:00:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34291811E76
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 01:00:16 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-329-J6dbby4GOjSawZ-ciZjVWA-1; Sun, 14 Nov 2021 20:00:14 -0500
X-MC-Unique: J6dbby4GOjSawZ-ciZjVWA-1
Received: by mail-qv1-f51.google.com with SMTP id kl8so5756172qvb.3
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 17:00:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=oPbtfdyX29MTQuwB4zcsbLY0F7Cx3pKcC2eHIiT9Zqo=;
	b=Q06oYR4IGqJJIs93xq87vUikQo3MfKA5gOlU2XBRCCEF+mP1BdckMLM7Nis50gs6W9
	AFAxMk6F9GNJg8ORwc2NkoX6S9kGsKOsCrINNwIhUOgjG/JJAR1B1wCrZMqFLZ4VKE6t
	B1U8wU3o+oyUal8+kf2ZMnlhywzNbed49Zu7u5JbNaeSyzkRW2p9naPO6Wb9JjCyYp5/
	YbkzUGrSHQcKmMCvE5LSvWQketgWsWuL9wnev5+NZzLA0hMu/w9xLk5apsvw65GB/yO4
	I4mbY/TeM0r4mLUYuZ3H0BDvd7o3HGAzt4IQ7mCZm3CLK0YZ/PviYHbWEX8j79Aljv7B
	QPQw==
X-Gm-Message-State: AOAM532SVHfpfwMf6KwZYhvNdP88uxyAQVYCw4OYoOhtSiApxdERlwC0
	9xDxQ7kBBvatK/HqNf/RY94gmZ6q3o4=
X-Google-Smtp-Source: ABdhPJxYqkqEvZ+XK9M4grE0c9Xs68kL9I15GG6xF9E1KuDPPE7H5yVfue6Jo888Um69qQ6hXHwxRQ==
X-Received: by 2002:a05:6214:1c86:: with SMTP id
	ib6mr32438376qvb.26.1636938014112; 
	Sun, 14 Nov 2021 17:00:14 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id f9sm7125105qtk.36.2021.11.14.17.00.13
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 17:00:13 -0800 (PST)
Message-ID: <558dba49-93ef-a0e7-7f3c-47c13d868af0@gmail.com>
Date: Sun, 14 Nov 2021 20:00:13 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
	<c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
In-Reply-To: <c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Why do they make it so complicated? Wouldn't it be easier if we are put 
on an editable screen where we can just move from field to field with 
the tab key or the arrow keys? and at the end submit or save?


I wish I knew the answer to that question. Over the years, I have come 
to the conclusion that desktops and their applications tend toward 
consistency, whereas text/terminal applications seem to thrive on 
inconsistency and trying to be as different as possible from one another.


> I will play with it and see if I could figure it out. If I could hide 
> the chat and the calendar from thunderbird I would not try any other 
> email applications.


I don't have chat on my Thunderbird, but I did change edit -> 
Preferences -> Chat -> when Thunderbird starts so that it now says Keep 
my chat accounts offline. I also disabled the Today Pane and the Message 
Pane in the view menu the first time I opened Thunderbird, although I no 
longer see any "Today Pane" setting in View -> Layout in Thunderbird 91, 
but I don't see it on my message window either.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

