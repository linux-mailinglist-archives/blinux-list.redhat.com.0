Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 7825B12B08A
	for <lists+blinux-list@lfdr.de>; Fri, 27 Dec 2019 03:19:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577413159;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=y7fQ8i6i98QEsjunS33V23STHco8JLI+bochaL4eUok=;
	b=QU7gRxkKeKpVgfy8wdkKOWRG4A/rvYW7iqgDC7F1ziQeogjEuzBRzgx5zWe42fCdiaVPQX
	kJLWU06ROh9HS1dDVmZETwMtCtxsO1rA2cx8ViqI7gFQuef5p9Qve/jrQXVdgHoDek+nyb
	7isd5BOHTy2sxDXiu6BoiYukwLLTR10=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-yeomTpYrMnayjsH2sgLPfA-1; Thu, 26 Dec 2019 21:19:15 -0500
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02923800D4C;
	Fri, 27 Dec 2019 02:19:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B4F9691AD;
	Fri, 27 Dec 2019 02:19:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 007181809567;
	Fri, 27 Dec 2019 02:19:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBR2J4OZ025130 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 26 Dec 2019 21:19:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B66D12166B28; Fri, 27 Dec 2019 02:19:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B18522166B27
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 02:19:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1790B8ED1EB
	for <blinux-list@redhat.com>; Fri, 27 Dec 2019 02:19:02 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-150-SPdXWqB7PZiyFmgOoPPP8w-1; Thu, 26 Dec 2019 21:19:00 -0500
Received: by mail-ot1-f42.google.com with SMTP id 66so34483216otd.9
	for <blinux-list@redhat.com>; Thu, 26 Dec 2019 18:19:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=BTiBETM8uoXFgWRXXVQnuUVX4B9Ecb/x+dAPHOBCMIY=;
	b=JmkojbtXFkbc9wa7FG3GNcnWx/HsELhdQKgb4tSXNk5OVNSZ+3y5PCxX00z0Gkq21B
	kQzJFlp9jjZ6wRbKpprIi2F3IgZ7jqV6oUfy17LHeY/GT7GZCdV8/EIigxofy9G9Oq1Q
	kuflHdZe3uaMg/0FyYc63JpIqpz7IzEc3nmoHtbYOlkdbu2gcnq+WWy6agKAVEk+RWAM
	In08E9WmHQ0W6V1/V2rngtExurLZS6QBV8HT8Ctdi4vLfYgCrtNhJUiyHduqLhi7hcHy
	YmOvTZIbE9llKAM/ZrF0JhYkS/cUuT9l+4U9V1TVz59c5kRMov/mkOPAWlZfBlYXyhM7
	c2aw==
X-Gm-Message-State: APjAAAU8KKCRMhZFgxjl6QSJEB0eWUfI/5lNXAB8PCys2X4tG4Dmee2S
	IDOKZJR50sZUdH7QtfcyFb/Fgms9
X-Google-Smtp-Source: APXvYqw93PhsZdAEgDtcneIj7UnBrzj6oQ9mJLDEmp9+UMJbzKG25noxTMk9Qf5y+dhVhRcU3K98EA==
X-Received: by 2002:a9d:6c92:: with SMTP id c18mr38126629otr.157.1577413139581;
	Thu, 26 Dec 2019 18:18:59 -0800 (PST)
Received: from [192.168.1.14] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id 6sm5021670oil.43.2019.12.26.18.18.59
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Dec 2019 18:18:59 -0800 (PST)
Subject: Re: I question about how does a blind person get speech going on a
	Ubentu System.
To: blinux-list@redhat.com
References: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
Message-ID: <b0cf008e-d9f3-fbd0-9ee5-ce42204852b7@gmail.com>
Date: Thu, 26 Dec 2019 20:18:58 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CF33CC84-F8ED-4994-B8A4-85478733D19B@gmail.com>
Content-Language: en-US
X-MC-Unique: SPdXWqB7PZiyFmgOoPPP8w-1
X-MC-Unique: yeomTpYrMnayjsH2sgLPfA-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Do you mean Ubuntu 18.04.3? I haven't tried this version yet, but I got 
Orca going on an 18.04.1 install a while ago by just hitting the key 
sequence to start Orca, namely alt+super+s. BTW, this is the same as 
alt+windows+s.


On 12/26/19 5:58 PM, Linux for blind general discussion wrote:
> Hello my subject line says it all, I am totally blind. I downloaded a 
> copy of Desktop Ubentu 18.3. This distribution has been installed in a 
> virtual Machine. After installation the system is running the GUI 
> Interface. I would like to use Orca four scream Reading access? How 
> can I due this?
>
> Sincerely Maurice Mines.
>
> PS this email has been dictated to my Mac Book pro. Please forgive any 
> mistakes?I hope that this is readable?
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

