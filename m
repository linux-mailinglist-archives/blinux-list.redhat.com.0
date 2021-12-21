Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C4047C414
	for <lists+blinux-list@lfdr.de>; Tue, 21 Dec 2021 17:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640105219;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mzoOouQfqv7QwrkhjzQYYZ8eCnYQRjPZojDP5J25q48=;
	b=Ls+0OEgBgmgm81GEP9JJUUXIdnV9fiF+Jya1bCUu9XFSx5G0Y5ifCydA6l1jjjDjR91n6g
	LT1BI3oJYC/0yBMEYPy5PJH8kUgwD53vtv5AT5NJ/ey396I/1hgSJsdpeTtqQcGJwCbgZP
	I/Lsj0ANoLxC73G9p7ueeVYB/XvnmFI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-UDl9kQvxMFOrItc06GqGaQ-1; Tue, 21 Dec 2021 11:46:57 -0500
X-MC-Unique: UDl9kQvxMFOrItc06GqGaQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D96771006AA4;
	Tue, 21 Dec 2021 16:46:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E50995E486;
	Tue, 21 Dec 2021 16:46:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2D6144BB7C;
	Tue, 21 Dec 2021 16:46:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BLGkQrT019110 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Dec 2021 11:46:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6514540CFD16; Tue, 21 Dec 2021 16:46:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6043540CFD0A
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 16:46:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4646C2B478CA
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 16:46:26 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-623-2xZf6xx-OJm8vCQpaOwUEg-1; Tue, 21 Dec 2021 11:46:24 -0500
X-MC-Unique: 2xZf6xx-OJm8vCQpaOwUEg-1
Received: by mail-qk1-f169.google.com with SMTP id de30so13180891qkb.0
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 08:46:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=f9WhBWY0ILMy/hu4at+SHkLjQ5P1crNtSiZ5OaRNZ+M=;
	b=RP4rGxkyR6i9MkzPGYAzR3jY59gRJz2dlzqes5BRadmmk5/76ZKYkU7Cl8uyoIbk8E
	Gjlm5lf0lhynU8dA2MBRu5W4jekD+38crhMmaiGfy2y4oBLSBT6P3GS+DqCw50Sk244z
	l6TH4zg2/BhjeamuqdnQcDdUl+LfAonZxu++E14Iwc94RSUTOt6lbBTNROTepQtK5Lr+
	YrqYfkpWFrZKwLbuML+o5AG1KP5cbJ75VezlEz8yoDKtwRNXQXEsiMcujhUeLDFNDGRM
	uA9sl0aMgOujb80c0wzmWEzlQrSe6YTIhqB+9XfBb9JJkPYSMPCkZG5XGIFgB45yYv92
	0e8A==
X-Gm-Message-State: AOAM531MVyZpapV7SLkNmEZCqVwvvNQYcEuQrqBlUoaE/qZw6U4Pcq3i
	X39yfQ5K9unLFLGNicZWSF9ntSYBKtk=
X-Google-Smtp-Source: ABdhPJyl7141J/9GxTX0ocimonZ4Hzb+7shHOkmF1mlyMh9ljL6Gu1Xy1sbx6I+2k7LVKbZxM0ddDA==
X-Received: by 2002:a37:6682:: with SMTP id a124mr2623584qkc.110.1640105183283;
	Tue, 21 Dec 2021 08:46:23 -0800 (PST)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10]) by smtp.gmail.com with ESMTPSA id
	u17sm14691088qki.2.2021.12.21.08.46.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 21 Dec 2021 08:46:22 -0800 (PST)
Message-ID: <444374c1-a744-f908-a6cf-aae16d207cee@gmail.com>
Date: Tue, 21 Dec 2021 11:46:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: Dealing with seemingly blank combo boxes.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CAO2sX32o7d5EwMkWRVs4fQVjOFLkGmhNotbmO4+QGNkw4vAeCw@mail.gmail.com>
In-Reply-To: <CAO2sX32o7d5EwMkWRVs4fQVjOFLkGmhNotbmO4+QGNkw4vAeCw@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I see this behavior on the Discover Banking website. Particularly when 
trying to download monthly statements. In my case, I can open the combo 
box, but cannot move among the various entries. My solution so far is to 
boot into Windows and complete the task using NVDA and Firefox. I have 
run into some other navigation issues on the Capital One website and 
again get around them using Windows.
Sorry I don't have a better solution.
John


On 12/20/2021 1:36 PM, Linux for blind general discussion wrote:
> Good Afternoon,
> 
> I don't know if there are any other heavy users of Kickstarter on
> either of the lists I'm sending this to, but if there are, I'm sure
> you've noticed that the various third party services creators use for
> post-campaign pledge management aren't always the most accessible.
> 
> Well, the newest addition to the pile of screen reader unfriendly
> pledge managers is something called Pledge Box, and the main problem
> I'm having are it's combo boxes.
> 
> I can jump between them with the c key as usual, and I can expand them
> just fine, but once expanded, there's nothing there, Orca is
> completely silent until I exit out of the combo box. I can't recall a
> similar issue on any other websites, and I've tried every trick for
> working around bad web design I can think of.
> 
> Unfortunately, since the pages giving me trouble are part of
> completing an order, I can't really provide a link.
> 
> So any tips or potential workarounds I might not know of?
> 
> If it matters, I'm using:
> 
> Orca 41.1
> Firefox ESR 91.4
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

