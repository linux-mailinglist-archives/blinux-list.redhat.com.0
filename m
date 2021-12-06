Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D08469D39
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 16:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638804723;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JQzEh5WoEyAjsTIf/B3ch+2NfackiUo6st4dJ3oxWf4=;
	b=S6qxJkwgKzjH/XxBn+U0EwBEKx86RcGd2Jb1WYvYvaBjKT41PRiIXY4lsxpgp1EBtWJ8Yk
	mvMUSEXy2Ynxka0VcAB3UIPtkWHVVcTLfNvHJlJQ5CLtEdTKRnEd4U7JGYrrFK+jaLqXwu
	C8H0yB4HzHdylQQgncIN5Zv9hfbzsHs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-194-Xy3A25ZINO-OYZYxYx0aYw-1; Mon, 06 Dec 2021 10:32:01 -0500
X-MC-Unique: Xy3A25ZINO-OYZYxYx0aYw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5D81D100D680;
	Mon,  6 Dec 2021 15:31:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20D3445D6C;
	Mon,  6 Dec 2021 15:31:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 803BD4CA93;
	Mon,  6 Dec 2021 15:31:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6FVlR0030211 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 10:31:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8322940CFD10; Mon,  6 Dec 2021 15:31:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E53640CFD02
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:31:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 656CF3879966
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:31:47 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-148-B98l_-J2O9ygqFNySPTa9g-1; Mon, 06 Dec 2021 10:31:44 -0500
X-MC-Unique: B98l_-J2O9ygqFNySPTa9g-1
Received: by mail-qv1-f44.google.com with SMTP id kl8so10194436qvb.3
	for <blinux-list@redhat.com>; Mon, 06 Dec 2021 07:31:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ttagQfRM4Xevy+EXvCbhNUPUZLFJi9pAQfO6KmBtItw=;
	b=ATxv2FtSCu4msCwknfIBUo8xg5QwEpKgKHApR8+Wv0ML8X2MqmInlGfqCTLhWPiMO+
	0S+oKWfv4awBO5nAFL0PHVTM8hijLmsqv9aIUV46ps2Wejd6kZp7PA+ft2yq+6JwNMxs
	097HlLH0/CcuIemGy/uTSQIHmO1U08bOoKqZDKfv+RSk1bAxtqTuPPgiX0XnOjDd6ydo
	vwahAB7VQSTJWLM9ePiSM6xraG5PyGmU8J9FUVLhRHKcPYQMAIoutTU9DyR55Yg+2s8z
	bB5vzkLEssdGbdF7ZarB18WXcT8mLp5ukVDd1TFZf8LddjkE6mrVlZ0lJugq4dO+C729
	5X/w==
X-Gm-Message-State: AOAM5339eAe9wxWsElHTqLzO5B4gOHeDUQpwikngzXaRwTkFdb6MSN5A
	RE9Es3qfm0ACgjZg1s4180E3cO4Ppnc=
X-Google-Smtp-Source: ABdhPJx8fpGk8fFMIuBdGt9uHeCdk+2DX0znfES4QufkOSKe6+Jf9HuKM/9btUYLqyaGGgDVJ3dU+Q==
X-Received: by 2002:a05:6214:ccc:: with SMTP id
	12mr37579914qvx.8.1638804704271; 
	Mon, 06 Dec 2021 07:31:44 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:7991:cc1c:439:b8f5?
	(2603-6080-6302-e002-7991-cc1c-0439-b8f5.res6.spectrum.com.
	[2603:6080:6302:e002:7991:cc1c:439:b8f5])
	by smtp.gmail.com with ESMTPSA id m9sm7081109qtn.73.2021.12.06.07.31.43
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 06 Dec 2021 07:31:44 -0800 (PST)
Message-ID: <98c96aae-9de1-69a4-5de0-98a1a022e654@gmail.com>
Date: Mon, 6 Dec 2021 10:31:43 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
	<459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
	<9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
	<CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
	<e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
	<7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
In-Reply-To: <7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

The best way I found to set up gmail in Seamonkey is as follows.

You will first need to be sure IMAP is enabled in gmail. Then you set 
the server type to IMAP in Seamonkey mail. The server name is 
imap.gmail.com, leave the port alone for now, then set the username to 
your full email address. The smtp server is smtp.gmail.com, same 
username. Once you set up the email account, select "mail and news group 
account settings" from the edit menu. First change the security to 
SSL/TLS. Then under the outgoing server settings in the tree, activate 
the edit button and make the same change to the security setting. You 
may need to close Seamonkey mail at this point, but the next time you 
open it, you will be prompted for your password. If all went well, you 
should have access to your gmail mailbox. I do agree it's a bit of a 
hassle, but it is lighter and faster than Thunderbird.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

