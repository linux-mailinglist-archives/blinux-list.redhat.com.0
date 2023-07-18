Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D16758966
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 01:51:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689724263;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UYnTKbD6z7BL+EFZEt/Lvpe2vRSUo6ZR/ibJR4YVQG4=;
	b=HzNs8w4N3ahC4bWpxpojm7ftt6eVHBspzXviTlF25B7zyopwTQczwiPszsaRpfXUCC3/HU
	6V8bY07J99jKbzLpjSdXEZT9cw7n7yB0wjPiBIoB4ZwSgf8uMzo5YB8wUqomYUKa1KKrxL
	ZGs05VZ0N1Ckj8AUjLqBR4UdlL4t+5o=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-494-yr1u5e0JOFm8JhChqJLBzg-1; Tue, 18 Jul 2023 19:51:01 -0400
X-MC-Unique: yr1u5e0JOFm8JhChqJLBzg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 774D13849527;
	Tue, 18 Jul 2023 23:50:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 433311121314;
	Tue, 18 Jul 2023 23:50:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id BA58F19465A4;
	Tue, 18 Jul 2023 23:50:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Jul 2023 00:50:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Console E-mail client for my need
To: blinux-list@redhat.com
References: <mailman.489.1689716021.687810.blinux-list@redhat.com>
 <mailman.481.1689716750.687817.blinux-list@redhat.com>
In-Reply-To: <mailman.481.1689716750.687817.blinux-list@redhat.com>
Message-ID: <mailman.531.1689724255.687811.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Okay so, how easy is it to set Alpine up to work with gmail? On this 
machine I don't have my .muttrc stuff so I'd like to try out Alpine, but 
unfortunately I'm not sure if there's an easy way to hook it into my 
gmail a la Thunderbird or guides for Mutt


Jace

On 7/18/23 22:45, Linux for blind general discussion wrote:
> Well Cleversom, are their reasons you didn't consider Alpine? Alpine 
> is quite configurable-and-you can run an alternative editor such as 
> NANO. Alpine works really well with Speakup, but I wish I didn't have 
> to hear an opeening announcement of version number-and-initial 
> keystroke. I have no idea what would happen if you ran Alpie in a 
> desktop setup.
> Chime
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

