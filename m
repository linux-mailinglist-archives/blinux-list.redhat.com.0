Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFDC479BC2
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 17:40:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639845644;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cDN6o0fC9NbCOKoSB6dHjIsWFYISaP3RJYJcPZRK4YQ=;
	b=RjNveq4gljEZbVdIQIXv1k2s3oLVO1cBIwWFFi0K15kFrSIJC0RTqE0BN66Oi3DIx7VJIe
	s3ja1SCo9qYA22gn8QEwBY+Xe4K7kkbmtxyjku2wAeU2OSlSId8i99QsZ1J4pcT2vG21bI
	rxJHK/qRuPlbex6i0qgPS8FEoRVPjgA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-178-HdE1spJ5MBy0JRi9mfAemA-1; Sat, 18 Dec 2021 11:40:41 -0500
X-MC-Unique: HdE1spJ5MBy0JRi9mfAemA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C946F363A4;
	Sat, 18 Dec 2021 16:40:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19D868478C;
	Sat, 18 Dec 2021 16:40:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0CA254BB7C;
	Sat, 18 Dec 2021 16:40:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIGeUKY008826 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 11:40:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E6AEB741F; Sat, 18 Dec 2021 16:40:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E091353DB
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 16:40:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5919C1E8F682
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 16:40:16 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-450-1Uwite6SPiq4cAcszndHSA-1; Sat, 18 Dec 2021 11:40:04 -0500
X-MC-Unique: 1Uwite6SPiq4cAcszndHSA-1
Received: by mail-wm1-f48.google.com with SMTP id g132so882568wmg.2
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 08:40:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=oAqa9/JsIdLoWVEhslVabMqsOHbWhrzTQD7U/Mql6GY=;
	b=iFemXfZjHa7X1zBHOKZlP0v/raz1C2ctYtau8quSYSAB6bhchJhOS9n4vOq0yCbv5Y
	eZBXdMKkeuMKkEfYZpbNTayMyP3FTXgm3dWg08WNQQn6f358C5IQVR6BMw5kCk/QvUFy
	XPi+b+FuqiJE2C30jaR3EDhfppN7UKCnm7gf0Qe3OoJWybeh8DxdCCYFp0Sn4hrcOXyA
	Tog0IUdvUQIUaJOdI1gMM03yafHVwhxoI2kHA8s3d5Y4hZhB3FtqbpFAZWtEVLkmAedv
	ScIp+uaNzS4GekVmCC6IKatBcn/xWymaSI46clwn7zyU0WstKAkf2HFQvBXBP+oiAoIV
	qY7g==
X-Gm-Message-State: AOAM532WkNddbOpF8k9z4I6GM7vRRC3WFo37ijm2IY0KMzESAHZ81cDA
	2/gqY26MSdNLJ++V01/aKvPi8dWyg4vddQ==
X-Google-Smtp-Source: ABdhPJyeZmYZ+zf0MpNqDVg7uMxKkfv2/4i0T73H2RGNhfRQ3pe6l/ul25HTVqpJffAf3A/WxOov9A==
X-Received: by 2002:a7b:c4c8:: with SMTP id g8mr5326540wmk.171.1639845602512; 
	Sat, 18 Dec 2021 08:40:02 -0800 (PST)
Received: from [10.0.2.15] ([90.251.213.111]) by smtp.gmail.com with ESMTPSA id
	p14sm13447616wms.29.2021.12.18.08.40.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 18 Dec 2021 08:40:02 -0800 (PST)
Subject: Re: Webmail vs client question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b320bf55-86cf-a1ab-8eed-7a42963f9c7e@gmail.com>
	<19dcfe1c-4bb8-8e82-61e7-77c0e440097d@gmail.com>
Message-ID: <f252f316-88eb-c149-52c1-d87623f79cc2@gmail.com>
Date: Sat, 18 Dec 2021 16:40:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
In-Reply-To: <19dcfe1c-4bb8-8e82-61e7-77c0e440097d@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Right but how does that affect how Thunderibrd/Seamonkey work as far as 
emails go? As in, okay I turned the setting off...

Now how does that change thing, does it just connect to the mail server 
and display the messages from there or?

On 12/18/21 3:51 PM, Linux for blind general discussion wrote:
> I'm not sure about Claws-mail, but I know that both Thunderbird and 
> Seamonkey have options for not storing messages locally, deleting 
> locally stored messages from your disk once they are of a certain age, 
> in days, weeks or months, and compacting folders to save disk space. I 
> usually just turn off local storage. There was a time when Thunderbird 
> ignored this setting, but that seems to have been fixed.
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

