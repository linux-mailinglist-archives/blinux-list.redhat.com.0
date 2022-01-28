Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E404A0435
	for <lists+blinux-list@lfdr.de>; Sat, 29 Jan 2022 00:23:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643412216;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=89E+URE2Op8nK3lEuhN3r4DNa7ecS3QbqVuuy0CW2Uw=;
	b=TgJnI5ryUMuoUjylANSZDtBCyKHOXyRuSwZgUoOjVjcf4gngy7OMQA8iLzc9r6iWkJwPVV
	qVgMrpmEjphbuRmxHV2FsGl8k/XUSnqaACfjo/mgGMhPIHa9wtMw7JUHD+cPHchZuflDLU
	UQ/TPu1QbXDU46DV4j5x50J9cSRtkdc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-515-Ae6ApEUeNi-dIBS1bGQ1pA-1; Fri, 28 Jan 2022 18:23:32 -0500
X-MC-Unique: Ae6ApEUeNi-dIBS1bGQ1pA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DD9480292C;
	Fri, 28 Jan 2022 23:23:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 197584DC34;
	Fri, 28 Jan 2022 23:23:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD327180B654;
	Fri, 28 Jan 2022 23:23:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SNNAKJ026208 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 18:23:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EBACE401E70; Fri, 28 Jan 2022 23:23:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E81A1401E59
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 23:23:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CFE46296FFDD
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 23:23:09 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-20-rNVzP9G_OjiGxs2uxM7o6A-1; Fri, 28 Jan 2022 18:23:07 -0500
X-MC-Unique: rNVzP9G_OjiGxs2uxM7o6A-1
Received: by mail-qv1-f51.google.com with SMTP id b4so2460144qvf.0
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 15:23:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=YyqqXQ9u9Wa23kHmauVFCkTqXqAWq3OAFwpeK2lJVxw=;
	b=eQ3u33T2P+XukFS47WQOLh04yt8y9KYeBzwoClHzmwSeIfVsmEL7NqDBzD4z48XeJI
	imXKysUoaGqTw3WJ5UNyStIXKh1etHpeCYvg/RndawwVXe/4to5sGdvdOS3eetpQXxpL
	Gdno0UnI+SrOcq2LSauoy7jEUukCSdc4HwxqSSinTa+FeupZCjYde5JlSV9J38spAnm5
	Zru6Hy8GhUja3xJZoEu82yMQLl1nd/E9he72nW/uZH1dFzXKdO0TxEe/WG8NbvJEZ0BS
	20QZ8T7GT2OBChTVeNF+U1loD5kaCCltdHVeXI8bD8dcUS+Ft2wU47DkS+sJ8PYyLHQI
	pD8Q==
X-Gm-Message-State: AOAM530O8KpVuFMlINNmUJSvjqFZxiIo9ptTmaqg8p5j8/fd0XOXEVZW
	uj2tWcz7RxGHfqkcYz/dfTefBEYNfUdDcA==
X-Google-Smtp-Source: ABdhPJy+YlyERcQa+iL0XZWEKUyeApAUQUsFTuxy8Hlbq2Sb/DR8cN0+a1tJJyoUWtV8KQkwQ74ilQ==
X-Received: by 2002:a05:6214:20e7:: with SMTP id
	7mr9851372qvk.48.1643412187318; 
	Fri, 28 Jan 2022 15:23:07 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	bl42sm1901215qkb.15.2022.01.28.15.23.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 28 Jan 2022 15:23:07 -0800 (PST)
Message-ID: <0b9e3254-da44-4dad-84d1-790b2749e227@gmail.com>
Date: Fri, 28 Jan 2022 18:23:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Converting text to mp3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<3e8211d3-4699-6948-93d9-559a36927ed7@googlemail.com>
	<20220128.190302.486.6@[192.168.1.100]>
	<3cf3b696-9606-de03-efda-4fa9266ce53b@seznam.cz>
In-Reply-To: <3cf3b696-9606-de03-efda-4fa9266ce53b@seznam.cz>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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

Only disadvantage is, it can't be read by my favourite voice Max, only 
unnamed Espeak, so, never mind.


Try something like

espeak-ng -v cs+max -f file.txt --stdout | lame - file.mp3

This gives you the Czech voice with the max variant and it reads the 
text file specified after the -f and converts it to mp3. I have it 
working here, so hopefully it will help you.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

