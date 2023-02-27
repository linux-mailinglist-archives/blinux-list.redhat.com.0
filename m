Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2325F6A4471
	for <lists+blinux-list@lfdr.de>; Mon, 27 Feb 2023 15:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677508317;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iTZo/ws2c6UMMS3Wrzf2ys9GKlpGrxn52U1TA+WH8hE=;
	b=B76JVu/lNwWZZHWewJBRD1T/kZALHExP6VSZkDvUjwEsKxJGwIM7l0mGszL0FO4i++mOSw
	aBFglpJ6ZTlISN5onpMDjEXBiVnJW1qfOUq+hMfFHhtJV4poqDVbxV1Fhxxu5erojgK6S2
	KFGHFKH3pxN6j/TfLM4wyCsa5Ipw0/8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-672-3HztCzcvNU-hDfxWabzHXw-1; Mon, 27 Feb 2023 09:31:53 -0500
X-MC-Unique: 3HztCzcvNU-hDfxWabzHXw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB1A4100F90D;
	Mon, 27 Feb 2023 14:31:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 880E8404BEC5;
	Mon, 27 Feb 2023 14:31:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 42EFC19465A4;
	Mon, 27 Feb 2023 14:31:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.400.51.1.1\))
Subject: Re: speakup or fenrir on fedora
Date: Mon, 27 Feb 2023 08:31:09 -0600
References: <mailman.427.1677500614.3183649.blinux-list@redhat.com>
 <mailman.460.1677502348.3183651.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.460.1677502348.3183651.blinux-list@redhat.com>
Message-ID: <mailman.514.1677508283.3183643.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Sorry, I wrote to you about the wrong thing.
As far as fenrir, would I enable fenrir with systemd with
sudo systemctl fenrirscreenreader
or any other step?

> On Feb 27, 2023, at 06:52, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> pip3 install fenrirscreenreader
> 
> 
> 
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
> 
> .
> 
> On Mon, 27 Feb 2023, Linux for blind general discussion wrote:
> 
>> My arch machine has fenrir.
>> Is there a way to put either fenrirscreenreader or speakup on to a fedora system?
>> The speakup page might need updating.
>> When I use the shell, for now I use t d s r.
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
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

